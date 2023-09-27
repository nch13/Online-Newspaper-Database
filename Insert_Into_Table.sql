Insert into Users (FullName, Birthday, Phone, Email, Pw, JoinedDay) values
(N'Trần Nghĩa Thắng', '19901002', 0989754815, 'nghiathang@gmail.com', 'Zsfsfwe5841', '20201203'),
(N'Kiều Chi Nhật', '19611106', 0820754607, 'chinhat@gmail.com', 'PB679673W', '20180401'),
(N'Võ Ngân Hà', '19720130', 0830308329, 'nganha@gmail.com', 'ZE240513B', '20180722'),
(N'Phan Lam Uyên', '19800712', 0370950905, 'lamuyen@gmail.com', 'KT626494S','20180324'),
(N'Nguyễn Hàn Lâm,', '19650906', 0840937425, 'hanlam@gmail.com', 'RT251790P', '20160331'),
(N'Dương Chi Uyên', '20030402', 0810820895, 'chiuyen@gmail.com', 'JR069409L', '20161127'),
(N'Đoàn Chí Châu', '19990620', 0830258054, 'chichau@gmail.com', 'UP507196J', '20160722'),
(N'Hà Duy Hoà', '19701105', 0960866630, 'duyhoa@gmail.com', 'CT814097O', '20210131'),
(N'Trương Mỹ Nhật', '19920414',0350249493, 'mynhat@gmail.com', 'LY643586E', '20150618'),
(N'Trần Hoàng Định', '19750201', 0940414063, 'hoangdinh@gmail.com', 'FH830823Z', '20151111'),
(N'Bùi Phi Toàn', '20041210', 0830697138, 'phitoan@gmail.com', 'WH095366F', '20160803'),
(N'Nguyễn Chí Long', '19870226', 0350000559, 'chilong@gmail.com', 'KO180899U', '20150825'),
(N'Nguyễn Lâm Toàn', '19690707', 0970131550, 'lamtoan@gmail.com', 'LP144545R', '20190310'),
(N'Đỗ Hương Nhật', '19840608', 0370658168, 'luongnhat@gmail.com', 'QZ075025J', '20160401'),
(N'Kiều Mỹ Lệ', '19661003', 0880152747, 'myle@gmail.com', 'QQ644326L', '20150705'),
(N'Dương Chí Hảo', '19720603', 0370659863, 'chihao@gmail.com', 'QA356301J', '20220623'),
(N'Bùi Nam Đô', '19940325', 0360608358, 'namdo@gmail.com', 'IK438512Z', '20211001'),
(N'Nguyễn Lan Phương', '19880724', 0830470611, 'lanphuong@gmail.com', 'XJ954761X', '20180523'),
(N'Bùi Hùng Bảo', '19700822', 0380174854, 'hungbao@gmail.com', 'FL538868H', '20190417'),
(N'Lý Lâm Tuấn', '20010113', 0940346502, 'lamtuan@gmail.com', 'AI977250F', '20200419'),
(N'Trần Lâm', '19601218', 0970343711, 'tranlam@gmail.com', 'HV144887Z', '20160308'),
(N'Vũ Minh Quyên', '20010104', 0350212834, 'minhquyen@gmail.com', 'GT431893H', '20200416'),
(N'Hà Nam Tường', '19981212', 0820192892, 'namtuong@gmail.com', 'OK515821E', '20201021'),
(N'Đỗ Duy Khánh', '20040909', 0330186540, 'duykhanh@gmail.com', 'OU595192A', '20211016'),
(N'Phan Duy Châu', '20000317', 0830903594, 'duychau@gmail.com', 'UG978753M', '20200512'),
(N'Bùi Giao Hoà', '19840304', 0970503984, 'giaohoa@gmail.com', 'CO281916E', '20170908'),
(N'Đỗ Thy Liễu', '19630103', 0840255140, 'thylieu@gmail.com', 'NU490748N', '20170217'),
(N'Lương Mỹ Chi', '19970630', 0970953896, 'mychi@gmail.com', 'ON708878L', '20190130'),
(N'Phan Nga Thy', '19800602', 0880458588, 'ngathy@gmail.com', 'UV341706Y', '20201212'),
(N'Đoàn Hoà Hiệp', '20030520', 0840895615, 'hoahiep@gmail.com', 'VL975146P', '20200924'),
(N'Vũ Hàn Tín', '19770111', 0820808903, 'hantin@gmail.com', 'UE890810F', '20210103'),
(N'Lâm Đại Nhạc', '19880606', 0989754890, 'dainhac@gmail.com', 'Zsfsffsdfe15', '20171224')
Go

