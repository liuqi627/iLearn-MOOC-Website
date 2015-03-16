using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Membership.OpenAuth;
using DBlayer;

namespace ilearn.Account
{
    public partial class Register : Page
    {
        string input_username;
        string input_password;
        string input_email;
        string input_sex;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Unnamed10_Click(object sender, EventArgs e)
        {
          //  Response.Write("我进来了！");
            input_email = Reg_Email.Text;
            input_password = Reg_Password.Text;
            input_username = Reg_UserName.Text;
            //input_sex = Reg_Sex.Text;
            UserService us = new UserService();
            List<user> alluser = us.SelectAllUser();
            foreach (var a in alluser)
            {
                if (a.name == input_username)
                {
                    Reg_text.Text = "该用户名已经存在，请换一个新的用户名";
                    return; 
                }
                    
            }
            user wannainsert = new user();
            wannainsert.name = input_username;
            wannainsert.pwd = input_password;
            wannainsert.email = input_email;
            wannainsert.sex = input_sex;
            wannainsert.signtime = DateTime.Now;
         //   Response.Write("即将插入");
         //   Response.Write("名字为" + input_username);
        //    Response.Write("密码为" + input_password);
       //     Response.Write("email为" + input_email);
            us.InsertUser(wannainsert);
            Response.Write("插入完了");
           Reg_text.Text = "注册成功";
            alluser = us.SelectAllUser();
            foreach (var a in alluser)
            {
                if (a.name == wannainsert.name)
                {
                    Session["userid"] = a.id;
                    break;
                }
            }
            Response.Redirect("~/Default.aspx");
        }

    }
}