using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using OOO_Sports_Goods.Entity;

namespace OOO_Sports_Goods
{
    public partial class FAutores : Form
    {
        private User23_493Entities CText;
        public FAutores()
        {
            InitializeComponent();
            CText = new User23_493Entities();
        }

        private void bExit_Click(object sender, EventArgs e)
        {
            Close();
        }

        public void bAutores_Click(object sender, EventArgs e)
        {
            string login = tblogin.Text;
            string password = tbpassword.Text;

            User user = CText.User.Where(y => y.UserLogin == login & y.UserPassword == password).FirstOrDefault();
            if (user != null)
            {
                MessageBox.Show("Здравствуйте " + user.Role.RoleName + " " + user.UserName);
                Katalog form = new Katalog();
                form.Show();
            }
        }

        private void bGuest_Click(object sender, EventArgs e)
        {
            Katalog guest = new Katalog();
            this.Hide();
            guest.ShowDialog();
            this.Show();
        }     
    }
}
