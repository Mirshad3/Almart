using localshop.Core.Common;
using localshop.Core.DTO;
using localshop.Domain.Abstractions;
using localshop.ViewModels;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace localshop.Controllers
{
    [RoutePrefix("Home")]
    public class HomeController : Controller
    {
        private IHomePageRepository _homePageRepo;
        private IProductRepository _productRepo;
        private IStatusRepository _statusRepo;
        private ICategoryRepository _categoryRepo;
        private IReviewRepository _reviewRepo;
        public HomeController(IHomePageRepository homePageRepo, IProductRepository productRepo, IStatusRepository statusRepo, ICategoryRepository categoryRepo, IReviewRepository reviewRepo)
        {
            _homePageRepo = homePageRepo;
            _productRepo = productRepo;
            _statusRepo = statusRepo;
            _categoryRepo = categoryRepo;
            _reviewRepo = reviewRepo;
        }

        //[OutputCache(Duration = 24 * 3600, Location = System.Web.UI.OutputCacheLocation.Client)]
        public ActionResult Index()
        {
            // Prepare model
            var model = new HomePageViewModel
            {
                SpecialFeatured = _homePageRepo.SpecialFeaturedList,
                Banners = _homePageRepo.Banners,
                Featureds = new List<ProductViewModel>(),
                OnSales = new List<ProductViewModel>()
            };

            var products = _productRepo.Products.ToList()
                .Where(p => _statusRepo.GetStatus(p.StatusId) != StatusNames.OutOfStock)
                .OrderByDescending(p => p.DateAdded);

            // Get featureds
            var featureds = products.Where(p => p.IsFeatured == true).Take(8).ToList();
            foreach (var p in featureds)
            {
                p.Images = _productRepo.GetImages(p.Id).ToList();

                var product = new ProductViewModel
                {
                    Product = p,
                    Status = _statusRepo.GetStatus(p.StatusId),
                    Category = _categoryRepo.GetCategory(p.CategoryId),
                    Reviews = _reviewRepo.GetReviews(p.Id).ToList()
                };

                model.Featureds.Add(product);
            }

            // Get onSales
            var onSales = products.Where(p =>
            {
                if (p.DiscountPrice != null)
                {
                    return _productRepo.GetRealPrice(p) == p.DiscountPrice.Value;
                }
                return false;
            }).Take(8).ToList();
            foreach (var p in onSales)
            {
                p.Images = _productRepo.GetImages(p.Id).ToList();

                var product = new ProductViewModel
                {
                    Product = p,
                    Status = _statusRepo.GetStatus(p.StatusId),
                    Category = _categoryRepo.GetCategory(p.CategoryId),
                    Reviews = _reviewRepo.GetReviews(p.Id).ToList()
                };

                model.OnSales.Add(product);
            }

            return View(model);
        }
        [HttpGet]
        public JsonResult Banners()
        {
            try
            {
                var model = _homePageRepo.Banners;
            foreach(var m in model)
            { 
                m.Image = "http://almart.medco.lk/Assets/files/images/" + m.Image.Split('=').Last();
            }
                var result = new { data = model, status = "200", message = "Sucesss" };
                return Json(result, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { message = ex.Message, status = "500", data = "" });
            }
        }
        [HttpGet]
        public JsonResult OnSale()
        {
            try
            {
                var model = new List<ProductDTO>();
                var products = _productRepo.Products.ToList()
                      .Where(p => _statusRepo.GetStatus(p.StatusId) != StatusNames.OutOfStock)
                      .OrderByDescending(p => p.DateAdded);
                // Get onSales
                var onSales = products.Where(p =>
                {
                    if (p.DiscountPrice != null)
                    {
                        return _productRepo.GetRealPrice(p) == p.DiscountPrice.Value;
                    }
                    return false;
                }).Take(8).ToList();
                foreach (var p in onSales)
                {
                    p.Images = _productRepo.GetImages(p.Id).ToList(); 

                    model.Add(p);
                }
                var result = new { data = model, status = "200", message = "Sucesss" };
                return Json(result, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new {  message = ex.Message, status= "500", data = "" });
            }
        }



        [Route("~/api/categories")]
        public JsonResult categories()
        {
            try
            {
                var model = new List<CategoryViewModel>();
            var categories = _categoryRepo.Categories.Where(m=>m.ParentId == null && m.IsActive);
            foreach (var p in categories)
            {
                 var models = new CategoryViewModel
                {
                    Id = p.Id,
                    Name = p.Name,
                    Logo = "http://almart.medco.lk/Assets/images/1509483582.svg",                  
                   //Categories = _categoryRepo.Categories.Where(m=>m.ParentId == p.Id)
                    
                };
                model.Add(models);
            }
                var result = new { data = model, status = "200", message = "Sucesss" };
                return Json(result, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { result = false, error = ex.Message });
            }
           
            
        }
        [HttpGet]
        public JsonResult Products(string categoryId,int page, int limit)
        {
            try
            {
                var products = _productRepo.Products.ToList()
                     .Where(p => _statusRepo.GetStatus(p.StatusId) != StatusNames.OutOfStock && p.CategoryId == categoryId)
                     .OrderByDescending(p => p.DateAdded); 
                var model = products.Skip((page - 1) * limit).Take(limit).ToList();
                var metadata = new { page = page, limit = limit , total = products.Count() };
                var result = new { data = model, status = "200", message = "Sucesss", meta= metadata };
                return Json(result, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { result = false, error = ex.Message });
            }

        }

        public ActionResult Home()
        {
            // Prepare model
            var model = new HomePageViewModel
            {
                SpecialFeatured = _homePageRepo.SpecialFeaturedList,
                Banners = _homePageRepo.Banners,
                Featureds = new List<ProductViewModel>(),
                OnSales = new List<ProductViewModel>()
            };

            var products = _productRepo.Products.ToList()
                .Where(p => _statusRepo.GetStatus(p.StatusId) != StatusNames.OutOfStock)
                .OrderByDescending(p => p.DateAdded);

            // Get featureds
            var featureds = products.Where(p => p.IsFeatured == true).Take(8).ToList();
            foreach (var p in featureds)
            {
                p.Images = _productRepo.GetImages(p.Id).ToList();

                var product = new ProductViewModel
                {
                    Product = p,
                    Status = _statusRepo.GetStatus(p.StatusId),
                    Category = _categoryRepo.GetCategory(p.CategoryId)
                };

                model.Featureds.Add(product);
            }

            // Get onSales
            var onSales = products.Where(p =>
            {
                if (p.DiscountPrice != null)
                {
                    return _productRepo.GetRealPrice(p) == p.DiscountPrice.Value;
                }
                return false;
            }).Take(8).ToList();
            foreach (var p in onSales)
            {
                p.Images = _productRepo.GetImages(p.Id).ToList();

                var product = new ProductViewModel
                {
                    Product = p,
                    Status = _statusRepo.GetStatus(p.StatusId),
                    Category = _categoryRepo.GetCategory(p.CategoryId)
                };

                model.OnSales.Add(product);
            }

            return View(model);
        }

    }
}