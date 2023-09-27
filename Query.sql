-- 1. Truy vấn dữ liệu trên một bảng
-- Hiển thị thông tin của tất cả các User có trong CSDL
Select *
From dbo.Users;
Go


-- 2. Truy vấn có sử dụng Order by
-- Sắp xếp thứ tự Comment theo Mã bài báo tăng dần, và UserID giảm dần
Select *
From dbo.Comment
Order By ArticleNo ASC, UserID DESC;
Go


-- 3. Truy vấn sử dụng toán tử Like và các so sánh xâu ký tự.
-- Tìm User có họ bắt đầu bằng chữ T
Select *
From dbo.Users
Where FullName Like N'T%'

-- Tìm tên của User ngắn nhất và cho biết có bao nhiêu ký tự
Select Top(1) FullName, len(FullName) as NameLength From dbo.Users
Order By len(FullName) ASC
Go

-- 4. Truy vấn liên quan tới điều kiện về thời gian
-- Tính số lượng Users đã tham gia từ năm 2020 đến nay
Select Count(*) as Total_Users_From_2020
From Users
Where JoinedDay Between '20200101' and getdate()

-- Tính tuổi của Users và xếp theo thứ tự tuổi giảm dần
Select UserID, FullName, Birthday, (Year(getdate()) - Year(Birthday)) as YearOld
From Users
Order By (Year(getdate()) - Year(Birthday)) DESC
Go


-- 5. Truy vấn dữ liệu từ nhiều bảng sử dụng Inner join
-- Hiển thị thông tin của tất cả User là Editor
Select U.*
From Users as U
Inner Join Editor E ON U.UserID = E.EditorID

-- Tìm ID, họ tên, tiêu đề bài báo của các Reporter đăng bài ngày 29/05/2023
Select R.ReposterID, U.FullName, A.Title
From Article as A
Inner Join Reposter R ON A.WrittenBy = R.ReposterID
Inner Join Users U ON R.ReposterID = U.UserID
Where PostedTime = '20230529'
Go


-- 6. Truy vấn sử dụng Self join, Outer join.
-- Self Join các Users có cùng năm sinh
Select U1.UserID, U1.FullName,  U2.UserID, U2.FullName, Year(U1.Birthday) as U1_Year,  Year(U2.Birthday) as U2_Year
From Users U1
Join Users U2
ON U1.UserID <> U2.UserID and Year(U1.Birthday) = Year(U2.Birthday)	-- Nằm sinh trùng nhau nhưng không được trùng ID
Where U1.UserID < U2.UserID		-- Thêm điều kiện này để tránh bị lặp lại hàng
Order By U1.UserID, U2.UserID

-- Outer Join, tìm các độc giả chưa có bất kỳ comment nào (các độc giả này không phải là Phóng viên hoặc Biên tập viên)
Select U.UserID, U.FullName, Detail
From Users U
Left Outer Join Comment C ON U.UserID = C.UserID
Where Detail is null
And U.UserID not in (Select * From Reposter)
And U.UserID not in (Select * From Editor)
Go


-- 7. Truy vấn sử dụng truy vấn con.
-- Hiển thị toàn bộ nội dung của bài báo có nhiều lượt xem nhất
Select *
From Article
Where Visit = (Select Max(Visit) From Article)

-- Hiển thị ID, họ tên của các Phóng Viên viết bài chưa được duyệt (Pending)
Select *
From (
Select UserID, FullName, Phone, ArticleNo, ArticleStatus
From Users U
Join Article A ON U.UserID = A.WrittenBy
) as ReporterInfo
Where ArticleStatus = 'Pending'
Go


-- 8. Truy vấn sử dụng With.
-- Hiển thị tên Tag và số lượng các bài báo được gắn với mỗi Tag đó
With GroupByTag as (
Select Distinct TagID, count(A.ArticleNo) Over (Partition By TagID) as CountedArticle
From Article A
Join Article_Tag T ON A.ArticleNo = T.ArticleNo
)
Select T.TagID, T.TagName, Case When CountedArticle IS NULL Then 0 Else CountedArticle End as CountedArticle
From Tag T
Left Join GroupByTag GT ON T.TagID = GT.TagID
Order By T.TagID
Go


-- 9. Truy vấn thống kê sử dụng Group by và Having
-- Đếm số lượng các bài báo có trong thẻ Kinh Doanh
Select C.CategoryID, C.CategoryName, Count(ArticleNo) as CountedArticle
From Article A
Join Category C ON A.CategoryID = C.CategoryID
Group By C.CategoryID, C.CategoryName
Having C.CategoryName = N'Kinh Doanh'
Go


-- 10. Truy vấn sử dụng function (hàm) đã viết trong bước trước.
-- Dựa theo Function Check_User được tạo, hãy lập ra 1 bảng hiển thị tên của tất cả User kèm vị trí của họ (User, Reposter, Editor)
Declare @UserID int = 1
Declare  @CheckTable Table (
	UserID int,
	FullName nvarchar(255),
	Position nvarchar(55),
	-- Giá trị trong cột Counted được nhóm theo vị trí Position
	-- Là số lượng cmt (đối với User), số lượng bài báo đã đăng (đối với Reposter) hoặc số lượng bài báo đã duyệt (đối với Editor)
	Counted int		
)
While @UserID <= (Select Max(UserID) From Users)
	Begin
		Insert Into @CheckTable
		Select UserID, FullName, Position, Counted From dbo.Check_User(@UserID)
		Set @UserID = @UserID + 1
	End
Select * From @CheckTable
Order By Position, UserID
Go