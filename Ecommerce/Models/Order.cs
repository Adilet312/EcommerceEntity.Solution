using System.Collections.Generic;
using System;

namespace Ecommerce.Models  
{
    public class Order
    {
        public int OrderId { get; set; }
        public DateTime Date { get; set; }
        public virtual ICollection<OrderProduct> Products{ get; set; }
        public Order()
        {
            Products = new HashSet<OrderProduct>();
        }

      
    }
}