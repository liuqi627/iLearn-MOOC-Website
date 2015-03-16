<%@ Page Title="关于" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ilearn.About" %>


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



<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
   <section>
       <div class="content-wrapper">
           <h3 style="background-color:#f2fbf2">关于lifeislearn.tv</h3>
           <div class="about" style="width:70%">
               &nbsp;&nbsp;&nbsp;&nbsp; 我们相信，教育的优质资源应该让每个人都能享受到。我们致力于提供这样一个平台，让优秀的你得到更优秀指导，来加入我们吧！
           </div>
           <p>&nbsp;&nbsp;&nbsp;&nbsp;lifeislearn目前有六大分类：哲学历史  经管法学  基础科学  工程技术 农林科学  其他</p>

           
       </div>
   </section>
</asp:Content>