﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ComplaintReg.Guest.Home" %>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center> <h2 class="auto-style1">User Login</h2></center>
    
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
                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" Height="34px" Width="84px" />
            </td>
        </tr>
                   <tr>
               <td class="auto-style3">
                   <asp:Label ID="Label3" runat="server" Text="click here to"></asp:Label>
                   <a href="UserReg.aspx">Register</a>
               </td>
           </tr>
    </table>
        
   
</asp:Content>
