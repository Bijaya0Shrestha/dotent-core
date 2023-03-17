create table ProductD(
 rowId           int primary key identity(1,1),
 productName     varchar(20),
 price           varchar(20),
 Image           varchar(max),
 Description      varchar(max),
 IsActive         char(20),
 IsDeleted        char(20)
)


select * from  ProductD

Truncate table Product