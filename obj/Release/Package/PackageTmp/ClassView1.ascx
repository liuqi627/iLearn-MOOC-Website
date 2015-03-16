<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ClassView1.ascx.cs" Inherits="WebApplication8.ClassView1" %>

    <div class="control_top">
            <div class="control_topleft">
            <asp:HyperLink ID="ClassNameLink" runat="server">ClassName</asp:HyperLink>
            </div>
            <div class="control_topright">
             <asp:HyperLink ID="ClassGoLink" runat="server">
                <div class="info-link">➔</div>
              </asp:HyperLink>
             </div>
   </div>

<asp:HyperLink ID="ClassLink" CssClass="ClassLink" runat="server">
    <div class="control_content">
        <div class="control_image"><asp:Image ID="ClassPictureImage" runat="server" /></div>
        <div class="control_short"><asp:Label ID="ClassDesriptionLabel" runat="server" Text="Label"></asp:Label></div>
    </div>


</asp:HyperLink>