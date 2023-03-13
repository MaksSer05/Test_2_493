namespace OOO_Sports_Goods
{
    partial class Katalog
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.ProductPanel = new System.Windows.Forms.Panel();
            this.bExit = new System.Windows.Forms.Button();
            this.badd = new System.Windows.Forms.Button();
            this.bedit = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // ProductPanel
            // 
            this.ProductPanel.Location = new System.Drawing.Point(12, 25);
            this.ProductPanel.Name = "ProductPanel";
            this.ProductPanel.Size = new System.Drawing.Size(822, 508);
            this.ProductPanel.TabIndex = 0;
            // 
            // bExit
            // 
            this.bExit.BackColor = System.Drawing.Color.Khaki;
            this.bExit.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.bExit.Location = new System.Drawing.Point(1082, 25);
            this.bExit.Name = "bExit";
            this.bExit.Size = new System.Drawing.Size(75, 42);
            this.bExit.TabIndex = 1;
            this.bExit.Text = "Назад";
            this.bExit.UseVisualStyleBackColor = false;
            this.bExit.Click += new System.EventHandler(this.bExit_Click);
            // 
            // badd
            // 
            this.badd.BackColor = System.Drawing.Color.Khaki;
            this.badd.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.badd.Location = new System.Drawing.Point(974, 96);
            this.badd.Name = "badd";
            this.badd.Size = new System.Drawing.Size(183, 42);
            this.badd.TabIndex = 2;
            this.badd.Text = "Добавить заказ";
            this.badd.UseVisualStyleBackColor = false;
            this.badd.Click += new System.EventHandler(this.badd_Click);
            // 
            // bedit
            // 
            this.bedit.BackColor = System.Drawing.Color.Khaki;
            this.bedit.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.bedit.Location = new System.Drawing.Point(974, 144);
            this.bedit.Name = "bedit";
            this.bedit.Size = new System.Drawing.Size(183, 57);
            this.bedit.TabIndex = 3;
            this.bedit.Text = "Редактировать заказ";
            this.bedit.UseVisualStyleBackColor = false;
            // 
            // Katalog
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Beige;
            this.ClientSize = new System.Drawing.Size(1191, 568);
            this.Controls.Add(this.bedit);
            this.Controls.Add(this.badd);
            this.Controls.Add(this.bExit);
            this.Controls.Add(this.ProductPanel);
            this.Name = "Katalog";
            this.Text = "Katalog";
            this.Load += new System.EventHandler(this.Katalog_Load);
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Button bExit;
        private System.Windows.Forms.Button badd;
        private System.Windows.Forms.Button bedit;
        public System.Windows.Forms.Panel ProductPanel;
    }
}