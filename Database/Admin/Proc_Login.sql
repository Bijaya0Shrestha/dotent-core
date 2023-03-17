Create proc Proc_Login
(
	@flag			Varchar(30),
	@user			Varchar(30),
	@pwd			Varchar(30),
	@userType		Varchar(30)=NULL,
	@address		Varchar(30)=NULL,
	@createdBy		Varchar(30)=NULL
)
AS
IF @flag='DoLogin'
BEGIN
	--success
	IF EXISTS(SELECT 'x' FROM Admin_M WHERE userName=@user and pwd=@pwd)
	BEGIN
		SELECT '0' as code, 'Login Success' as msg
	RETURN
	END
	--fail
	SELECT '1' as code, 'Login Failed' as msg
RETURN
END

EXEC Proc_Login @flag='DoLogin'


