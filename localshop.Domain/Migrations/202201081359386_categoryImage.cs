namespace localshop.Domain.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class categoryImage : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Categories", "Logo", c => c.String());
            AddColumn("dbo.AspNetUsers", "BussinessName", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.AspNetUsers", "BussinessName");
            DropColumn("dbo.Categories", "Logo");
        }
    }
}
