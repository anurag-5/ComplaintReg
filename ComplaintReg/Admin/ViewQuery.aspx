<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="ViewQuery.aspx.cs" Inherits="ComplaintReg.Admin.ViewQuery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="qid" >
        <Columns>
            <asp:BoundField DataField="qid" HeaderText="Id" />
            <asp:BoundField DataField="product_name" HeaderText="Product name" />
            <asp:BoundField DataField="username" HeaderText="User Name" />
            <asp:BoundField DataField="msg" HeaderText="Query" />
            <asp:BoundField HeaderText="Replied" DataField="reply" />
            <asp:BoundField DataField="qdate" HeaderText="Date" />
            
            
            <asp:HyperLinkField DataNavigateUrlFields="qid" DataNavigateUrlFormatString="reply.aspx?ID={0}" HeaderText="Reply" Text="Reply" />
            
            
            
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ComplaintConnectionString %>" SelectCommand="SELECT Product.product_name, Query.msg, Login.username, Query.qdate FROM Product CROSS JOIN Login INNER JOIN Query ON Product.product_id = Query.pid AND Login.userid = Query.uid"></asp:SqlDataSource>
</asp:Content>
