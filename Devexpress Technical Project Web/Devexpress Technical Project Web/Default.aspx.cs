using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Devexpress_Technical_Project_Web.Entity;

namespace Devexpress_Technical_Project_Web
{
    public partial class Default : System.Web.UI.Page
    {
        DbTeknikServisEntities db = new DbTeknikServisEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = db.TblHakkımızda.ToList();
            Repeater1.DataBind();

            Repeater2.DataSource = db.TblÜrün.ToList();
            Repeater2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TblMesaj t = new TblMesaj();
            t.AdSoyad = TextBox1.Text;
            t.Mail = TextBox2.Text;
            t.Konu = TextBox3.Text;
            t.Mesaj = TextBox4.Text;
            db.TblMesaj.Add(t);
            db.SaveChanges();
        }
    }
}