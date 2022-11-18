<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/Site1.Master" AutoEventWireup="true" CodeBehind="UserReg.aspx.cs" Inherits="ComplaintReg.Guest.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 51px;
        }
        .auto-style3 {
            height: 60px;
        }
        .auto-style4 {
            width: 530px;
            height: 327px;
        }
        .auto-style5 {
            height: 53px;
        }
        .auto-style6 {
            height: 44px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>User Registration</h1>
       <table align="center" class="auto-style4">
                <tr>
                    <td class="auto-style3"><h4>Name</h4></td>
                    <td class="auto-style3"><asp:TextBox ID="TextBox3" runat="server" Height="20px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2"><h4>Email</h4></td>
                    <td class="auto-style2"><asp:TextBox ID="TextBox4" runat="server" Height="20px"></asp:TextBox></td>
                       
                    
                   
                </tr>
                <tr>
                    <td class="auto-style3"><h4>PhoneNo</h4></td>
                    <td class="auto-style3"><asp:TextBox ID="TextBox5" runat="server" Height="20px"></asp:TextBox> </td>
                </tr>
                  <tr>
                    <td class="auto-style5"><h4>UserName</h4></td>
                    <td class="auto-style5"><asp:TextBox ID="TextBox6" runat="server" Height="20px" ></asp:TextBox>
                  </td>
                </tr>
          
           </tr>
           <tr>
               <td class="auto-style6">
                   <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="Label1" runat="server" Text="click here to"></asp:Label>
                   <a href="Home.aspx">Login</a>
               </td>
           </tr>
           </table>
</asp:Content>
