using Microsoft.AspNetCore.Mvc;
using Ecommerce.Models;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace Ecommerce.Controllers
{
  public class OrdersController : Controller
  {
    private readonly EcommerceContext _db;

    public OrdersController(EcommerceContext db)
    {
      _db = db;
    }
    public ActionResult Index()
    {
      string query = "SELECT ProductId,Price,Name,Description,Sku,ProductImage FROM Products RIGHT JOIN OrderProduct Using(ProductId) RIGHT JOIN Orders Using(OrderId) WHERE OrderId>0;";
      var products = _db.Products.FromSql(query).ToList();
      return View(products);
    }

  

  }
  
} 

