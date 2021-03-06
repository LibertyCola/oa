if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tbOA_dept]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tbOA_dept]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tbOA_employee]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tbOA_employee]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tbOA_file]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tbOA_file]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tbOA_idear]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tbOA_idear]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tbOA_news]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tbOA_news]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tbOA_notice]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tbOA_notice]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tbOA_user]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tbOA_user]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tbOA_vote]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tbOA_vote]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tbOA_voteRecord]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tbOA_voteRecord]
GO

CREATE TABLE [dbo].[tbOA_dept] (
	[dept_id] [int] IDENTITY (1, 1) NOT NULL ,
	[dept_name] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[dept_describe] [text] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[tbOA_employee] (
	[e_id] [varchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[e_name] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[e_sex] [varchar] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[e_birth] [varchar] (16) COLLATE Chinese_PRC_CI_AS NULL ,
	[e_dept] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[e_duty] [varchar] (16) COLLATE Chinese_PRC_CI_AS NULL ,
	[e_study] [varchar] (16) COLLATE Chinese_PRC_CI_AS NULL ,
	[e_gov] [varchar] (16) COLLATE Chinese_PRC_CI_AS NULL ,
	[e_phone] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[e_memo] [text] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[tbOA_file] (
	[file_id] [int] IDENTITY (1, 1) NOT NULL ,
	[file_subject] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[file_text] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[file_person] [varchar] (16) COLLATE Chinese_PRC_CI_AS NULL ,
	[file_dept] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[file_name] [varchar] (16) COLLATE Chinese_PRC_CI_AS NULL ,
	[file_date] [datetime] NULL ,
	[file_file] [image] NULL ,
	[file_type] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[tbOA_idear] (
	[idear_id] [int] IDENTITY (1, 1) NOT NULL ,
	[idear_subject] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[idear_text] [text] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[tbOA_news] (
	[news_id] [int] IDENTITY (1, 1) NOT NULL ,
	[news_date] [datetime] NULL ,
	[news_person] [varchar] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[news_acceptDept] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[news_acceptPerson] [varchar] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[news_bit] [bit] NULL ,
	[new_text] [text] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[tbOA_notice] (
	[notice_id] [int] IDENTITY (1, 1) NOT NULL ,
	[notice_date] [datetime] NULL ,
	[notice_person] [varchar] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[notice_acceptDept] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[notice_acceptPerson] [varchar] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[notice_bit] [bit] NULL ,
	[notice_text] [text] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[tbOA_user] (
	[username] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[userpwd] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[userbit] [bit] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tbOA_vote] (
	[vote_id] [int] IDENTITY (1, 1) NOT NULL ,
	[vote_subject] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[vote_memo] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[vote_qty] [float] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tbOA_voteRecord] (
	[voteRecord_id] [int] IDENTITY (1, 1) NOT NULL ,
	[voteRecord_name] [varchar] (16) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