Insert into Reposter (ReposterID) values
(1),
(3),
(5),
(11),
(13),
(15),
(21),
(23),
(25),
(31)
Go

Insert into Editor(EditorID) values
(2),
(4),
(8),
(12),
(14),
(18),
(22),
(24),
(28),
(32)
Go

Insert into Tag (TagName) values
(N'Covid19'),
(N'Nga - Ukraine'),
(N'Asiad 2018'),
(N'Seagame 32'),
(N'Bùi Tiến Dũng'),
(N'Vinfast'),
(N'Manchester City'),
(N'Cup FA'),
(N'Ngoại hạng Anh'),
(N'Cao Tốc Việt Nam'),
(N'Samsung'),
(N'iPhone'),
(N'Xuất Khẩu Lao Động'),
(N'Cắt giảm lao động'),
(N'Công nhân mất việc'),
(N'Mất đơn hàng'),
(N'Bảo hiểm xã hội Việt Nam'),
(N'Ủy ban Xã hội'),
(N'Thành Phố Hồ Chí Minh'),
(N'Hà Nội')
Go

Insert into Category(CategoryID, CategoryName, SubCatOf) values
('C001', N'Thời Sự', NULL),
('C002', N'Thế Giới', NULL),
('C003', N'Kinh Doanh', NULL),
('C004', N'Khoa Học', NULL),
('C005', N'Góc Nhìn', NULL),
('C006', N'Thể Thao', NULL),
('C007', N'Pháp Luật', NULL),
('C008', N'Sức Khoẻ', NULL),
('C009', N'Đời Sống', NULL),
('C010', N'Số Hoá', NULL),
('C011', N'Chính Trị', 'C001'),
('C012', N'Dân Sinh', 'C001'),
('C013', N'Giao Thông', 'C001'),
('C014', N'Quốc Tế', 'C003'),
('C015', N'Doanh Nghiệp', 'C003'),
('C016', N'Chứng Khoán', 'C003'),
('C017', N'Bóng Đá', 'C006'),
('C018', N'Lịch Thi Đấu', 'C006'),
('C019', N'Tường Thuật', 'C006'),
('C020', N'Sản Phẩm', 'C010')
Go

Insert into Article(Title, Summary, Content, CreatedTime, UpdatedTime, PostedTime, ArticleStatus, Visit, WrittenBy, ApprovedBy, CategoryID) values
(N'Đặc phái viên Trung Quốc đến Nga, Ukraine', N'Trung Quốc thông báo từ đầu tuần sau để bàn giải pháp chính trị cho chiến sự.',
N'"Từ ngày 15/5, Lý Huy, đặc phái viên chính phủ Trung Quốc về các vấn đề Âu - Á, sẽ thăm Ukraine, Ba Lan, Pháp, Đức và Nga để trao đổi với tất cả các bên về giải pháp chính trị cho cuộc khủng hoảng Ukraine", người phát ngôn Bộ Ngoại giao Trung Quốc Uông Văn Bân cho biết hôm nay. [...]',
'20231105', '20231105', '20231205', 'Posted', 58, 1, 2, 'C002'),

(N'Quan chức Nga - Ukraine xô xát ở Thổ Nhĩ Kỳ', N'Thành viên phái đoàn Nga và Ukraine xô xát khi giành giật lá cờ bên lề Hội đồng Nghị viện.',
N'Bên lề cuộc họp Hội đồng Nghị viện về Hợp tác Kinh tế Biển Đen (PABSEC) tại Thổ Nhĩ Kỳ hôm 4/5, trong lúc quan chức đại diện phái đoàn Nga Olga Timofeeva đang trả lời phỏng vấn, nghị sĩ Ukraine Oleksandr Marikovski đã giương quốc kỳ nước mình đứng sau bà Timofeeva. [...]',
'20230504', '20230504', '20230505', 'Posted', 128, 3, 2, 'C002'),

