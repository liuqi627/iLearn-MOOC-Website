<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ClassView2.ascx.cs" Inherits="WebApplication8.ClassView2" %>


<div class ="search_list_item">
      <div class="control_left">
          <asp:HyperLink ID="ClassUrl" runat="server">
         <asp:Image ID="ClassPictureImage" runat="server"  />

          </asp:HyperLink>
      </div>
     <div class="control_right">
        <div class="name">
            <asp:Label ID="ClassNameLabel" runat="server" Text="Label"></asp:Label>
        </div>
        <div class="description">
            <asp:Label ID="ClassDesriptionLabel" runat="server" Text="Label"></asp:Label>
        </div>
        
     </div>
</div>
