<%@ Page Title="主页" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ilearn._Default" %>
<%@ Register TagName="ClassView" TagPrefix="lucus" Src="~/ClassView1.ascx" %>
<%--<asp:Content ID="searchContent">--%>
<asp:Content ID="head" ContentPlaceHolderID="HeadContent" runat="server">
    <link rel="stylesheet" type="text/css" href="classview1.css" />
    
   
    
 
    
   
</asp:Content>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
       
        <div class="content-wrapper" style="position:relative;">
             <div id="slider" class="nivoSlider">
                <img src="Images/wenyi/1.jpg" />
                     
                <img src="Images/wenyi/2.jpg" class="unable"  />
                       
                <img src="Images/wenyi/3.jpg" class="unable"  />
                       
                
            </div>
            <div class ="info_box"></div>
        </div>
    </section>
</asp:Content>

<asp:Content ID="SearchContent" ContentPlaceHolderID="SearchField"  runat="server">
    <section class="search_section">
        <div class="content-wrapper">
        <div id="cs_search_part">
    	 <div id="cs_search_left">
        	
            
            <!--搜索框代码-->
    
          <input style="display:none" />
           <input type="text" maxlength="40" class="search_box" />
           <input type="button" value="搜索" id="search_button" />
            
            
            <!--结束部分-->
            
        </div>
        
        <div id="cs_search_right" style="display:none"></div>
    </div>

        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
        <section class="science">
        <div class="content-wrapper">
                 <div class="recommandwrapper">
                       <h3 class="class_rec">课程推荐</h3>
                       <hr />
                        <asp:ListView ID="RecommandClassList" runat="server" GroupItemCount="3">
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
                                                    <div class ="control_item">
                                                <lucus:ClassView ID="videoview" ClassName='<%# Eval("name") %>' ClassDescription='<%# Eval("id","VideoDetails.aspx?classid={0}&videoid=1") %>'
                                                         ClassUrl='<%# Eval("id","VideoDetails.aspx?classid={0}&videoid=1") %>' ClassPicture="/Images/img/course_image.jpg" runat="server" />
                                                    </div>

                                            </td>       
                            </ItemTemplate>  
                            <LayoutTemplate>    
                                <table>
                                    <td id="groupPlaceholder" runat="server"></td>
                                </table> 
                            </LayoutTemplate>
                        </asp:ListView>
                 </div>
        </div>
    </section>
</asp:Content>
