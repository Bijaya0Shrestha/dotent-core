Alter Proc View_product(
@flag            varchar(20)
)
AS
IF @flag='SelectData'
BEGIN
	select * from ProductD
RETURN
END

EXEC View_product @flag='SelectData'

