<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="clientIndex.aspx.cs" Inherits="EShop.clientside.clientIndex" %>

<!DOCTYPE html>

<html>
<head>
  <title> My First Website </title>
<link href="../../UI/css/admin dashboard.css" rel="stylesheet" />
    <link href="../ui/Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .column-content{
            margin:10px auto;
            padding:20px;
           
        }
        .list-product{
            padding:10px;
            border:none;
            border-radius:15px;
            margin:0 10px;
        }
        .product-image{
            height:250px;
            width:250px;
            border-radius:8px;
        }
        .list-product:hover{
              background-color: white;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 10px 0 rgba(0, 0, 0, 0.11);
        }
        .navbar1{
            display:flex;
            justify-content:space-between;
        }
        .cart-img{
            height:20px;
            width:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
  
        <nav class="navbar navbar-expand-lg ml-25 w-100 navbar1">
  <a class="navbar-brand w-25" href="/clientside/clientIndex.aspx">Onlineshoe</a>
  <div class="w-75 " id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item ">
        <a class="nav-link" href="/clientside/clientIndex.aspx">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="clogin.aspx">LogIn/Signup</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Cart
            <img class="cart-img" src="../image/shopping-cart.png" height:"20px" width:"20px" />
        </a>
      </li>
    </ul>
  </div>
</nav>


                

        <asp:DataList CssClass="column-content" ID="DataList1" runat="server" DataKeyField="rowId" DataSourceID="SqlDataSource1" Height="293px" Width="310px" RepeatColumns="5" RepeatDirection="Horizontal">
        <ItemTemplate >
               <table class="list-product">
      
                   <tr>
                       <td style="text-align:center">
                           <asp:Image ID="Image1" CssClass="product-image" runat="server"   Height="250px" Width="250px" ImageUrl='<%# Eval("Image") %>' />
                       </td>
                   </tr>
                                <tr>
                       <td style="text-align:center">
                           <asp:Label ID="Label1" runat="server" Text='<%# Eval("productName") %>' Font-Bold="True" Font-Names="Times New Roman" ForeColor="Black"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td style="text-align:center">
                           <asp:Label ID="Label2" runat="server" Text="Price: Rs" Font-Bold="True" Font-Names="Arial" ForeColor="Black" style=" text-align:center"></asp:Label>
                           <asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>' Font-Bold="True" Font-Names="Arial" ForeColor="Black" style=" text-align:center"></asp:Label>

                       </td>
                   </tr>
                   <tr>
                       <td style="text-align:center">Quantity
                           <asp:DropDownList ID="DropDownList1" runat="server">

                               <asp:ListItem>1</asp:ListItem>
                               <asp:ListItem>2</asp:ListItem>
                               <asp:ListItem>3</asp:ListItem>
                               <asp:ListItem>4</asp:ListItem>
                               <asp:ListItem>5</asp:ListItem>

                           </asp:DropDownList>
                       </td>
                   </tr>
                   <tr>
                       <td style="text-align:center">
                           <b><a class="mr-5 hover:text-gray-900" href="#" style="font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;">
                           <asp:ImageButton ID="ImageButton1" runat="server" Height="70px" ImageUrl="~/image/AddToCart.jpg" Width="200px" CommandArgument='<%# Eval("rowId") %>'  CommandName="AddToCart"/>
                           </a></b>
                       </td>
                   </tr>
                   
               </table>
               <br>
            </br>
               <br>
            </br>
        </ItemTemplate>
    </asp:DataList>
    
   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online_ShoeConnectionString %>" SelectCommand="SELECT [Image], [productName], [price], [rowId] FROM [Product]"></asp:SqlDataSource>


        <div class="footer"> 
	© 2001-2023 3-B. All Rights Reserved.
</div>
      
  
    </form>
</body>
</html>

