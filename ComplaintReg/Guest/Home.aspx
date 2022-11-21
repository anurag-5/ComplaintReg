<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ComplaintReg.Guest.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 38px;
        }
        .auto-style2 {
            height: 193px;
            width: 778px;
            margin-left: 0px;
        }
        .auto-style3 {
            width: 203px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="auto-style1">User Login</h2>
    <center>
    <table align="center" class="auto-style2">
  
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="200px" Height="20px"></asp:TextBox>
            </td>
        </tr>
                <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="200px" Height="20px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
            </td>
        </tr>
                   <tr>
               <td class="auto-style3">
                   <asp:Label ID="Label3" runat="server" Text="click here to"></asp:Label>
                   <a href="UserReg.aspx">Register</a>
               </td>
           </tr>
    </table>
        </center>
   
</asp:Content>
