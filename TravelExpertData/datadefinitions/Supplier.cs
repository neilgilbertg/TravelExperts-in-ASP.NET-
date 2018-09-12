using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TravelExpertData
{
    public class Supplier
    {
        public int SupplierId { get; set; }
        public string SupName { get; set; }
        public Supplier CopySupplier()
        {
            Supplier copy = new Supplier();
            copy.SupplierId = this.SupplierId;
            copy.SupName = this.SupName;
            return copy;

        }
    }
}
