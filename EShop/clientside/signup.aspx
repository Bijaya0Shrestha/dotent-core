<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="EShop.clientside.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style>
        .signup-form{
            width:45%;
            margin:0 auto;
            height:60vh;
            padding:20px;
        }
        .form-signup{
            display:flex;
            justify-content:center;
            align-items:center;
            flex-direction:column;
            border:1px solid black;
            border-radius:15px;
        }
        .form-group{
            background:red;
            padding:10px;
        }
        .inpit-label{
            font-size:20px;
            margin:20px 0;
        }
     
    
    </style>
    <link href="../ui/css/login.css" rel="stylesheet" />
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
                                <div class="input-text">
                                    <label class="inpit-label" for="exampleInputPassword1">Confirm Password</label>
                  <asp:TextBox class="form-control" ID="cpwd" runat="server"   TextMode="Password"  placeholder="Enter password"></asp:TextBox>
                                </div>
                           <div class="flex">
                                     <asp:Button ID="submit" class="btn btn-primary" runat="server" Text="Submit" OnClick="submit_Click" />
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

