<%@ Page Title="VideoDetails" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VideoDetails.aspx.cs" Inherits="ilearn.VideoDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" src="jwplayer.js"></script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
  <section class="video_section"> 
      
      <div class="content-wrapper video-wrapper">
      <div id ="videowrapper" style="width:700px; height:400px;"></div>
        <script type="text/javascript">
            jwplayer("videowrapper").setup({
                file: 'test.flv',
                image: 'class.jpg',
                width: '940',
                height: '480'
            });
      </script>
     </div>
      </section>
    <section>
        <div class="content-wrapper video-wrapper">
    <asp:ListView ID="videos_in_class" runat="server" GroupItemCount="1">
        <LayoutTemplate>
            <div>
                 <td id="groupPlaceholder" runat="server"></td>
            </div>
        </LayoutTemplate>
        <GroupTemplate>
             <div ID="itemPlaceholderContainer" runat="server">      
                 <div ID="itemPlaceholder" runat="server"></div>    
             </div> 
        </GroupTemplate>
        <ItemTemplate>
            <div>
                <a href="VideoDetails.aspx?classid=<%#Eval("classid") %>&videoid=<%#Eval("id") %>">
                    <div class="video_series">
                        <%# Eval("name") %>
                    </div>
                </a>
            </div>
        </ItemTemplate>
    </asp:ListView>
         </div>
      </section>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">


    <!--添加评论-->



    <p>我要评论：</p>
    <asp:TextBox ID="discussion_input_textbox" runat="server" Height="106px" Width="574px" CssClass="content_textbox"></asp:TextBox>
    <input type="button" id="content_add_button" value="提交" style="width:117px" />

<%--下面这个content是显示此video的所有评论--%>

        <asp:ListView ID="discussion_listview" runat="server" GroupItemCount="1">
        <LayoutTemplate>
            <table id="content_table">
                 <td id="groupPlaceholder" runat="server"></td>
            </table>
        </LayoutTemplate>
        <GroupTemplate>
             <tr ID="itemPlaceholderContainer" runat="server">      
                 <td ID="itemPlaceholder" runat="server"></td>    
             </tr> 
        </GroupTemplate>
        <ItemTemplate>
            <td>
                
                <p>评论发表时间：<%# Eval("publishtime") %></p>
                <p>内容:<%# Eval("contents") %></p>
                <p>发表人：<%# Eval("userid") %></p>
               
                <hr />
            </td>
        </ItemTemplate>
    </asp:ListView>




</asp:Content>
