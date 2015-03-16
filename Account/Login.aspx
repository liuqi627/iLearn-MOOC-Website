<%@ Page Title="登录" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ilearn.Account.Login" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <link rel="stylesheet" type="text/css" href="logo_out.css" />
    <div class="login_out_body">

    <div id="loginForm">
                    <ul>
                        <li>
                            <asp:Label runat="server" AssociatedControlID="Login_UserName">用户名</asp:Label>
                            <asp:TextBox runat="server" ID="Login_UserName" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Login_UserName" CssClass="field-validation-error" ErrorMessage="用户名字段是必填字段。" />
                        </li>
                        <li>
                            <asp:Label runat="server" AssociatedControlID="Login_Password">密码</asp:Label>
                            <asp:TextBox runat="server" ID="Login_Password" TextMode="Password" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Login_Password" CssClass="field-validation-error" ErrorMessage="密码字段是必填字段。" />
                        </li>
                       
                    </ul>
                            

                    <asp:Button runat="server" CommandName="Login" Text="登录" OnClick="Unnamed6_Click" Height="34px" Width="100px" />
        
                    <asp:Label ID="Login_text" runat="server" CssClass="remind_user"></asp:Label>
        
    </div>
        </div>
</asp:Content>
