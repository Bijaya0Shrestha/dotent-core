<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="EShop.AdminSide.AddProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <style>
        .signup-form{
            width:35%;
            margin:0 auto;
            height:60vh;
            padding:30px 50px;
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
     .field-divided{
         padding:10px;
         border:1px solid black; 
         border-radius:12px;
         font-size:16px;
     }
     .btn-group{
         display:flex;
         justify-content:space-between;
         align-items:center;
     }
     .add-anchord1{
         width:30%;
         margin:10px 12px;
         padding:10px 10px;
         border:none;
         border-radius:12px;
         box-shadow:rgba(0,0,0,0.12);
         color:#fff;
         font-size:16px;
     }
     .insert-btn{
         background:rgba(23, 120, 15, 0.89)
     }
      .update-btn{
         background:rgba(16, 80, 159, 0.85)
     }
    </style>
    <link href="../ui/css/login.css" rel="stylesheet" />
</head>
<body>
    <div class="signup-form">
    <form id="form1" runat="server" class="product-form" >
        <div class="input-text">
                     <label>ProductName<span class="required">*</span></label>
                           <asp:TextBox runat="server" ID="pname" class="field-divided"></asp:TextBox>    

          </div>
           <div class="input-text">
                        <label>Price<span class="required">*</span></label>
         <asp:TextBox runat="server" ID="price" class="field-divided"></asp:TextBox> 

          </div>  
        <div class="input-text">
                    <label>Image<span class="required">*</span></label>
        <asp:FileUpload runat="server" ID="imageUpload" CssClass="field-divided" />     

          </div>
        <div class="input-text">
             <label>Description <span class="required">*</span></label>
        <asp:TextBox  runat="server" Id="textdesc" textmode="multiline" class="field-long field-textarea field-divided"></asp:TextBox>           

          </div>
        <div class="btn-group">
         <asp:Button runat="server" ID="AddP" Text="Insert" class="add-anchord1 insert-btn" OnClick="AddP_Click"/>
        <asp:Button runat="server" ID="UpdateP" Text="Update" class="add-anchord1 update-btn" OnClick="UpdateP_Click"/>
            </div>   
     </form>
        </div>
</body>
</html>
          
       

