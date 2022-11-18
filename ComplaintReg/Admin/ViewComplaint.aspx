<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="ViewComplaint.aspx.cs" Inherits="ComplaintReg.Admin.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Progress list</h3>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None"  DataKeyNames="cid" OnRowDeleting="GridView1_RowDeleting ">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="cid" HeaderText="Cid" />
            <asp:BoundField DataField="product_name" HeaderText="product name" />
            <asp:BoundField DataField="Comp" HeaderText="Complaint" />
            <asp:BoundField DataField="username" HeaderText="username" />
            <asp:BoundField DataField="date" HeaderText="Date" />
            <asp:BoundField DataField="status" HeaderText="Status" />
            <asp:CommandField DeleteText="On progress" HeaderText="Confirmation" ShowDeleteButton="True" />
            
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
    <h3>Not verified</h3>
           <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None"  DataKeyNames="cid" OnRowDeleting="GridView2_RowDeleting ">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="cid" HeaderText="Cid" />
            <asp:BoundField DataField="product_name" HeaderText="product name" />
            <asp:BoundField DataField="Comp" HeaderText="Complaint" />
            <asp:BoundField DataField="username" HeaderText="username" />
            <asp:BoundField DataField="date" HeaderText="Date" />
            <asp:BoundField DataField="status" HeaderText="Status" />
           
            <asp:CommandField DeleteText="Verify" HeaderText="Progress" ShowDeleteButton="True" />
           
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
     <h3>verified</h3>
           <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="cid">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="cid" HeaderText="Cid" />
            <asp:BoundField DataField="product_name" HeaderText="product name" />
            <asp:BoundField DataField="Comp" HeaderText="Complaint" />
            <asp:BoundField DataField="username" HeaderText="username" />
            <asp:BoundField DataField="date" HeaderText="Date" />
            <asp:BoundField DataField="status" HeaderText="Status" />
          
           
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ComplaintConnectionString %>" SelectCommand="SELECT Complaintbox.cid, Product.product_name, Complaintbox.Comp, Login.username, Complaintbox.Date, Complaintbox.status FROM Product CROSS JOIN Login INNER JOIN Complaintbox ON Product.product_id = Complaintbox.pid AND Login.userid = Complaintbox.uid"></asp:SqlDataSource>
</asp:Content>
