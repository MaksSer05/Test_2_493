//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OOO_Sports_Goods.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class Product
    {
        public string ProductArticleNumber { get; set; }
        public string ProductName { get; set; }
        public string ProductDescription { get; set; }
        public int ProductCategoryID { get; set; }
        public string ProductPhoto { get; set; }
        public int ProductManufacturerID { get; set; }
        public decimal ProductCost { get; set; }
        public Nullable<byte> ProductDiscountAmount { get; set; }
        public int ProductQuantityInStock { get; set; }
        public int ProductUnitID { get; set; }
        public int ProductProvideID { get; set; }
        public int ProductCurrentDiscount { get; set; }
    
        public virtual Category Category { get; set; }
        public virtual Manufacturer Manufacturer { get; set; }
        public virtual Unit Unit { get; set; }
        public virtual Provide Provide { get; set; }
    }
}
