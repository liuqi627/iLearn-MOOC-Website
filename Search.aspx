<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="ilearn.Search" %>
<%@ Register TagPrefix="lucus" TagName="ClassView" Src="~/ClassView2.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link rel="stylesheet" type="text/css" href="classview2.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SearchField" runat="server">
    <section class="search_section">
        <div class="content-wrapper">
        <div id="cs_search_part" style="margin-left:0px;">
    	 <div id="cs_search_left">
        	
            
            <!--搜索框代码-->
    
          <input style="display:none" />
             
           <asp:TextBox maxlength="40" ID="search_box_server" runat="server" CssClass="search_box" />
           <input type="button" value="搜索" id="search_button" />
            
            
            <!--结束部分-->
            
        </div>
        
        <div id="cs_search_right" style="display:none"></div>
    </div>

        </div>
    </section>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <section class="search_list">
     <div class="content-wrapper">
    <asp:ListView ID="SearchClassList" runat="server" GroupItemCount="3">
                            <EmptyDataTemplate>      
                                <table id="Table1" runat="server">        
                                    <tr>          
                                        <td>No data was returned.</td>        
                                    </tr>     
                                </table>  
                            </EmptyDataTemplate>  
                            <EmptyItemTemplate>     
                                <td id="Td1" runat="server" />  
                            </EmptyItemTemplate>  
                            <GroupTemplate>    
                                <tr ID="itemPlaceholderContainer" runat="server">      
                                    <td ID="itemPlaceholder" runat="server"></td>    
                                </tr>  
                            </GroupTemplate>  
                            <ItemTemplate>    
                                            <td>
                                                <lucus:ClassView ID="Classview" ClassName='<%# Eval("name") %>' ClassDescription='<%# Eval("descript") %>'
	                                                ClassPicture="class.jpg" ClassUri='<%# Eval("id","VideoDetails.aspx?classid={0}&videoid=1") %>' Progress="30" 
	                                                JoinTime="2013/4/4 17:10:05"  runat="server"  />
                                                
                                            </td>       
                            </ItemTemplate>  
                            <LayoutTemplate>    
                                <table>
                                    <td id="groupPlaceholder" runat="server"></td>
                                </table> 
                            </LayoutTemplate>
                        </asp:ListView>
         </div>
    </section>
</asp:Content>
