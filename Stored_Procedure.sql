-- Stored procedure
-- 1. Tìm bài báo có nhiều lượt truy cập và comment nhất, xếp theo thứ tự truy cập, sau đó đến comment
If exists (select * from sys.objects where name = 'Top_Article')
	Drop Proc Top_Article
Go
Create Proc Top_Article
As
Begin
	Select Top(1) A.ArticleNo, A.Visit, Count(*) as CommentCounted
	From dbo.Article as A
	Join dbo.Comment as C ON A.ArticleNo = C.ArticleNo
	Group by A.ArticleNo, A.Visit
	Order by A.Visit DESC, Count(*) DESC
End
Go
-- Test Cases
Execute Top_Article
Go

-- 2. Kiểm tra cấp bậc của một User (độc giả / phóng viên / viên tập viên) với đầu vào là UserID
If exists (select * from sys.objects where name = 'Check_Level')
	Drop Proc Check_Level
Go
Create Proc Check_Level (@UserID int)
As
Begin
	If @UserID in (select * from dbo.Reposter)
		Select UserID, FullName, N'Phóng Viên' as Position From dbo.Users
		Where UserID = @UserID
	Else if @UserID in (select * from dbo.Editor)
		Select UserID, FullName, N'Biên Tập Viên' as Position From dbo.Users
		Where UserID = @UserID
	Else
		Select UserID, FullName, N'Độc giả' as Position From dbo.Users
		Where UserID = @UserID
End
Go
-- Test Cases
Execute Check_Level 11
Execute Check_Level 22
Execute Check_Level 30