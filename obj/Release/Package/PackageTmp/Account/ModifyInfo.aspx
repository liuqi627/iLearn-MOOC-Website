<%@ Page Title="管理帐户" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModifyInfo.aspx.cs" Inherits="ilearn.Account.ModifyInfo" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel runat="server" ID="Panel_ModifyInfo">
        <ol>
            <li>
                <asp:Label ID="Label2" runat="server" AssociatedControlID="Manage_Sex">性别</asp:Label>
                <asp:TextBox runat="server" ID="Manage_Sex" />

            </li>
            <li>
                <asp:Label ID="Label3" runat="server" AssociatedControlID="Manage_Email">电子邮件地址*</asp:Label>
                <asp:TextBox runat="server" ID="Manage_Email" TextMode="Email" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Manage_Email"
                    CssClass="field-validation-error" ErrorMessage="电子邮件地址字段是必需的。" />
            </li>
        </ol>
        <asp:Button ID="BtnModifyInfo" runat="server" Text="更改资料" OnClick="BtnModifyInfo_Click" />
    </asp:Panel>  
    
</asp:Content>
