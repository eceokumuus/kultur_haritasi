using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bitirme
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataReader dr;
            SqlConnection cnn = new SqlConnection();
            cnn.ConnectionString = "Data Source=DESKTOP-GC8BD6O\\SQLEXPRESS;Initial Catalog=bitirme;Integrated Security=SSPI";

            string sorgu = "Select * from Duyurular order by Tarih";
            cnn.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnn;
            cmd.CommandText = sorgu;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                ListBox1.Items.Add(dr[1].ToString());
                ListBox1.Items.Add(dr[2].ToString());
                ListBox1.Items.Add(dr[3].ToString());

            }

            cnn.Close();

        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {

            if (txtKullaniciAdi.Text != "" && txtSifre.Text != "")
            {
                SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
                cnn.Open();
                string sorgu = "Insert into Kullanicilar (KullaniciAdi, Sifre) Values ( @kullaniciadi, @sifre)";
                
                SqlCommand cmd = new SqlCommand(sorgu, cnn);
                

                try
                {
                    cmd.Parameters.AddWithValue("@kullaniciadi", txtKullaniciAdi.Text);
                    cmd.Parameters.AddWithValue("@sifre", txtSifre.Text);

                    cmd.ExecuteNonQuery();
                    cnn.Close();
                    lblSonuc.Text = "başarılı";


                }
                catch (Exception)
                {
                    lblSonuc.Text = "başarısız";
                }
            }
            else
            {
                lblSonuc.Text = "boş alanı doldur";
            }


        }
    }
}