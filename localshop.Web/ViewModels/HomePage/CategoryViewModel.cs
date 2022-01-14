using localshop.Core.Common;
using localshop.Core.DTO;
using localshop.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
namespace localshop.ViewModels
{
    public class CategoryViewModel
    {
        public string Id { get; set; }         
        public string Name { get; set; }
        public string Logo { get; set; }

        public IEnumerable<CategoryDTO> Categories { get; set; }
    }
}