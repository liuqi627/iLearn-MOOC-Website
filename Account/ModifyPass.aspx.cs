using System;
using System.Collections.Generic;
using System.Linq;
using DBlayer;

using Microsoft.AspNet.Membership.OpenAuth;

namespace ilearn.Account
{
    public partial class ModifyPass : System.Web.UI.Page
    {
        public string username_pass;
        public string userid_pass;
        user me_pass = new user();
        protected void Page_Load()
        {
            username_pass = Session["username"].ToString();
            userid_pass = Session["userid"].ToString();
            int userid_int = int.Parse(userid_pass);
            UserService us = new UserService();
            List<user> alluser = us.SelectAllUser();
            foreach (var a in alluser)
            {
                if (a.id == userid_int)
                {
                    me_pass = a;
                    break;
                }
            }

        }


        protected void BtnModifyPassword_Click(object sender, EventArgs e)
        {
            UserService us = new UserService();
            me_pass.pwd = Manage_Password.Text;
            us.UpdateUser(me_pass);
            Response.Redirect("~/Default.aspx");
        }
    }
}