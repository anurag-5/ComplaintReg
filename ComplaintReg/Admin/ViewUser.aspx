<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="ViewUser.aspx.cs" Inherits="ComplaintReg.Admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" DataKeyNames="userid" OnRowDeleting="GridView1_RowDeleting" >
    <Columns>
         <asp:BoundField DataField="userid" HeaderText="UserId" />
        <asp:BoundField DataField="username" HeaderText="UserName" />
        <asp:CommandField  HeaderText="status" ShowDeleteButton="True" DeleteText="Confirm"/>
        
        
    </Columns>

    </asp:GridView>

</asp:Content>
