using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Song.Model
{
	/// <summary>
	/// ProductInfo:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class ProductInfo
	{
		public ProductInfo()
		{ }
		#region Model
		private int _id;
		private int _pid;
        private int _producttype;
		private string _model;
		private string _nominalvoltage;
		private string _capacity;
		private string _internalresistance;
		private string _lengthmm;
		private string _lengthin;
		private string _widthmm;
		private string _widthin;
		private string _heightmm;
		private string _heightin;
		private string _totalheightmm;
		private string _totalheightin;
		private string _terminaltype;
		private string _terminalposition;
		private string _weightkg;
		private string _weightlbs;
		private string _pdfurl;
		/// <summary>
		/// 
		/// </summary>
		public int ID
		{
			set { _id = value; }
			get { return _id; }
		}
		/// 
		/// </summary>
		public int pid
		{
			set { _pid = value; }
			get { return _pid; }
		}
		/// <summary>
        /// 
        /// /// 
        /// </summary>
        public int producttype
        {
            set { _producttype = value; }
            get { return _producttype; }
        }
        /// <summary>
		/// <summary>
		/// 
		/// </summary>
		public string Model
		{
			set { _model = value; }
			get { return _model; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string NominalVoltage
		{
			set { _nominalvoltage = value; }
			get { return _nominalvoltage; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string Capacity
		{
			set { _capacity = value; }
			get { return _capacity; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string InternalResistance
		{
			set { _internalresistance = value; }
			get { return _internalresistance; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string LengthMM
		{
			set { _lengthmm = value; }
			get { return _lengthmm; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string LengthIn
		{
			set { _lengthin = value; }
			get { return _lengthin; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string WidthMM
		{
			set { _widthmm = value; }
			get { return _widthmm; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string WidthIn
		{
			set { _widthin = value; }
			get { return _widthin; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string HeightMM
		{
			set { _heightmm = value; }
			get { return _heightmm; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string HeightIn
		{
			set { _heightin = value; }
			get { return _heightin; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string TotalHeightMM
		{
			set { _totalheightmm = value; }
			get { return _totalheightmm; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string TotalHeightIn
		{
			set { _totalheightin = value; }
			get { return _totalheightin; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string TerminalType
		{
			set { _terminaltype = value; }
			get { return _terminaltype; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string TerminalPosition
		{
			set { _terminalposition = value; }
			get { return _terminalposition; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string WeightKg
		{
			set { _weightkg = value; }
			get { return _weightkg; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string WeightLbs
		{
			set { _weightlbs = value; }
			get { return _weightlbs; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string PdfUrl
		{
			set { _pdfurl = value; }
			get { return _pdfurl; }
		}
		#endregion Model

	}
}
