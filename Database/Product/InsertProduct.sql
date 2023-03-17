Alter Proc Insert_product(
@flag            varchar(20),
 @Pname         varchar(20)=NULL,
 @Price           varchar(20)=NULL,
 @image           varchar(200)=NULL,
 @description      varchar(MAX)=NULL,
 @Isactive         char(20)=NULL,
 @Isdelete        char(20)=NULL
)
AS
IF @flag='InsertProduct'
BEGIN
   SELECT '0' as code, 'Product Insert Sucessfully' as msg  
	Insert into ProductD(productName,price,Image,Description,IsActive,IsDeleted)
    values(@pname,@Price,@image,@description,@isactive,@Isdelete)
RETURN
END

EXEC Insert_product @flag='InsertProduct'

Truncate table ProductD
Select * from ProductD