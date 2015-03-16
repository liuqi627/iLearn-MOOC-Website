<%@ Page Title="注册" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ilearn.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>使用以下表单创建新帐户。</h2>
    </hgroup>
    <ol>
        <li>
            <asp:Label runat="server" AssociatedControlID="Reg_UserName">用户名*</asp:Label>
            <asp:TextBox runat="server" ID="Reg_UserName" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Reg_UserName"
                CssClass="field-validation-error" ErrorMessage="用户名字段是必填字段。" />
        </li>
        <li>
            <asp:Label runat="server" AssociatedControlID="Reg_Sex">性别</asp:Label>
            <asp:TextBox runat="server" ID="Reg_Sex"/>
        </li>
        <li>
            <asp:Label runat="server" AssociatedControlID="Reg_Email">电子邮件地址*</asp:Label>
            <asp:TextBox runat="server" ID="Reg_Email" TextMode="Email" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Reg_Email"
                CssClass="field-validation-error" ErrorMessage="电子邮件地址字段是必需的。" />
        </li>
        <li>
            <asp:Label runat="server" AssociatedControlID="Reg_Password">密码*</asp:Label>
            <asp:TextBox runat="server" ID="Reg_Password" TextMode="Password" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Reg_Password"
                CssClass="field-validation-error" ErrorMessage="密码字段是必填字段。" />
        </li>
        <li>
            <asp:Label runat="server" AssociatedControlID="Reg_ConfirmPassword">确认密码*</asp:Label>
            <asp:TextBox runat="server" ID="Reg_ConfirmPassword" TextMode="Password" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Reg_ConfirmPassword"
                    CssClass="field-validation-error" Display="Dynamic" ErrorMessage="“确认密码”字段是必填字段。" />
            <asp:CompareValidator runat="server" ControlToCompare="Reg_Password" ControlToValidate="Reg_ConfirmPassword"
                    CssClass="field-validation-error" Display="Dynamic" ErrorMessage="密码和确认密码不匹配。" />
        </li>
    </ol>
    <asp:Button runat="server" CommandName="MoveNext" Text="注册" OnClick="Unnamed10_Click" />
    <asp:Label runat="server" ID="Reg_text" Text="请填写注册资料"></asp:Label>

</asp:Content>