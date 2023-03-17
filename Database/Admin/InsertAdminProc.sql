Create Proc Admin_Insert(
@flag           varchar(20),
@userName       varchar(20)=NULL,
@pwd            varchar(20)=NULL,
@address        varchar(20)=NULL,
@isActive       char(20)=NULL

)
AS
IF @flag='InsertAdmin'
BEGIN
   SELECT '0' as code, 'Data insert sucessfully' as msg  
	Insert into Admin_M(userName,pwd,address,createdDate,isActive)
    values(@userName,@userName,@address,getdate(),@isActive)
RETURN
END

EXEC Admin_Insert @flag='InsertAdmin'


select * from Admin_M
 delete from  Admin_M where rowID='2'
