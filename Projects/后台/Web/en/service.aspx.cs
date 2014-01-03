﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Song.Web.en
{
	public partial class service : System.Web.UI.Page
	{
		Song.Model.FeedBack model = new Song.Model.FeedBack();
        Song.BLL.FeedBack bll = new BLL.FeedBack();
        protected String topid = "", id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
			getfile();
        }

		void getfile()
		{
			BLL.news bll = new BLL.news();
			DataTable dt = bll.GetList(" pid=" + 223 + "").Tables[0];
			Repeater2.DataSource = dt;
			Repeater2.DataBind();
		}

		protected void sendf_Click(object sender, EventArgs e)
		{
			model.userName = urname.Text;
			model.content = urcontents.Value;
			if (model.userName != "" & model.content != "")
			{
				model.phone = urtel.Text;
				model.pid = 195;
				model.companyName = urcompany.Text;
				model.mobile = "";
				model.jobs = "";
				model.timeinfo = DateTime.Now;
				model.type = "";
				model.weblanguage = "";
				model.FeedState = 0;
				model.FeedBackType = "留言";
				model.email = uremail.Text;
				model.address = "";

				bll.Add(model);
				Maticsoft.Common.MessageBox.ShowAndRedirect(this, "Thank You！", "service.aspx");
			}
			else
			{
                Maticsoft.Common.MessageBox.ShowAndRedirect(this, "Please fill in the content, so that we can contact you!", "service.aspx");
			}
		}
	}
}