(N'Ám ảnh đỉnh dịch', N'Tôi không ngờ mình phải chứng kiến đỉnh dịch khốc liệt nhất, với những cảnh tượng chưa từng có cả trăm năm qua.',
N'Ngày đầu tiên đặt chân đến bệnh viện hồi sức cấp cứu, nơi đang cứu chữa những bệnh nhân Covid nặng nhất, đập vào tai tôi là tiếng còi báo động kêu dai dẳng dọc hành lang. Trong khu vực cấp cứu có rất nhiều loại máy, nếu máy có lỗi sẽ phát ra tiếng kêu báo hiệu. Thông thường, nhân viên y tế nghe thấy tiếng kêu sẽ tới xem ngay để xử lý sự cố.  [...]',
'20220910', '20220915', '20220918', 'Posted', 1132, 11, 12, 'C005'),

(N'Dự báo làn sóng sa thải lao động kéo dài hết năm', N'Khoảng 5.200 trong số gần 9.560 doanh nghiệp được khảo sát cho biết sẽ cắt giảm trên 5% lao động từ nay đến hết năm 2023.',
N'Dự báo được Ban Nghiên cứu Phát triển Kinh tế tư nhân (Ban IV, thuộc Hội đồng tư vấn cải cách thủ tục hành chính của Thủ tướng) nêu trong báo cáo khảo sát khó khăn doanh nghiệp và triển vọng kinh tế cuối năm 2023 gửi Thủ tướng. [...]',
'20230528', '20230528', '20230529', 'Posted', 2358, 13, 18, 'C012'),

(N'Xuất khẩu lao động là nguồn gia tăng kiều hối', N'TP HCM Xuất khẩu lao động không còn là cách xóa đói giảm nghèo, tạo việc làm cho người dân như trước mà cần được nhìn nhận là nguồn gia tăng kiều hối, theo chuyên gia.',
N'Ý kiến được bà Tạ Thị Thanh Thúy, Bí thư thứ nhất, Trưởng ban quản lý lao động Việt Nam tại Hàn Quốc đưa ra tại hội thảo lấy ý kiến xây dựng đề án chính sách thu hút và phát huy nguồn lực kiều hối trên địa bàn TP HCM, chiều 22/5. [...]',
'20230522', '20230522', '20230522', 'Posted', 987, 15, 18, 'C012'),

(N'CT Tuyên Quang - Phú Thọ lên 4 làn xe năm 2023', N'Thủ tướng phê duyệt điều chỉnh chủ trương đầu tư dự án cao tốc Tuyên Quang - Phú Thọ, hoàn thành nâng từ hai lên bốn làn xe trong năm 2023.',
N'Theo quyết định ngày 29/5, giai đoạn một (hai làn xe) và giai đoạn hai (bốn làn xe) của dự án được gộp lại. Tổng vốn đầu tư toàn tuyến bốn làn xe là 3.753 tỷ đồng, tăng hơn 40 tỷ đồng so với chủ trương năm 2022; trong đó vốn ngân sách trung ương 2.900 tỷ đồng, ngân sách địa phương 853 tỷ đồng. [...]',
'20230529', '20230529', '20230529', 'Posted', 25, 21, 22, 'C001'),

(N'Chốt giá tạm cho 43 dự án điện tái tạo', N'Gần 70% dự điện tái tạo chuyển tiếp chưa có giá đã gửi hồ sơ để đàm phán, trong đó 43 dự án thống nhất giá tạm gần 1.000 đồng một kWh, bằng nửa khung giá trần.',
N'Theo khung giá của Bộ Công Thương, giá điện tạm tính cho các dự án này tối đa 908 đồng một kWh, chưa gồm thuế VAT. Tập đoàn Điện lực Việt Nam (EVN) cho biết đã trình Bộ Công Thương phê duyệt giá tạm cho 40 dự án hoàn thành đàm phán giá, ký tắt hợp đồng mua bán điện (PPA). [...]',
'20230520', '20230525', NULL, 'Editing', 0, 23, 24, 'C003'),

