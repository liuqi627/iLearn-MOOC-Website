using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.ModelBinding;
using DBlayer;

namespace ilearn
{
    public partial class _Default : Page
    {
        public string aaa;
        public int a;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            VideoClassService vcs = new VideoClassService();
           List<videoclass> lv = vcs.GetPopularClass();
            a = lv.Count;
           RecommandClassList.DataSource = lv;
            RecommandClassList.DataBind();
            string lgo = Request.QueryString["log"];
            if(lgo =="logout")
            {
                Logout();
                Response.Redirect("~/Default.aspx");
            }
            ////videoshareEntities vse = new videoshareEntities();
            ////List<videoclass> b = new List<videoclass>();
            ////b = vse.videoclasses.ToList<videoclass>();
            //a = b.Count;
            ////a = vse.videoclasses.ToList<videoclass>
            ////RecommandClassList.DataSource = vse.videoclasses.ToList<videoclass>();
            ////RecommandClassList.DataBind();

        }
        private void Logout()
        {
            Session.Clear();
        }
    }
}



