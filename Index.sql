-- Ngoài các Index được tạo sẵn khi tạo Primary Key và các cột Unique
-- Ta tạo thêm 3 Non-Clustered Index với các trường WrittenBy, ApprovedBy và CategoryID
-- Các Index này sẽ giúp tăng tốc độ, hiệu suất khi ta dùng lệnh truy vấn thông qua ReposterID, EditorID và CategoryID
CREATE NONCLUSTERED INDEX non_idx_ReposterID ON Article (WrittenBy);
CREATE NONCLUSTERED INDEX non_idx_EditorID ON Article (ApprovedBy);
CREATE NONCLUSTERED INDEX non_idx_CategoryID ON Article (CategoryID);
Go