using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Song.Web
{
	public partial class product_info : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            string id = Request.QueryString["id"];
            getcs(id);
		}

        void getcs(string id)
        {
            BLL.ProductInfo bll = new BLL.ProductInfo();
            DataTable dt = bll.GetList(" and producttype=" + id + "").Tables[0];
            repepat6.DataSource = dt;
            repepat6.DataBind();
        }
	}
}