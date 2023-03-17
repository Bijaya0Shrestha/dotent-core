CREATE proc Update_Admin
(
@flag       varchar(20),
@rowid       varchar(20)=NULL,
@uname    varchar(20)=NULL,
@password    varchar(20)=NULL,
@add    varchar(20)=NULL,
@isActive    char(20)=NULL
)
AS
IF @flag='UpdateData'
BEGIN
	Update Admin_M SET userName=@uname, pwd=@password, address=@add, isActive=@isActive where rowID=@rowid
	SELECT '0' as code, 'Data Updated Sucessfully' as msg
RETURN
END

Exec Update_Admin @flag='UpdateData'
select * from Admin_M