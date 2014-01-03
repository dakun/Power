using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Maticsoft.DBUtility;
using System.Data;
using System.Data.OleDb;

namespace Song.DAL
{
	/// <summary>
	/// 数据访问类:ProductInfo
	/// </summary>
	public partial class ProductInfo
	{
		public ProductInfo()
		{ }
		#region  BasicMethod


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public bool Add(Song.Model.ProductInfo model)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("insert into ProductInfo(");
			strSql.Append("Model,NominalVoltage,Capacity,InternalResistance,LengthMM,LengthIn,WidthMM,WidthIn,HeightMM,HeightIn,TotalHeightMM,TotalHeightIn,TerminalType,TerminalPosition,WeightKg,WeightLbs,PdfUrl,pid,producttype)");
			strSql.Append(" values (");
            strSql.Append("@Model,@NominalVoltage,@Capacity,@InternalResistance,@LengthMM,@LengthIn,@WidthMM,@WidthIn,@HeightMM,@HeightIn,@TotalHeightMM,@TotalHeightIn,@TerminalType,@TerminalPosition,@WeightKg,@WeightLbs,@PdfUrl,@pid,@producttype)");
			OleDbParameter[] parameters = {
					new OleDbParameter("@Model", OleDbType.VarChar,100),
					new OleDbParameter("@NominalVoltage", OleDbType.VarChar,100),
					new OleDbParameter("@Capacity", OleDbType.VarChar,100),
					new OleDbParameter("@InternalResistance", OleDbType.VarChar,100),
					new OleDbParameter("@LengthMM", OleDbType.VarChar,100),
					new OleDbParameter("@LengthIn", OleDbType.VarChar,100),
					new OleDbParameter("@WidthMM", OleDbType.VarChar,100),
					new OleDbParameter("@WidthIn", OleDbType.VarChar,100),
					new OleDbParameter("@HeightMM", OleDbType.VarChar,100),
					new OleDbParameter("@HeightIn", OleDbType.VarChar,100),
					new OleDbParameter("@TotalHeightMM", OleDbType.VarChar,100),
					new OleDbParameter("@TotalHeightIn", OleDbType.VarChar,100),
					new OleDbParameter("@TerminalType", OleDbType.VarChar,100),
					new OleDbParameter("@TerminalPosition", OleDbType.VarChar,100),
					new OleDbParameter("@WeightKg", OleDbType.VarChar,100),
					new OleDbParameter("@WeightLbs", OleDbType.VarChar,100),
					new OleDbParameter("@PdfUrl", OleDbType.VarChar,100),
					new OleDbParameter("@pid", OleDbType.Integer,4),
                     new OleDbParameter("@producttype", OleDbType.Integer,4)                     };
			parameters[0].Value = model.Model;
			parameters[1].Value = model.NominalVoltage;
			parameters[2].Value = model.Capacity;
			parameters[3].Value = model.InternalResistance;
			parameters[4].Value = model.LengthMM;
			parameters[5].Value = model.LengthIn;
			parameters[6].Value = model.WidthMM;
			parameters[7].Value = model.WidthIn;
			parameters[8].Value = model.HeightMM;
			parameters[9].Value = model.HeightIn;
			parameters[10].Value = model.TotalHeightMM;
			parameters[11].Value = model.TotalHeightIn;
			parameters[12].Value = model.TerminalType;
			parameters[13].Value = model.TerminalPosition;
			parameters[14].Value = model.WeightKg;
			parameters[15].Value = model.WeightLbs;
			parameters[16].Value = model.PdfUrl;
			parameters[17].Value = model.pid;
            parameters[18].Value = model.producttype;
			int rows = DbHelperOleDb.ExecuteSql(strSql.ToString(), parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		/// <summary>
		/// 更新一条数据
		/// </summary>
		public bool Update(Song.Model.ProductInfo model)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("update ProductInfo set ");
			strSql.Append("Model=@Model,");
			strSql.Append("NominalVoltage=@NominalVoltage,");
			strSql.Append("Capacity=@Capacity,");
			strSql.Append("InternalResistance=@InternalResistance,");
			strSql.Append("LengthMM=@LengthMM,");
			strSql.Append("LengthIn=@LengthIn,");
			strSql.Append("WidthMM=@WidthMM,");
			strSql.Append("WidthIn=@WidthIn,");
			strSql.Append("HeightMM=@HeightMM,");
			strSql.Append("HeightIn=@HeightIn,");
			strSql.Append("TotalHeightMM=@TotalHeightMM,");
			strSql.Append("TotalHeightIn=@TotalHeightIn,");
			strSql.Append("TerminalType=@TerminalType,");
			strSql.Append("TerminalPosition=@TerminalPosition,");
			strSql.Append("WeightKg=@WeightKg,");
			strSql.Append("WeightLbs=@WeightLbs,");
			strSql.Append("PdfUrl=@PdfUrl,");
			strSql.Append("pid=@pid,");
            strSql.Append("producttype=@producttype");
			strSql.Append(" where ID=@ID");
			OleDbParameter[] parameters = {
					new OleDbParameter("@Model", OleDbType.VarChar,100),
					new OleDbParameter("@NominalVoltage", OleDbType.VarChar,100),
					new OleDbParameter("@Capacity", OleDbType.VarChar,100),
					new OleDbParameter("@InternalResistance", OleDbType.VarChar,100),
					new OleDbParameter("@LengthMM", OleDbType.VarChar,100),
					new OleDbParameter("@LengthIn", OleDbType.VarChar,100),
					new OleDbParameter("@WidthMM", OleDbType.VarChar,100),
					new OleDbParameter("@WidthIn", OleDbType.VarChar,100),
					new OleDbParameter("@HeightMM", OleDbType.VarChar,100),
					new OleDbParameter("@HeightIn", OleDbType.VarChar,100),
					new OleDbParameter("@TotalHeightMM", OleDbType.VarChar,100),
					new OleDbParameter("@TotalHeightIn", OleDbType.VarChar,100),
					new OleDbParameter("@TerminalType", OleDbType.VarChar,100),
					new OleDbParameter("@TerminalPosition", OleDbType.VarChar,100),
					new OleDbParameter("@WeightKg", OleDbType.VarChar,100),
					new OleDbParameter("@WeightLbs", OleDbType.VarChar,100),
					new OleDbParameter("@PdfUrl", OleDbType.VarChar,100),
					new OleDbParameter("@pid", OleDbType.Integer,4),
                    new OleDbParameter("@producttype", OleDbType.Integer,4),
					new OleDbParameter("@ID", OleDbType.Integer,4)};
			parameters[0].Value = model.Model;
			parameters[1].Value = model.NominalVoltage;
			parameters[2].Value = model.Capacity;
			parameters[3].Value = model.InternalResistance;
			parameters[4].Value = model.LengthMM;
			parameters[5].Value = model.LengthIn;
			parameters[6].Value = model.WidthMM;
			parameters[7].Value = model.WidthIn;
			parameters[8].Value = model.HeightMM;
			parameters[9].Value = model.HeightIn;
			parameters[10].Value = model.TotalHeightMM;
			parameters[11].Value = model.TotalHeightIn;
			parameters[12].Value = model.TerminalType;
			parameters[13].Value = model.TerminalPosition;
			parameters[14].Value = model.WeightKg;
			parameters[15].Value = model.WeightLbs;
			parameters[16].Value = model.PdfUrl;
			parameters[17].Value = model.pid;
            parameters[18].Value = model.producttype;
			parameters[19].Value = model.ID;

			int rows = DbHelperOleDb.ExecuteSql(strSql.ToString(), parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(int ID)
		{

			StringBuilder strSql = new StringBuilder();
			strSql.Append("delete from ProductInfo ");
			strSql.Append(" where ID=@ID");
			OleDbParameter[] parameters = {
					new OleDbParameter("@ID", OleDbType.Integer,4)
			};
			parameters[0].Value = ID;

			int rows = DbHelperOleDb.ExecuteSql(strSql.ToString(), parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		/// <summary>
		/// 批量删除数据
		/// </summary>
		public bool DeleteList(string IDlist)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("delete from ProductInfo ");
			strSql.Append(" where ID in (" + IDlist + ")  ");
			int rows = DbHelperOleDb.ExecuteSql(strSql.ToString());
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public Song.Model.ProductInfo GetModel(int ID)
		{

			StringBuilder strSql = new StringBuilder();
			strSql.Append("select ID,pid,producttype,Model,NominalVoltage,Capacity,InternalResistance,LengthMM,LengthIn,WidthMM,WidthIn,HeightMM,HeightIn,TotalHeightMM,TotalHeightIn,TerminalType,TerminalPosition,WeightKg,WeightLbs,PdfUrl from ProductInfo ");
			strSql.Append(" where ID=@ID");
			OleDbParameter[] parameters = {
					new OleDbParameter("@ID", OleDbType.Integer,4)
			};
			parameters[0].Value = ID;

			Song.Model.ProductInfo model = new Song.Model.ProductInfo();
			DataSet ds = DbHelperOleDb.Query(strSql.ToString(), parameters);
			if (ds.Tables[0].Rows.Count > 0)
			{
				return DataRowToModel(ds.Tables[0].Rows[0]);
			}
			else
			{
				return null;
			}
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public Song.Model.ProductInfo DataRowToModel(DataRow row)
		{
			Song.Model.ProductInfo model = new Song.Model.ProductInfo();
			if (row != null)
			{
				if (row["ID"] != null && row["ID"].ToString() != "")
				{
					model.ID = int.Parse(row["ID"].ToString());
				}
				if (row["pid"] != null)
				{
					model.pid = int.Parse(row["pid"].ToString());
				}
                if (row["producttype"] != null)
                {
                    model.producttype = int.Parse(row["producttype"].ToString());
                }
				if (row["Model"] != null)
				{
					model.Model = row["Model"].ToString();
				}
				if (row["NominalVoltage"] != null)
				{
					model.NominalVoltage = row["NominalVoltage"].ToString();
				}
				if (row["Capacity"] != null)
				{
					model.Capacity = row["Capacity"].ToString();
				}
				if (row["InternalResistance"] != null)
				{
					model.InternalResistance = row["InternalResistance"].ToString();
				}
				if (row["LengthMM"] != null)
				{
					model.LengthMM = row["LengthMM"].ToString();
				}
				if (row["LengthIn"] != null)
				{
					model.LengthIn = row["LengthIn"].ToString();
				}
				if (row["WidthMM"] != null)
				{
					model.WidthMM = row["WidthMM"].ToString();
				}
				if (row["WidthIn"] != null)
				{
					model.WidthIn = row["WidthIn"].ToString();
				}
				if (row["HeightMM"] != null)
				{
					model.HeightMM = row["HeightMM"].ToString();
				}
				if (row["HeightIn"] != null)
				{
					model.HeightIn = row["HeightIn"].ToString();
				}
				if (row["TotalHeightMM"] != null)
				{
					model.TotalHeightMM = row["TotalHeightMM"].ToString();
				}
				if (row["TotalHeightIn"] != null)
				{
					model.TotalHeightIn = row["TotalHeightIn"].ToString();
				}
				if (row["TerminalType"] != null)
				{
					model.TerminalType = row["TerminalType"].ToString();
				}
				if (row["TerminalPosition"] != null)
				{
					model.TerminalPosition = row["TerminalPosition"].ToString();
				}
				if (row["WeightKg"] != null)
				{
					model.WeightKg = row["WeightKg"].ToString();
				}
				if (row["WeightLbs"] != null)
				{
					model.WeightLbs = row["WeightLbs"].ToString();
				}
				if (row["PdfUrl"] != null)
				{
					model.PdfUrl = row["PdfUrl"].ToString();
				}
			}
			return model;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			StringBuilder strSql = new StringBuilder();
            strSql.Append("select ID,pid,producttype,Model,NominalVoltage,Capacity,InternalResistance,LengthMM,LengthIn,WidthMM,WidthIn,HeightMM,HeightIn,TotalHeightMM,TotalHeightIn,TerminalType,TerminalPosition,WeightKg,WeightLbs,PdfUrl ");
			strSql.Append(" FROM ProductInfo ");
			if (strWhere.Trim() != "")
			{
				strSql.Append(" where 1=1 " + strWhere);
			}
			return DbHelperOleDb.Query(strSql.ToString());
		}

		/// <summary>
		/// 获取记录总数
		/// </summary>
		public int GetRecordCount(string strWhere)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("select count(1) FROM ProductInfo ");
			if (strWhere.Trim() != "")
			{
				strSql.Append(" where " + strWhere);
			}
			object obj = DbHelperSQL.GetSingle(strSql.ToString());
			if (obj == null)
			{
				return 0;
			}
			else
			{
				return Convert.ToInt32(obj);
			}
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("SELECT * FROM ( ");
			strSql.Append(" SELECT ROW_NUMBER() OVER (");
			if (!string.IsNullOrEmpty(orderby.Trim()))
			{
				strSql.Append("order by T." + orderby);
			}
			else
			{
				strSql.Append("order by T.ID desc");
			}
			strSql.Append(")AS Row, T.*  from ProductInfo T ");
			if (!string.IsNullOrEmpty(strWhere.Trim()))
			{
				strSql.Append(" WHERE " + strWhere);
			}
			strSql.Append(" ) TT");
			strSql.AppendFormat(" WHERE TT.Row between {0} and {1}", startIndex, endIndex);
			return DbHelperOleDb.Query(strSql.ToString());
		}

		/*
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		{
			OleDbParameter[] parameters = {
					new OleDbParameter("@tblName", OleDbType.VarChar, 255),
					new OleDbParameter("@fldName", OleDbType.VarChar, 255),
					new OleDbParameter("@PageSize", OleDbType.Integer),
					new OleDbParameter("@PageIndex", OleDbType.Integer),
					new OleDbParameter("@IsReCount", OleDbType.Boolean),
					new OleDbParameter("@OrderType", OleDbType.Boolean),
					new OleDbParameter("@strWhere", OleDbType.VarChar,1000),
					};
			parameters[0].Value = "ProductInfo";
			parameters[1].Value = "ID";
			parameters[2].Value = PageSize;
			parameters[3].Value = PageIndex;
			parameters[4].Value = 0;
			parameters[5].Value = 0;
			parameters[6].Value = strWhere;	
			return DbHelperOleDb.RunProcedure("UP_GetRecordByPage",parameters,"ds");
		}*/

		#endregion  BasicMethod
		#region  ExtensionMethod

		#endregion  ExtensionMethod
	}
}
