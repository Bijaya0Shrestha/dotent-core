<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminIndex.aspx.cs" Inherits="EShop.Dashboard.AdminIndex" %>

<!DOCTYPE html>
   
<html>
    <head>
        <title>EShop</title>
       
       
       <style>
           body{
               margin:0;
               padding:0;
           }
         
           ul li {
               list-style:none;
           }
           a{
               text-decoration:none;
               color:#000;

           }
           .menu{
              background:#ccbaba;
                 font-size:20px;
               font-weight:500;
               display:flex;
               justify-content:space-between;
           }
           .nav-bar{
               display:flex;
               justify-content:space-around;
               align-items:center;
               width:70%;

           }
           .animate-charcter{
               font-size:22px;
               font-weight:bold;
               padding:0 15px;
           }
          
           </style>
    </head>
    <body>
        <form>
      <!-- Menu section starts here -->
          
               
      <div class="menu">
         
           <h5 class="animate-charcter">Online-Shoe</h5> 
               
            
           <ul class="nav-bar">
               
               <li><a href="/AdminSide/ManageAdmin.aspx"  target="frame">Admin</a></li>
               
               <li ><a href="/AdminSide/ProductManage.aspx"  target="frame">Product</a></li>
               <li><a href="/AdminSide/ProductManage.aspx" target="frame">Order</a></li>
               <li><a href="/LoginPage/admin_login.aspx">LogOut</a></li>
                
           </ul>
        </div>
      
   <div class="content">
    <iframe width="100%" height="680px" style="border:0px solid;" name="frame"></iframe>
     </div>
    
    <div class="footer">
      <div class="footer-wrapper">
            <p class="text-center"></p>
        </div>
      </div>

       </form>
</body>
</html>
