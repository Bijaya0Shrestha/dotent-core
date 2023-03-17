<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductManage.aspx.cs" Inherits="EShop.AdminSide.ProductManage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../ui/Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
   
        
</head>
<body>
    <form id="form1" runat="server">
       
               <div class="col-lg-8 col-md-offset-2">
                   <br />
                   <br />
                   <a href="AddProduct.aspx" class="add-anchord" style="text-decoration: none;font-weight: bold; font-size: medium; color: white;   padding: 10px 28px;
                    background-color: green;border-radius: 13px;">Add</a>
                   <br />
                   <br />

                   <asp:GridView ID="adminlist" runat="server" CssClass="table" 
                       AutoGenerateColumns="False" 
                       OnRowDeleting="adminlist_RowDeleting"
                       OnRowEditing="adminlist_RowEditing"
                       OnRowCancelingEdit ="adminlist_RowCancelingEdit"
                       OnRowUpdating="adminlist_RowUpdating"
                       DatakeyNames="rowId">
                       
                       <Columns>
                         <asp:TemplateField HeaderText="Id">
                              <ItemTemplate>
                                  <asp:Label runat="server" Id="labelID" Text='<%# Eval("rowId") %>'>
                                  </asp:Label>
                              </ItemTemplate> 
                           </asp:TemplateField>
                       
                           <asp:TemplateField HeaderText="ProductName">
                              <ItemTemplate>
                                  <asp:Label runat="server" Id="labelName" Text='<%# Eval("productName") %>'>
                                  </asp:Label>
                              </ItemTemplate> 
                               <EditItemTemplate>
                                   <asp:TextBox runat="server"  id="pname" Text='<%# Bind("productName") %>'>
                                  </asp:TextBox>
                               </EditItemTemplate>
                           </asp:TemplateField>

                            <asp:TemplateField HeaderText="Price">
                              <ItemTemplate>
                                  <asp:Label runat="server" Id="labelPrice" Text='<%# Eval("price") %>'>
                                  </asp:Label>
                              </ItemTemplate>
                                <EditItemTemplate>
                                   <asp:TextBox runat="server"  id="price" Text='<%# Bind("price") %>'>
                                  </asp:TextBox>
                               </EditItemTemplate>
                           </asp:TemplateField>

                           <asp:TemplateField HeaderText="image">
                              <ItemTemplate>
                                 <asp:Image  ID="labelImg" height="100px" Width="100px" runat="server" ImageUrl='<%# Eval("Image")  %>'/>
                              </ItemTemplate> 
                               <EditItemTemplate>
                                   <asp:FileUpload runat="server" height="100px" Width="100px" ID="ImageUp"  />           
                               </EditItemTemplate>
                          </asp:TemplateField>
                                                      
                               <asp:TemplateField HeaderText="Description">
                              <ItemTemplate>
                                  <asp:Label runat="server" Id="labelDesc" Text='<%# Eval("Description")%>'>
                                  </asp:Label>
                              </ItemTemplate>
                                   <EditItemTemplate>
                                   <asp:TextBox runat="server"  id="desc" Text='<%# Bind("Description") %>'>
                                  </asp:TextBox>
                               </EditItemTemplate>
                           </asp:TemplateField>
                          <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="btn btn-primary"/>

                           <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="btn btn-danger"/>
                          
                       </Columns>
                   </asp:GridView>
               </div>    
       
    </form>
</body>
</html>