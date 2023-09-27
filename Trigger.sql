-- Trigger
-- 1. AritcleStatus được Update thành 'Posted' thì tự cập nhật PostedTime theo giờ hiện tại
If exists (select * from sys.objects where name = 'PostedTimeAtuo')
	Drop Trigger PostedTimeAtuo
Go
Create Trigger PostedTimeAtuo ON dbo.Article
For Insert, Update
As
Begin
	If (select ArticleStatus from inserted) = 'Posted'
		Begin
			Update dbo.Article
			Set PostedTime = CURRENT_TIMESTAMP
			Where ArticleNo = (select ArticleNo from inserted)
		End
End
Go
-- Test Cases
-- Khoá chính là cột tự tăng Identity nên cần reseed ArticleNo về giá trị trước khi chạy Test Cases lần thứ 2 trở lên
-- DBCC CHECKIDENT(Article, RESEED, 10)
Begin Tran
Select ArticleNo, PostedTime, ArticleStatus From dbo.Article Where ArticleNo = 7

Update dbo.Article Set ArticleStatus = 'Posted' Where ArticleNo = 7
Insert Into Article(Title, Summary, Content, ArticleStatus, WrittenBy, ApprovedBy, CategoryID) values
(N'Trigger', N'Insert', N'Test Case', 'Posted', 31, 32, 'C010')

Select ArticleNo, PostedTime, ArticleStatus From dbo.Article Where ArticleNo = 7
Select * From dbo.Article Where ArticleNo = 11
Rollback Tran
Go

-- 2. Khi thực hiện update dữ liệu thuộc 3 cột Title, Summary, Content thì UpdatedTime cũng sẽ được tự động cập nhật
If exists (select * from sys.objects where name = 'UpdatedTimeAtuo')
	Drop Trigger UpdatedTimeAtuo
Go
Create Trigger UpdatedTimeAtuo ON dbo.Article
For Update
As
Begin
	If Update(Title) or Update(Summary) or  Update(Content)
		Begin
			Update dbo.Article
			Set UpdatedTime = CURRENT_TIMESTAMP
			Where ArticleNo = (select ArticleNo from inserted)
		End
End
Go
-- Test Cases
Begin Tran
Select ArticleNo, Title, Content, Summary, UpdatedTime From dbo.Article Where ArticleNo IN (7,10)

Update dbo.Article Set Title = 'Test Case 1' Where ArticleNo = 7
Update dbo.Article
Set Title = 'Test Case 2', Summary = 'Trigger', Content = 'Update'
Where ArticleNo = 10

Select ArticleNo, Title, Content, Summary, UpdatedTime From dbo.Article Where ArticleNo IN (7,10)
Rollback Tran
Go

