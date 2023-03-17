<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="clogin.aspx.cs" Inherits="EShop.clientside.clogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="../ui/css/login.css" rel="stylesheet" />
    <style>
        .signup{
            border:1px;
            color:white;
            font-size:20px;
            float:right;
            margin-top:5px;
        }
    </style>
</head>
<body>
    <div class="container">
         <div class="">
        <div class="">
            <div class="">
                <div class="">
                    <div class="login-form-wrapper">
                        <div class="login-title">
                       <img class="logo-img" src="../image/Goldstar.jpeg" />

                            <h1 class="login-title"> Login</h1>
                        </div>
                        <div id="msg" runat="server" class="error">
                            <div class="alert alert-danger" runat="server" id="errMsg" visible="false"></div>
                        </div>
                        <div class="login-body">
                            <form role="form" id="loginForm" runat="server">
                                <div class="input-text">
                                    <label class="inpit-label" for="exampleInputEmail1">User Name</label>
                                    <asp:TextBox  class="form-control" ID="userName" Text="" placeholder="Enter Username" runat="server"></asp:TextBox>
                                </div>
                                <div class="input-text">
                                    <label class="inpit-label" for="exampleInputPassword1">Password</label>
                                     <asp:TextBox class="form-control" ID="pwd" runat="server"   TextMode="Password"  placeholder="Enter password"></asp:TextBox>
                                </div>
                           <div class="flex">
                                <asp:Button ID="btnLogin" class="btn" runat="server" Text="Submit" OnClick="btnLogin_Click" />
                               </div>
                                <div>
                                <a  class="signup" href="signup.aspx">Signup</a>
                                    </div>
                            </form>
                        </div>
                        <div class="login-logo">
                            <i class="fa fa-user" aria-hidden="true"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        </div>
    </body>
</html>

