using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Song.Web
{
	public partial class index : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			getpic();
		}

		void getpic()
		{
			BLL.news bll = new BLL.news();
			DataTable dt = bll.GetList(" pid=" + 157 + "").Tables[0];
			Repeater1.DataSource = dt;
			Repeater1.DataBind();

		}
	}
}