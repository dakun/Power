using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Song.Web
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
			DataTable dt = bll.GetList(" pid=" + 196 + "").Tables[0];
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
				Maticsoft.Common.MessageBox.ShowAndRedirect(this, "留言成功！谢谢！", "service.aspx");
			}
			else
			{
				Maticsoft.Common.MessageBox.ShowAndRedirect(this, "请完整填写内容，以便我们联系您！", "service.aspx");
			}
		}
	}
}