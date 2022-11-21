<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/Site1.Master" AutoEventWireup="true" CodeBehind="UserReg.aspx.cs" Inherits="ComplaintReg.Guest.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }
        form {
            border: 3px solid #f1f1f1;
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        button:hover {
            opacity: 0.8;
        }
        .cnbtn {
            background-color: #ec3f3f;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 49%;
        }
        .lgnbtn {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 50%;
        }
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }
        img.avatar {
            width: 40%;
            border-radius: 50%;
        }
        .container {
            padding: 16px;
        }
        span.psw {
            float: right;
            padding-top: 16px;
        }
        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cnbtn {
                width: 100%;
            }
        }
        .frmalg {
            margin: auto;
            width: 40%;
        }
    </style>
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><h1>User Registration</h1></center>
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
