Alter proc Product_Delete(  
@flag   varchar(20),  
@rowid  varchar(20)=NUll  
)  
AS  
IF @flag='DeleteData'  
BEGIN  
 Delete from ProductD where rowId = @rowid  
RETURN  
END

Exec Product_Delete @flag='DeleteData'  