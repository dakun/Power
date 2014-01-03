using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Maticsoft.Common;
using Maticsoft.DBUtility;
using System.Data;
using System.Collections;

namespace Song.Web.manage
{
    public partial class ProductInfo : System.Web.UI.Page
    {
        webcommand webcom = new webcommand();
        FormatHtml fh = new FormatHtml();
        FileControl fc = new FileControl();
        BLL.ProductInfo bll = new BLL.ProductInfo();
        Model.ProductInfo model = new Model.ProductInfo();
        public String ComUrl = "", pid = "", action = "", id = "", ClassName = "", shownew = "display: none";
        private string[] strUserP = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            webcommand.CheckUserLogin();
            BLL.manage ubll = new BLL.manage();
            strUserP = ubll.GetModel(Convert.ToInt32(Session["adminid"] + "")).adminlv.Split(',');
            action = Request.QueryString["action"];
            id = Request.QueryString["ID"];
            pid = Request.QueryString["pid"];
            ClassName = webcom.GetClassName(pid);
            ComUrl = "pid=" + pid;
            //if (pid == "132")
            //    shownew = "";
            //if (!bolAnswer(pid + "Add", strUserP))
            //{
            //    Button1.Enabled = false;
            //    Button1.Attributes.Add("disabled", "disabled");
            //}
            if (!IsPostBack)
            {
                switch (action) //判断操作列别 添加/修改/删除
                {

                    case "edittype":
                        loadtype1();
                        loadedittype();
                        //加载数据类型

                        break;
                    case "deletetype":
                        loaddeletetype();

                        break;
                    default:
                        //这个无限极分类逻辑会稍微有点乱，但是总体是为了SQL的查询效率。
                        loadtypelist();//返回列表
                        loadtype2();//加载数据类型
                        break;
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)//添加信息类别
        {
            string _newstype = "0", filepath = "";
            if (this.newstype.SelectedValue != "")
            {
                _newstype = this.newstype.SelectedValue;
            }
            if (this.FileUpload1.HasFile)//当有图片的时候
            {
                filepath = fc.UpoladFile(this.FileUpload1, "files");
            }
            else
            {
                filepath = this.HiddenField2.Value;

            }
            model.pid = Convert.ToInt32(pid);
            model.producttype = Convert.ToInt32(_newstype);
            model.Model = fh.ToDBStr(this.add_xh.Text);
            model.NominalVoltage = fh.ToDBStr(this.add_eddy.Text); ;
            model.Capacity = fh.ToDBStr(this.add_edrl.Text);
            model.InternalResistance = fh.ToDBStr(this.add_nz.Text);
            model.LengthMM = fh.ToDBStr(this.add_cmm.Text);
            model.LengthIn = fh.ToDBStr(this.add_cin.Text);
            model.WidthMM = fh.ToDBStr(this.add_wmm.Text);
            model.WidthIn = fh.ToDBStr(this.add_win.Text);
            model.HeightMM = fh.ToDBStr(this.add_gmm.Text);
            model.HeightIn = fh.ToDBStr(this.add_gin.Text);
            model.TotalHeightMM = fh.ToDBStr(this.add_zgmm.Text);
            model.TotalHeightIn = fh.ToDBStr(this.add_zgin.Text);
            model.TerminalType = fh.ToDBStr(this.add_dzxh.Text);
            model.TerminalPosition = fh.ToDBStr(this.add_dzwz.Text);
            model.WeightKg = fh.ToDBStr(this.add_kg.Text);
            model.WeightLbs = fh.ToDBStr(this.add_lbs.Text);
            model.PdfUrl = filepath;
            bll.Add(model);
            MessageBox.ShowAndRedirect(this, "添加信息类别成功！", "productinfo.aspx?" + ComUrl);
        }

        protected void loadtypelist() //加载类别列表
        {
            DataSet ds = bll.GetList(" and pid=" + pid);
            this.newstypelist.DataSource = ds;
            this.newstypelist.DataBind();//绑定数据
        }

        //加载类别
        protected void loadtype1()
        {
            webcom.BindNewsType1(this.DropDownList1, "197");
        }

        protected void loadtype2()
        {
            webcom.BindNewsType1(this.newstype, "197");
        }

        public String getTypeName(String id)
        {
            return webcom.GetType1(id);
        }

        public void loadedittype()
        {
            
            model = bll.GetModel(Convert.ToInt32(id));
            String pdfurl = model.PdfUrl;
            if (pdfurl != "" && pdfurl != "nophoto")
            {
                this.Literal1.Text = pdfurl;

            }
            this.DropDownList1.SelectedValue = model.producttype.ToString();
            this.edit_xh.Text = model.Model;
            this.edit_eddy.Text = model.NominalVoltage; ;
            this.edit_edrl.Text = model.Capacity;
            this.edit_nz.Text = model.InternalResistance;
            this.edit_cmm.Text = model.LengthMM;
            this.edit_cin.Text = model.LengthIn;
            this.edit_wmm.Text = model.WidthMM;
            this.edit_win.Text = model.WidthIn;
            this.edit_gmm.Text = model.HeightMM;
            this.edit_gin.Text = model.HeightIn;
            this.edit_zgmm.Text = model.TotalHeightMM;
            this.edit_zgin.Text = model.TotalHeightIn;
            this.edit_dzxh.Text = model.TerminalType;
            this.edit_dzwz.Text = model.TerminalPosition;
            this.edit_kg.Text = model.WeightKg;
            this.edit_lbs.Text = model.WeightLbs;
            this.HiddenField1.Value=pdfurl;


        }

        public void loaddeletetype()//删除类别
        {
            bll.Delete(Convert.ToInt32(id));
            MessageBox.ShowAndRedirect(this, "删除类别成功！", "productinfo.aspx?" + ComUrl);
        }


        protected void edit_button_Click(object sender, EventArgs e)
        {
            string filepath = "";
            if (this.newsphoto.HasFile)//当有图片的时候
            {
                filepath = fc.UpoladFile(this.newsphoto, "files");
            }
            else
            {
                filepath = this.HiddenField1.Value;

            }
            model.pid = Convert.ToInt32(pid);
            model.ID = Convert.ToInt32(id);
            model.Model = fh.ToDBStr(this.edit_xh.Text);
            model.NominalVoltage = fh.ToDBStr(this.edit_eddy.Text); ;
            model.Capacity = fh.ToDBStr(this.edit_edrl.Text);
            model.InternalResistance = fh.ToDBStr(this.edit_nz.Text);
            model.LengthMM = fh.ToDBStr(this.edit_cmm.Text);
            model.LengthIn = fh.ToDBStr(this.edit_cin.Text);
            model.WidthMM = fh.ToDBStr(this.edit_wmm.Text);
            model.WidthIn = fh.ToDBStr(this.edit_win.Text);
            model.HeightMM = fh.ToDBStr(this.edit_gmm.Text);
            model.HeightIn = fh.ToDBStr(this.edit_gin.Text);
            model.TotalHeightMM = fh.ToDBStr(this.edit_zgmm.Text);
            model.TotalHeightIn = fh.ToDBStr(this.edit_zgin.Text);
            model.TerminalType = fh.ToDBStr(this.edit_dzxh.Text);
            model.TerminalPosition = fh.ToDBStr(this.edit_dzwz.Text);
            model.WeightKg = fh.ToDBStr(this.edit_kg.Text);
            model.WeightLbs = fh.ToDBStr(this.edit_lbs.Text);
            model.producttype = Convert.ToInt32(this.DropDownList1.SelectedValue);
            model.PdfUrl = filepath;
            bll.Update(model);

            MessageBox.ShowAndRedirect(this, "修改产品信息成功！", "productinfo.aspx?" + ComUrl);
        }

        protected void manageproductlist_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string id = e.CommandArgument.ToString();
            BLL.ProductInfo bll = new BLL.ProductInfo();
            switch (e.CommandName)
            {
                case "Del":
                    bll.Delete(Convert.ToInt32(id));
                    break;
                case "Update":
                    Response.Redirect("productinfo.aspx?" + ComUrl + "&action=edittype&ID=" + id);
                    break;
            }
            loadtypelist();
        }

        protected void manageproductlist_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if ((e.Item.ItemType == ListItemType.Item) || (e.Item.ItemType == ListItemType.AlternatingItem))
            {
                LinkButton btn = (LinkButton)e.Item.FindControl("lbtn_Del");
                if (!bolAnswer(pid + "Del", strUserP))
                {
                    btn.Enabled = false;
                    btn.Attributes.Add("disabled", "disabled");
                }
                else
                    btn.Attributes.Add("onclick", "javascript:return confirm('您确定要删除此信息？删除后将不可恢复！')");

                btn = (LinkButton)e.Item.FindControl("lbtn_Update");
                if (!bolAnswer(pid + "Update", strUserP))
                {
                    btn.Enabled = false;
                    btn.Attributes.Add("disabled", "disabled");
                }
            }
        }

        public static bool bolAnswer(string answer, string[] correctList)
        {
            bool Correct = true;
            if (!((IList)correctList).Contains(answer))
            {
                Correct = false;
            }
            return Correct;
        }
    }
}