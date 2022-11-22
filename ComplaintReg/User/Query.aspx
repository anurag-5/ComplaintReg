<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="Query.aspx.cs" Inherits="ComplaintReg.User.Query" %>
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
    <h3>Previous Queries</h3>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="qid" HeaderText="Qid" />
            <asp:BoundField DataField="pid" HeaderText="Product Id" />
            <asp:BoundField DataField="product_name" HeaderText="product name" />
            <asp:BoundField DataField="uid" HeaderText="User Id" />
            <asp:BoundField DataField="msg" HeaderText="Query" />
            <asp:BoundField DataField="reply" HeaderText="Reply" />
            <asp:BoundField DataField="qdate" HeaderText="Date of query" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>

</asp:Content>
