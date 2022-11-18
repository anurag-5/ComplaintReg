<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="ComplaintReg.User.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h3>Product List</h3>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="product_id" HeaderText="Product Id" />
            <asp:BoundField DataField="product_name" HeaderText="Product Name" />
        </Columns>
    </asp:GridView>
</asp:Content>
