using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TravelExpertData
{
    /// <summary>
    /// Author: Neil
    /// Created: July 14, 2018
    /// 
    /// Products definitions
    /// Responsible for storing Information about the Products
    /// </summary>
    public class Products
    {
        public int ProductId { get; set; }
        public string ProdName { get; set; }

        /// <summary>
        /// Author: Jonah
        /// 
        /// Creates a copy of the current Products
        /// </summary>
        public Products CopyProduct()
        {
            Products copy = new Products();
            copy.ProdName = this.ProdName;
            copy.ProductId = this.ProductId;
            return copy;
        }

    }
}
