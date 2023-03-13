using OOO_Sports_Goods.Entity;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace OOO_Sports_Goods
{
    public partial class Katalog : Form
    {
        private User23_493Entities CText;
        public Katalog()
        {
            InitializeComponent();
            CText = new User23_493Entities();
        }

        private void bExit_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void Katalog_Load(object sender, EventArgs e)
        {
            ProductPanel.AutoScroll = true;

            List<Product> ls = CText.Product.ToList();

            foreach(Product product in ls)
            {
                ProductCard cd = new ProductCard();
                cd.Dock = DockStyle.Top;

                //cd.rtbOpisanie.Text = product.ProductDescription;
                //cd.tbprovide.Text = product.ProvideName.ToString();
                //cd.tbcost.Text = product.ProductCost.ToString();
                //cd.tbskitka.Text = product.ProductDiscountAmount.ToString();
                //cd.tbcostskitka = product.ProductCurrentDiscount.ToString();
            }
        }

        private void badd_Click(object sender, EventArgs e)
        {

        }
    }
}
