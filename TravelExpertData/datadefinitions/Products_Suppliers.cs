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
    /// Products_Suppliers definitions
    /// Responsible for storing Information about the Products_Suppliers
    /// </summary>
    public class Products_Suppliers
    {
        public int ProductSupplierId { get; set; }
        public int ProductId { get; set; }
        public int SupplierId { get; set; }
        public string ProductName { get; set; }
        public string SupplierName { get; set; }

        /// <summary>
        /// Author: Jonah
        /// 
        /// Creates a full name out of ProductName and SupplierName
        /// </summary>
        public string FullName
        {
            get
            {
                return ProductName + "| | |" + SupplierName;
            }
        }
        /// <summary>
        /// Author: Jonah
        /// 
        /// Creates a copy of the current Products_Suppliers
        /// </summary>
        public Products_Suppliers CopyCombo()
        {
            Products_Suppliers copy = new Products_Suppliers();
            copy.ProductId = this.ProductId;
            copy.ProductName = this.ProductName;
            copy.ProductSupplierId = this.ProductSupplierId;
            copy.SupplierId = this.SupplierId;
            copy.SupplierName = this.SupplierName;
            return copy;
        }
    }
}
