--create database DBI_Asm
--go

use DBI_Asm
go

create table Users (
	UserID int identity (1,1) not null,
	FullName nvarchar(55) not null,
	Birthday date not null,
	Phone char(10) not null,
	Email varchar(255) not null,
	Pw varchar(20) not null,
	JoinedDay date not null Constraint DEF_JoinedDay DEFAULT CURRENT_TIMESTAMP,

	Constraint PK_Users PRIMARY KEY (UserID),
	Constraint CK_Phone CHECK (LEN(Phone) = 9),
	Constraint UQ1_Phone UNIQUE (Phone),
	Constraint UQ2_Email UNIQUE (Email)
);

create table Reposter (
	ReposterID int,

	Constraint PK_Reposter PRIMARY KEY (ReposterID),
	Constraint FK_ReposterID FOREIGN KEY (ReposterID) references dbo.Users(UserID)
);

create table Editor (
	EditorID int,

	Constraint PK_Editor PRIMARY KEY (EditorID),
	Constraint FK_EditorID FOREIGN KEY (EditorID) references dbo.Users(UserID)
);

create table Tag (
	TagID int identity (1,1) not null,
	TagName nvarchar(255) not null,

	Constraint PK_Tag PRIMARY KEY (TagID),
	Constraint UQ_TagName UNIQUE (TagName)
);

create table Category (
	CategoryID char(4),	-- C001, C002, C003
	CategoryName nvarchar(255) not null,
	SubCatOf char(4),

	Constraint PK_Category PRIMARY KEY (CategoryID),
	Constraint UQ_CategoryName UNIQUE (CategoryName),
	Constraint FK_SubCatOf FOREIGN KEY (SubCatOf) references dbo.Category(CategoryID)
);

create table Article (
	ArticleNo int identity (1,1) not null,
	Title nvarchar(50) not null,
	Summary nvarchar(255) not null,
	Content ntext not null,
	CreatedTime datetime not null Constraint DEF_CreatedTime DEFAULT CURRENT_TIMESTAMP,
	UpdatedTime datetime not null Constraint DEF_UpdatedTime DEFAULT CURRENT_TIMESTAMP,
	PostedTime datetime null,
	ArticleStatus varchar(10) not null Constraint DEF_ArticleStatus DEFAULT 'Pending',
	Visit int,
	WrittenBy int not null,
	ApprovedBy int not null,
	CategoryID char(4) not null,

	Constraint PK_Article PRIMARY KEY (ArticleNo),
	Constraint UQ_Title UNIQUE (Title),
	Constraint CK_ArticleStatus CHECK (ArticleStatus IN ('Pending', 'Editing', 'Scheduled','Posted')),
	Constraint FK_WrittenBy FOREIGN KEY (WrittenBy) references dbo.Reposter(ReposterID),
	Constraint FK_ApprovedBy FOREIGN KEY (ApprovedBy) references dbo.Editor(EditorID),
	Constraint FK_CategoryID FOREIGN KEY (CategoryID) references dbo.Category(CategoryID)
);

create table Comment (
	ArticleNo int not null,
	UserID int not null,
	Detail ntext not null,
	Constraint PK_CMT PRIMARY KEY (ArticleNo, UserID),
	Constraint FK_CMT_ArticleNo FOREIGN KEY (ArticleNo) references dbo.Article(ArticleNo),
	Constraint FK_CMT_UserID FOREIGN KEY (UserID) references dbo.Users(UserID)
);

create table Article_Tag (
	ArticleNo int not null,
	TagID int not null,

	Constraint PK_AT PRIMARY KEY (ArticleNo, TagID),
	Constraint FK_AT_ArticleNo FOREIGN KEY (ArticleNo) references dbo.Article(ArticleNo),
	Constraint FK_AT_TagID FOREIGN KEY (TagID) references dbo.Tag(TagID)
);
go