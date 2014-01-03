using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Song.Web
{
	public partial class right : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			gettype();
		}

		void gettype()
		{
			BLL.producttype bll = new BLL.producttype();
			DataTable dt = bll.GetList(" and pid=" + 197 + "").Tables[0];
			Repeater1.DataSource = dt;
			Repeater1.DataBind();
		}
	}
}