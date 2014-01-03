using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using Maticsoft.Common;

namespace Song.Web.manage
{
    public partial class webconfig : System.Web.UI.Page
    {
        String id = "2";
        protected void Page_Load(object sender, EventArgs e)
        {
            webcommand.CheckUserLogin(); 
            id = Request.QueryString["id"];

            if (!IsPostBack)
            {
                ShowInfo();
            }
        }
       
        protected void ShowInfo()
        {
		    Song.BLL.webconfig bll=new Song.BLL.webconfig();
		    Song.Model.webconfig model=bll.GetModel(id);
		    this.webname.Text=model.webname;
		    this.webkey1.Text=model.webkey1;
		    this.webkey2.Text=model.webkey2;
		    this.webkey3.Text=model.webkey3;
		    this.webemail.Text=model.webemail;
		    this.webadd.Text=model.webadd;
		    this.webcode.Text=model.webcode;
		    this.webtel.Text=model.webtel;
		    this.webfax.Text=model.webfax;
		    this.webcopyright.Text=model.webcopyright;
		    this.webicp.Text=model.webicp;
		    this.qq1.Text=model.qq1;
		    this.qq2.Text=model.qq2;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BLL.webconfig BllWebconfig = new BLL.webconfig();
            Model.webconfig model = new Model.webconfig();
            if (model != null)
            {
                model.id = Convert.ToInt32(id);
                model.webname = this.webname.Text;
                model.webkey1 = this.webkey1.Text;
                model.webkey2 = this.webkey2.Text;
                model.webkey3 = this.webkey3.Text;
                model.webemail = this.webemail.Text;
                model.webadd = this.webadd.Text;
                model.webcode = this.webcode.Text;
                model.webtel = this.webtel.Text;
                model.webfax = this.webfax.Text;
                model.webcopyright = this.webcopyright.Text;
                model.webicp = this.webicp.Text;
                model.qq1 = this.qq1.Text;
                model.qq2 = this.qq2.Text;
                model.weblanguage = "cn";
            }
            BllWebconfig.Update(model);
            MessageBox.ShowAndRedirect(this, "保存成功！", "Webconfig.aspx?id=" + id);
        }

    }
}