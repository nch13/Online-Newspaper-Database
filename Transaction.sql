-- Transaction
-- 1. Tìm và xoá các phóng viên chưa có bài viết nào được đăng
Begin Tran
	Select * from Reposter;

	With BadReposter as (
	Select R.ReposterID as ReposterID
	From Reposter as R
	Left Join Article As A ON R.ReposterID = A.WrittenBy
	WHERE A.ArticleNo IS NULL
	)
	Delete Reposter
	From Reposter as R
	Join BadReposter as BR ON R.ReposterID = BR.ReposterID;

	Select * from Reposter;
Rollback Tran
Go