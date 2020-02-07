  
using Microsoft.AspNetCore.Mvc;
using Ecommerce.Models;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Http;
using Microsoft.EntityFrameworkCore;
using System;

namespace Ecommerce.Controllers
{
  public class ProductsController : Controller
  {
    private readonly EcommerceContext _db;

    public ProductsController(EcommerceContext db)
    {
      _db = db;
    }

    public ActionResult Index()
    {
      List<Product> model = _db.Products.ToList();
      return View(model);
    }

    [HttpGet]
    public ActionResult Details(int DetailsID)  
    {
      var products = _db.Products.FirstOrDefault(product => product.ProductId == DetailsID);  
      return View(products);
    }


    [HttpPost]
    public ActionResult Details(Product newProduct) //technically addtocart
    {
      int? OrderId = HttpContext.Session.GetInt32("OrderId");
      //try loading order from order table, if order found for customer, use fetched order from db. 
      //else create new order and add to db.
      Order thisOrder;
      if (OrderId == null)
      {
         thisOrder = new Order();
      }
      else
      {
         thisOrder = _db.Orders.FirstOrDefault(orders => orders.OrderId == OrderId);
      }

      _db.Orders.Add(thisOrder);
      _db.OrderProduct.Add(new OrderProduct(){ProductId=newProduct.ProductId,OrderId=thisOrder.OrderId});
      _db.SaveChanges();
      HttpContext.Session.SetInt32("orderId", thisOrder.OrderId);
      return RedirectToAction("Index","Products");
    }
  }
}