<%@ Page Title="登录" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ilearn.Account.Login" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>
    <div id="loginForm">
                    <ol>
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
                       
                    </ol>
                            

                    <asp:Button runat="server" CommandName="Login" Text="登录" OnClick="Unnamed6_Click" />
        <asp:Label runat="server" ID="Login_text" Text="请输入用户名与密码"></asp:Label>

        <p>
            <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled" NavigateUrl="~/Account/Register.aspx">注册</asp:HyperLink>
            如果你没有帐户。
        </p>
    </div>

</asp:Content>
