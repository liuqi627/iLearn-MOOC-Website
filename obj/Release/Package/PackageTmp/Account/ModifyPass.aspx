<%@ Page Title="管理帐户" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModifyPass.aspx.cs" Inherits="ilearn.Account.ModifyPass" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel runat="server" ID="Panel_ModifyPassword">
        <ol>
            <li>
                <asp:Label ID="Label4" runat="server" AssociatedControlID="Manage_Password">新密码*</asp:Label>
                <asp:TextBox runat="server" ID="Manage_Password" TextMode="Password" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Manage_Password"
                    CssClass="field-validation-error" ErrorMessage="密码字段是必填字段。" />
            </li>
            <li>
                <asp:Label ID="Label5" runat="server" AssociatedControlID="Manage_ConfirmPassword">确认新密码*</asp:Label>
                <asp:TextBox runat="server" ID="Manage_ConfirmPassword" TextMode="Password" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Manage_ConfirmPassword"
                    CssClass="field-validation-error" Display="Dynamic" ErrorMessage="“确认密码”字段是必填字段。" />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Manage_Password" ControlToValidate="Manage_ConfirmPassword"
                    CssClass="field-validation-error" Display="Dynamic" ErrorMessage="密码和确认密码不匹配。" />
            </li>
        </ol>
        <asp:Button ID="BtnModifyPassword" runat="server" Text="更改密码" OnClick="BtnModifyPassword_Click" />
    </asp:Panel>
</asp:Content>
