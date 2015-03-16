using System;
using System.Collections.Generic;
using System.Linq;
using DBlayer;

using Microsoft.AspNet.Membership.OpenAuth;

namespace ilearn.Account
{
    public partial class ModifyInfo : System.Web.UI.Page
    {
        public string username_info;
        public string userid_info;
        user me_info = new user();
        protected void Page_Load()
        {
            username_info = Session["username"].ToString();
            userid_info = Session["userid"].ToString();
            int userid_int = int.Parse(userid_info);
            UserService us = new UserService();
            List<user> alluser = us.SelectAllUser();
            foreach (var a in alluser)
            {
                if (a.id == userid_int)
                {
                    me_info = a;
                    break;
                }
            }
            Manage_Sex.Text = me_info.sex;
            Manage_Email.Text = me_info.email;
        }

        protected void BtnModifyInfo_Click(object sender, EventArgs e)
        {
            UserService us = new UserService();
            me_info.email = Manage_Email.Text;
            me_info.sex = Manage_Sex.Text;
            us.UpdateUser(me_info);
            Response.Redirect("~/Default.aspx");
        }

    }
}