(N'Doanh nghiệp mất 32,2 giờ cho một thủ tục đất đai', N'Để thực hiện một thủ tục hành chính trong nhóm đất đai, trung bình mỗi doanh nghiệp phải bỏ 32,2 giờ, mất chi phí trực tiếp khoảng 3,8 triệu đồng.',
N'So với năm 2021, điểm số APCI của nhóm thủ tục hành chính đất đai giảm 1,2 điểm, và mức chênh lệch giữa điểm cao nhất và thấp nhất trong giai đoạn 2018-2022 là 5,4 điểm. Nhìn chung, từ 2018 đến nay, điểm số của nhóm này có xu hướng giảm nhẹ, theo đó năm 2019 là năm có biến động tích cực nhất, năm 2022 cho thấy những dấu hiệu cấp bách của một đợt cải cách toàn diện đối với các thủ tục. [...]',
'20230525', '20230528', NULL, 'Scheduled', 0, 25, 24, 'C003'),

(N'Kiến nghị giao điện khí Ô Môn 3 và 4 cho PVN', N'Các bộ, ngành kiến nghị Thủ tướng đồng ý chuyển hai dự án nhiệt điện khí Ô Môn 3, Ô Môn 4 bị chậm tiến độ từ EVN về PVN.',
N'Hai dự án điện khí Ô Môn 3 và 4 thuộc chuỗi dự án khí - điện lô B Ô Môn (Cần Thơ) là các dự án trọng điểm, khi vận hành sẽ đảm bảo an ninh năng lượng. Tuy nhiên, các dự án này bị chậm tiến độ nhiều năm do khó khăn về vốn, chưa thống nhất về khai thác, vận chuyển và sử dụng khí trong suốt vòng đời dự án. [...]',
'20230529', '20230529', NULL, 'Pending', 0, 23, 24, 'C003'),

(N'Giảm cân có cần kiêng ăn vặt?', N'Việc giảm cân khuyến khích ăn nhiều bữa trong ngày, do đó mọi người không cần kiêng ăn vặt và nên dùng thực phẩm lành mạnh, ít calo.',
N'Nếu ăn vặt là nguyên nhân gây tăng cân và có thể dẫn tới các bệnh như ung thư, tim mạch và đột quỵ, mọi người cần xem xét thành phần bữa ăn theo nguyên tắc: liệu có còn thực phẩm nhiều muối, nhiều chất béo và đường hay không, kế hoạch ăn kiêng như thế nào. Từ đó, mọi người điều chỉnh bữa ăn để đảm bảo dinh dưỡng cần thiết và ít năng lượng nhất có thể. [...]',
'20230528', '20230528', NULL, 'Pending', 0, 31, 32, 'C008')
Go

Insert into Comment (ArticleNo, UserID, Detail) values
(3, 9, N'Cám ơn đội ngũ y bác sỹ đã xả thân, quên mình vì bệnh nhân. Vô cùng biết ơn!'),
(3, 10, N'Bài viết rất hay.'),
(3, 6, N'Tính tỷ lệ số người tử vong trên tổng dân số thì tỷ lệ tử vong của nước mình không thua kém Ấn Độ, Inđo'),
(4, 9, N'Vừa nhận thông tin bị cắt giảm xong. Nhưng thông cảm và chia sẻ với khó khăn của Công ty lúc này.'),
(4, 10, N'Cắt giảm là việc cần thiết nhưng cần thông báo trước với người lao động và tiến hành theo trình tự pháp luật'),
(5, 19, N'Chúng ta phấn đấu xuất siêu hàng hóa để thu ngoại tệ chứ trông chờ vào việc XK lao động để lấy ngoại tệ...'),
(5, 20, N'Xuất khẩu lao động của mình sang nước ngoài toàn lao động tầm thấp. Trong khi đó mời chuyên gia họ trả một đống tiền.'),
(5, 16, N'Mỗi năm mình cũng góp 40k usd cho đất nước.'),
(6, 26, N'Hà giang sắp tới thay Lào cai làm trọng điểm du lịch, đường xá đang được mở rộng, thiếu mỗi cao tốc chạy thẳng thành phố nữa thì quá tuyệt vời rồi!')
Go

Insert into Article_Tag(ArticleNo, TagID) values
(1, 2),
(2, 2),
(3, 1),
(4, 14),
(4, 15),
(4, 16),
(5, 13),
(5, 19),
(6, 10),
(6, 20)
Go