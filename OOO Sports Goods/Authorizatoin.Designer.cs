namespace OOO_Sports_Goods
{
    partial class FAutores
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

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FAutores));
            this.lPassword = new System.Windows.Forms.Label();
            this.lLogin = new System.Windows.Forms.Label();
            this.tbpassword = new System.Windows.Forms.TextBox();
            this.bGuest = new System.Windows.Forms.Button();
            this.bAutores = new System.Windows.Forms.Button();
            this.tblogin = new System.Windows.Forms.TextBox();
            this.tlpAutores = new System.Windows.Forms.TableLayoutPanel();
            this.label1 = new System.Windows.Forms.Label();
            this.bExit = new System.Windows.Forms.Button();
            this.pbImage = new System.Windows.Forms.PictureBox();
            this.tlpAutores.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pbImage)).BeginInit();
            this.SuspendLayout();
            // 
            // lPassword
            // 
            this.lPassword.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lPassword.AutoSize = true;
            this.lPassword.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.lPassword.Location = new System.Drawing.Point(133, 294);
            this.lPassword.Name = "lPassword";
            this.lPassword.Size = new System.Drawing.Size(169, 49);
            this.lPassword.TabIndex = 1;
            this.lPassword.Text = "Пароль";
            this.lPassword.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // lLogin
            // 
            this.lLogin.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lLogin.Cursor = System.Windows.Forms.Cursors.Default;
            this.lLogin.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.lLogin.Location = new System.Drawing.Point(133, 111);
            this.lLogin.Name = "lLogin";
            this.lLogin.Size = new System.Drawing.Size(169, 183);
            this.lLogin.TabIndex = 0;
            this.lLogin.Text = "Логин";
            this.lLogin.TextAlign = System.Drawing.ContentAlignment.BottomRight;
            // 
            // tbpassword
            // 
            this.tbpassword.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.tbpassword.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.25F);
            this.tbpassword.Location = new System.Drawing.Point(308, 305);
            this.tbpassword.Name = "tbpassword";
            this.tbpassword.Size = new System.Drawing.Size(197, 26);
            this.tbpassword.TabIndex = 3;
            // 
            // bGuest
            // 
            this.bGuest.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.bGuest.BackColor = System.Drawing.Color.Khaki;
            this.bGuest.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.bGuest.Location = new System.Drawing.Point(133, 346);
            this.bGuest.Name = "bGuest";
            this.bGuest.Size = new System.Drawing.Size(169, 45);
            this.bGuest.TabIndex = 4;
            this.bGuest.Text = "Гость";
            this.bGuest.UseVisualStyleBackColor = false;
            this.bGuest.Click += new System.EventHandler(this.bGuest_Click);
            // 
            // bAutores
            // 
            this.bAutores.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.bAutores.BackColor = System.Drawing.Color.Khaki;
            this.bAutores.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.bAutores.Location = new System.Drawing.Point(308, 346);
            this.bAutores.Name = "bAutores";
            this.bAutores.Size = new System.Drawing.Size(156, 45);
            this.bAutores.TabIndex = 5;
            this.bAutores.Text = "Войти";
            this.bAutores.UseVisualStyleBackColor = false;
            this.bAutores.Click += new System.EventHandler(this.bAutores_Click);
            // 
            // tblogin
            // 
            this.tblogin.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.tblogin.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.25F);
            this.tblogin.Location = new System.Drawing.Point(308, 265);
            this.tblogin.Name = "tblogin";
            this.tblogin.Size = new System.Drawing.Size(197, 26);
            this.tblogin.TabIndex = 2;
            // 
            // tlpAutores
            // 
            this.tlpAutores.AutoScroll = true;
            this.tlpAutores.AutoSize = true;
            this.tlpAutores.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.tlpAutores.ColumnCount = 4;
            this.tlpAutores.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tlpAutores.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tlpAutores.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 222F));
            this.tlpAutores.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 240F));
            this.tlpAutores.Controls.Add(this.lLogin, 1, 1);
            this.tlpAutores.Controls.Add(this.bAutores, 2, 3);
            this.tlpAutores.Controls.Add(this.lPassword, 1, 2);
            this.tlpAutores.Controls.Add(this.tbpassword, 2, 2);
            this.tlpAutores.Controls.Add(this.bGuest, 1, 3);
            this.tlpAutores.Controls.Add(this.tblogin, 2, 1);
            this.tlpAutores.Controls.Add(this.label1, 1, 0);
            this.tlpAutores.Controls.Add(this.bExit, 3, 0);
            this.tlpAutores.Controls.Add(this.pbImage, 0, 0);
            this.tlpAutores.GrowStyle = System.Windows.Forms.TableLayoutPanelGrowStyle.FixedSize;
            this.tlpAutores.Location = new System.Drawing.Point(1, 1);
            this.tlpAutores.Name = "tlpAutores";
            this.tlpAutores.RowCount = 5;
            this.tlpAutores.RowStyles.Add(new System.Windows.Forms.RowStyle());
            this.tlpAutores.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tlpAutores.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 49F));
            this.tlpAutores.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 230F));
            this.tlpAutores.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 50F));
            this.tlpAutores.Size = new System.Drawing.Size(767, 623);
            this.tlpAutores.TabIndex = 6;
            // 
            // label1
            // 
            this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.label1.AutoSize = true;
            this.tlpAutores.SetColumnSpan(this.label1, 2);
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.label1.Location = new System.Drawing.Point(133, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(391, 111);
            this.label1.TabIndex = 7;
            this.label1.Text = "OOO \"Спортивные товары\"";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // bExit
            // 
            this.bExit.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.bExit.BackColor = System.Drawing.Color.Khaki;
            this.bExit.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F);
            this.bExit.Location = new System.Drawing.Point(602, 33);
            this.bExit.Name = "bExit";
            this.bExit.Size = new System.Drawing.Size(89, 44);
            this.bExit.TabIndex = 8;
            this.bExit.Text = "Выход";
            this.bExit.UseVisualStyleBackColor = false;
            this.bExit.Click += new System.EventHandler(this.bExit_Click);
            // 
            // pbImage
            // 
            this.pbImage.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.pbImage.Image = ((System.Drawing.Image)(resources.GetObject("pbImage.Image")));
            this.pbImage.InitialImage = null;
            this.pbImage.Location = new System.Drawing.Point(3, 3);
            this.pbImage.Name = "pbImage";
            this.pbImage.Size = new System.Drawing.Size(124, 105);
            this.pbImage.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pbImage.TabIndex = 6;
            this.pbImage.TabStop = false;
            // 
            // FAutores
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Beige;
            this.ClientSize = new System.Drawing.Size(771, 628);
            this.Controls.Add(this.tlpAutores);
            this.Name = "FAutores";
            this.Text = "Authorization";
            this.tlpAutores.ResumeLayout(false);
            this.tlpAutores.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pbImage)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lPassword;
        private System.Windows.Forms.Label lLogin;
        private System.Windows.Forms.TextBox tbpassword;
        private System.Windows.Forms.Button bGuest;
        private System.Windows.Forms.Button bAutores;
        private System.Windows.Forms.TextBox tblogin;
        private System.Windows.Forms.TableLayoutPanel tlpAutores;
        private System.Windows.Forms.PictureBox pbImage;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button bExit;
    }
}

