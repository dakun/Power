using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Song.Web
{
	public partial class product : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			getinfo();
		}

		void getinfo()
		{
			BLL.producttype bll = new BLL.producttype();
			DataTable dt = bll.GetList(" and pid=" + 197 + "").Tables[0];
			repeater5.DataSource = dt;
			repeater5.DataBind();
		}
	}
}