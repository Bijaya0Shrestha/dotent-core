<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageAdmin.aspx.cs" Inherits="EShop.AdminSide.ManageAdmin1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        
.add-anchord {
    text-decoration: none;
    font-weight: bold;
    font-size: 16px;
    color: wheat;
    padding: 10px 28px;
    background-color: rgba(12, 90, 13, 0.90);
    border-radius: 8px;
    float:right;
    margin:30px 45%;
}
.add-anchord:hover{
    background:rgba(16, 142, 18, 0.90);
    color:#fff;
}

.table{

    width:50%;
    margin:30px auto;
    line-height:20px;
    border-radius:15px;
    border:none;    
    text-align:center;
   
}
th, td {
    font-size:16px;
    font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    padding:10px 2px;
  border-style:solid;
  border-color: #96D4D4;
    border-radius:15px;

}
.btn{
    padding:10px 12px;
    text-decoration:none;
    color:wheat;

}
.btn:hover{
    padding:10px 12px;
    color:whitesmoke;

}
.btn-danger{
   background:rgba(241, 52, 52, 0.95);
}
.btn-primary{
    background:rgba(58, 97, 203, 0.93);
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
       
               <div class="col-lg-8 col-md-offset-2">
                   <a href="AddAdmin.aspx" class="add-anchord">Add admin user</a>

                   <asp:GridView ID="adminlist" runat="server" CssClass="table" 
                       OnRowDeleting="adminlist_RowDeleting"
                       OnRowEditing="adminlist_RowEditing"
                       OnRowCancelingEdit = "adminlist_RowCancelingEdit"
                       OnRowUpdating ="adminlist_RowUpdating"
                       DataKeyNames="rowId"
                       AutoGenerateColumns="false" >
                       
                       <Columns>
                           <asp:BoundField HeaderText="ID" Datafield="rowID"/>

                           <asp:TemplateField HeaderText="Username">
                              <ItemTemplate>
                                  <asp:Label runat="server" Text='<%# Eval("userName") %>'>
                                  </asp:Label>
                              </ItemTemplate> 
                               <EditItemTemplate>
                                   <asp:TextBox runat="server"  id="uname" Text='<%# Bind("userName") %>'>
                                  </asp:TextBox>
                               </EditItemTemplate>
                           </asp:TemplateField>


                            <asp:TemplateField HeaderText="Password">
                              <ItemTemplate>
                                  <asp:Label runat="server" Text='<%# Eval("pwd") %>'>
                                  </asp:Label>
                              </ItemTemplate>
                               <EditItemTemplate>
                                   <asp:TextBox runat="server" id="pass"  Text='<%# Bind("pwd") %>'>
                                  </asp:TextBox>
                               </EditItemTemplate>
                           </asp:TemplateField>
                             <asp:CommandField ShowDeleteButton="true" ControlStyle-CssClass="btn btn-danger"/>
                           <asp:CommandField ShowEditButton="true" ControlStyle-CssClass="btn btn-primary"/>
                       </Columns>
                   </asp:GridView>
               </div>    
       
    </form>
</body>
</html>
