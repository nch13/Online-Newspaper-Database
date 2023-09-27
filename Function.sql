-- 1. Kiểm tra  một User có phải là độc giả / phóng viên / viên tập viên
-- Nếu là độc giả thì hiển thị thêm số lần comment, phóng viên thì số bài báo đã đăng, biên tập viên thì số bài báo đã duyệt

If exists (select * from sys.objects where name = 'Check_User')
	Drop Function Check_User
Go
Create Function Check_User (@UserID int)
Returns @tblCheckUser Table(
	UserID int,
	FullName nvarchar(55),
	Position nvarchar(55),
	Counted int
)
As
Begin
	If @UserID in (select * from dbo.Reposter)
		Begin
			Insert Into @tblCheckUser (UserID, FullName, Position, Counted)
			Select UserID, FullName, N'Phóng Viên' as Position, (Select count(*) from  Article where WrittenBy = @UserID) as Counted
			From Users 
			Where UserID = @UserID
		End
	Else if @UserID in (select * from dbo.Editor)
		Begin
			Insert Into @tblCheckUser (UserID, FullName, Position, Counted)
			Select UserID, FullName, N'Biên Tập Viên' as Position, (Select count(*) from  Article where ApprovedBy = @UserID) as Counted
			From Users
			Where UserID = @UserID
		End
	Else
		Begin
			Insert Into @tblCheckUser (UserID, FullName, Position, Counted)
			Select UserID, FullName, N'Độc Giả' as Position, (Select count(*) from  Comment where UserID = @UserID) as Counted
			From Users 
			Where UserID = @UserID
		End
	Return
End
Go
--Test Cases
Select * From dbo.Check_User(9)
Select * From dbo.Check_User(11)
Select * From dbo.Check_User(2)
Go

-- 2. Lọc và hiển thị nội dung tất cả các bài báo nằm trong 1 Category
If exists (select * from sys.objects where name = 'Category_Filter')
	Drop Function Category_Filter
Go
Create Function Category_Filter (@CategoryID char(4))
Returns Table As Return (

	Select * from Article
	Where CategoryID = @CategoryID
)
Go
-- Test Cases
Select * from dbo.Category_Filter('C003')
Go

-- 3. Lọc và hiển thị nội dung tất cả các bài báo nằm trong 1 Tag
If exists (select * from sys.objects where name = 'Tag_Filter')
	Drop Function Tag_Filter
Go
Create Function Tag_Filter (@TagID int)
Returns Table As Return (

	Select A.*, AT.TagID
	From Article A
	Join Article_Tag AT on A.ArticleNo = AT.ArticleNo
	Where TagID = @TagID
)
Go
-- Test Cases
Select * from dbo.Tag_Filter(2)
Go