namespace OOO_Sports_Goods.Entity
{
    partial class ProductCard
    {
        /// <summary> 
        /// Обязательная переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором компонентов

        /// <summary> 
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.lopicanie = new System.Windows.Forms.Label();
            this.lprovide = new System.Windows.Forms.Label();
            this.lCost = new System.Windows.Forms.Label();
            this.lskitka = new System.Windows.Forms.Label();
            this.lCostSkitka = new System.Windows.Forms.Label();
            this.tbprovide = new System.Windows.Forms.TextBox();
            this.tbcost = new System.Windows.Forms.TextBox();
            this.tbskitka = new System.Windows.Forms.TextBox();
            this.tbcostskitka = new System.Windows.Forms.TextBox();
            this.rtbOpisanie = new System.Windows.Forms.RichTextBox();
            this.gbname = new System.Windows.Forms.GroupBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.gbname.SuspendLayout();
            this.SuspendLayout();
            // 
            // pictureBox1
            // 
            this.pictureBox1.Location = new System.Drawing.Point(21, 13);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(220, 236);
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // lopicanie
            // 
            this.lopicanie.AutoSize = true;
            this.lopicanie.Location = new System.Drawing.Point(22, 19);
            this.lopicanie.Name = "lopicanie";
            this.lopicanie.Size = new System.Drawing.Size(57, 13);
            this.lopicanie.TabIndex = 2;
            this.lopicanie.Text = "Описание";
            // 
            // lprovide
            // 
            this.lprovide.AutoSize = true;
            this.lprovide.Location = new System.Drawing.Point(22, 127);
            this.lprovide.Name = "lprovide";
            this.lprovide.Size = new System.Drawing.Size(86, 13);
            this.lprovide.TabIndex = 3;
            this.lprovide.Text = "Производитель";
            // 
            // lCost
            // 
            this.lCost.AutoSize = true;
            this.lCost.Location = new System.Drawing.Point(22, 157);
            this.lCost.Name = "lCost";
            this.lCost.Size = new System.Drawing.Size(33, 13);
            this.lCost.TabIndex = 4;
            this.lCost.Text = "Цена";
            // 
            // lskitka
            // 
            this.lskitka.AutoSize = true;
            this.lskitka.Location = new System.Drawing.Point(22, 182);
            this.lskitka.Name = "lskitka";
            this.lskitka.Size = new System.Drawing.Size(44, 13);
            this.lskitka.TabIndex = 5;
            this.lskitka.Text = "Скидка";
            // 
            // lCostSkitka
            // 
            this.lCostSkitka.AutoSize = true;
            this.lCostSkitka.Location = new System.Drawing.Point(22, 208);
            this.lCostSkitka.Name = "lCostSkitka";
            this.lCostSkitka.Size = new System.Drawing.Size(93, 13);
            this.lCostSkitka.TabIndex = 6;
            this.lCostSkitka.Text = "Цена со скидкой";
            // 
            // tbprovide
            // 
            this.tbprovide.Location = new System.Drawing.Point(164, 120);
            this.tbprovide.Name = "tbprovide";
            this.tbprovide.Size = new System.Drawing.Size(100, 20);
            this.tbprovide.TabIndex = 7;
            // 
            // tbcost
            // 
            this.tbcost.Location = new System.Drawing.Point(164, 150);
            this.tbcost.Name = "tbcost";
            this.tbcost.Size = new System.Drawing.Size(100, 20);
            this.tbcost.TabIndex = 8;
            // 
            // tbskitka
            // 
            this.tbskitka.Location = new System.Drawing.Point(164, 175);
            this.tbskitka.Name = "tbskitka";
            this.tbskitka.Size = new System.Drawing.Size(100, 20);
            this.tbskitka.TabIndex = 9;
            // 
            // tbcostskitka
            // 
            this.tbcostskitka.Location = new System.Drawing.Point(164, 201);
            this.tbcostskitka.Name = "tbcostskitka";
            this.tbcostskitka.Size = new System.Drawing.Size(100, 20);
            this.tbcostskitka.TabIndex = 10;
            // 
            // rtbOpisanie
            // 
            this.rtbOpisanie.Location = new System.Drawing.Point(164, 19);
            this.rtbOpisanie.Name = "rtbOpisanie";
            this.rtbOpisanie.Size = new System.Drawing.Size(330, 95);
            this.rtbOpisanie.TabIndex = 11;
            this.rtbOpisanie.Text = "";
            // 
            // gbname
            // 
            this.gbname.Controls.Add(this.rtbOpisanie);
            this.gbname.Controls.Add(this.tbcostskitka);
            this.gbname.Controls.Add(this.lopicanie);
            this.gbname.Controls.Add(this.tbskitka);
            this.gbname.Controls.Add(this.lprovide);
            this.gbname.Controls.Add(this.tbcost);
            this.gbname.Controls.Add(this.lCost);
            this.gbname.Controls.Add(this.tbprovide);
            this.gbname.Controls.Add(this.lskitka);
            this.gbname.Controls.Add(this.lCostSkitka);
            this.gbname.Location = new System.Drawing.Point(262, 13);
            this.gbname.Name = "gbname";
            this.gbname.Size = new System.Drawing.Size(733, 236);
            this.gbname.TabIndex = 12;
            this.gbname.TabStop = false;
            this.gbname.Text = "Наименование товара";
            // 
            // ProductCard
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.gbname);
            this.Controls.Add(this.pictureBox1);
            this.Name = "ProductCard";
            this.Size = new System.Drawing.Size(1045, 278);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.gbname.ResumeLayout(false);
            this.gbname.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label lopicanie;
        private System.Windows.Forms.Label lprovide;
        private System.Windows.Forms.Label lCost;
        private System.Windows.Forms.Label lskitka;
        private System.Windows.Forms.Label lCostSkitka;
        private System.Windows.Forms.GroupBox gbname;
        public System.Windows.Forms.RichTextBox rtbOpisanie;
        public System.Windows.Forms.TextBox tbprovide;
        public System.Windows.Forms.TextBox tbcost;
        public System.Windows.Forms.TextBox tbskitka;
        public System.Windows.Forms.TextBox tbcostskitka;
    }
}
