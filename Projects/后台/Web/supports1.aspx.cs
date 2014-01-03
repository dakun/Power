using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Song.Web
{
	public partial class supports1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			gettype1();
			//gettype2();
		}

		void gettype1()
		{
			BLL.news bll = new BLL.news();
			DataTable dt = bll.GetList(" pid=" + 202 + "").Tables[0];
			Repeater2.DataSource = dt;
			Repeater2.DataBind();
			Repeater3.DataSource = dt;
			Repeater3.DataBind();
		}

		//void gettype2()
		//{
		//    BLL.news bll = new BLL.news();
		//    DataTable dt = bll.GetList(" and pid=" + 202 + "").Tables[0];
		//    Repeater3.DataSource = dt;
		//    Repeater3.DataBind();
		//}
	}
}