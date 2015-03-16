using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBlayer;
using System.Net;

namespace ilearn.Account
{
    public partial class Login : Page
    {
        public string input_user;
        public string input_password;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Unnamed6_Click(object sender, EventArgs e)
        {
            input_user = Login_UserName.Text;
            input_password = Login_Password.Text;
          //  Response.Write("fuck you" + input_user);
            UserService us = new UserService();
            List<user> lu = us.SelectAllUser();
            user imwanted = new user();
            bool UserExist = false;
            foreach (var a in lu)
            {
                if (a.name == input_user)
                {
                    imwanted = a;
                    UserExist = true;
                    break;
                }
            }
            if (UserExist)
            {
                if (imwanted.pwd == input_password)
                {
                    Session["userid"] = imwanted.id;
                    Login_text.Text = "登陆成功，请稍等";
                    Response.Redirect("~/Default.aspx");
                }
                else
                {
                    Login_text.Text = "密码错误，请重新输入";
                }
            }
            else if (!UserExist)
            {
                Login_text.Text = "用户名不正确，请查看";
            }
        }
    }
}