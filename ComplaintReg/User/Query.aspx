﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="Query.aspx.cs" Inherits="ComplaintReg.User.Query" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="product_name" DataValueField="product_id"></asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ComplaintConnectionString %>" SelectCommand="SELECT [product_id], [product_name] FROM [Product]"></asp:SqlDataSource></br></br>
    <table class="auto-style2">
        <tr>
            <td class="auto-style1">Query</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>

        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" Height="31px" Width="80px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>

</asp:Content>