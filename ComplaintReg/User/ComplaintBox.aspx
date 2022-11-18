<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="ComplaintBox.aspx.cs" Inherits="ComplaintReg.User.ComplaintBox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 60px;
        }
        .auto-style2 {
            height: 143px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="product_name" DataValueField="product_id"></asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ComplaintConnectionString %>" SelectCommand="SELECT [product_id], [product_name] FROM [Product]"></asp:SqlDataSource></br></br>
    <table class="auto-style2">
        <tr>
            <td class="auto-style1">Complaint</td>
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
    <h1>Complaint List</h1>

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
    
    
</asp:Content>
