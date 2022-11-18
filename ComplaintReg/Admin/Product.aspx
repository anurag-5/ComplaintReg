<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="ComplaintReg.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 58px;
    }
    .auto-style2 {
        height: 56px;
    }
    .auto-style3 {
        height: 58px;
        width: 207px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Product Registration</h1>
    <table>
        <tr>
            <td class="auto-style1">Product Name</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="187px"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" /></td>
        </tr>
    </table>
    <h1>Product List</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="product_id" OnRowUpdating="GridView1_RowUpdating" OnRowEditing="GridView1_RowEditing1">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="product_id" HeaderText="Product Id" />
            <asp:BoundField DataField="product_name" HeaderText="Product Name" />
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
            <asp:CommandField HeaderText="Update" ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
</asp:Content>
