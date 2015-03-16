using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBlayer;

namespace ilearn
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            VideoService vs = new VideoService();
            VideoClassService vcs = new VideoClassService();
            string query = Request.QueryString["s"];
            List<videoclass> lvc = vcs.SelectVideoClassByName(query);
            SearchClassList.DataSource = lvc;
            SearchClassList.DataBind();
            search_box_server.Text = query;
        }
    }
}