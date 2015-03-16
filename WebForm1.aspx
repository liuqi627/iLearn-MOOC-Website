<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ilearn.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <ul>
        
        <asp:ListView id="ListView1" runat="server" DataSourceID="EntityDataSource_test" GroupItemCount="3">
            <LayoutTemplate>
                <table >
                    <td id="groupPlaceholder" runat="server"></td>
                </table>
            </LayoutTemplate>
            <GroupTemplate>
                <tr>
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
<%--            <GroupSeparatorTemplate>
                <hr>
            </GroupSeparatorTemplate>--%>
            <ItemTemplate>
                <td runat="server">
                    <p>id:<%# Eval("id") %></p>
                    <p>name:<%# Eval("name") %></p>
                </td>
            </ItemTemplate>
        </asp:ListView>
        
    </ul>
        <asp:EntityDataSource ID="EntityDataSource_test" runat="server" ConnectionString="name=videoshareEntities" DefaultContainerName="videoshareEntities" EnableFlattening="False" EntitySetName="videoclasses">
        </asp:EntityDataSource>
    </form>
</body>
</html>
