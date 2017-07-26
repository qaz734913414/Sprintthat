/*
Navicat SQL Server Data Transfer

Source Server         : Sqlserver_Localhost
Source Server Version : 120000
Source Host           : QSP:1433
Source Database       : SprintthatDB
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 120000
File Encoding         : 65001

Date: 2017-07-26 20:43:09
*/


-- ----------------------------
-- Table structure for Sys_Log_ItemOperate
-- ----------------------------
DROP TABLE [dbo].[Sys_Log_ItemOperate]
GO
CREATE TABLE [dbo].[Sys_Log_ItemOperate] (
[F_Id] int NOT NULL IDENTITY(1,1) ,
[F_LogId] varchar(50) NULL ,
[F_Date] datetime NULL ,
[F_Account] varchar(50) NULL ,
[F_ModuleId] varchar(50) NULL ,
[F_ModuleName] varchar(50) NULL ,
[F_OperateDescription] varchar(255) NULL ,
[F_OperateType] int NULL ,
[F_ItemId] varchar(50) NULL ,
[F_ItemName] varchar(50) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Log_ItemOperate', 
'COLUMN', N'F_Id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_ItemOperate'
, @level2type = 'COLUMN', @level2name = N'F_Id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_ItemOperate'
, @level2type = 'COLUMN', @level2name = N'F_Id'
GO

-- ----------------------------
-- Records of Sys_Log_ItemOperate
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Sys_Log_ItemOperate] ON
GO
SET IDENTITY_INSERT [dbo].[Sys_Log_ItemOperate] OFF
GO

-- ----------------------------
-- Table structure for Sys_Log_Logon
-- ----------------------------
DROP TABLE [dbo].[Sys_Log_Logon]
GO
CREATE TABLE [dbo].[Sys_Log_Logon] (
[F_LogId] varchar(50) NULL ,
[F_Date] datetime NULL ,
[F_Account] varchar(50) NULL ,
[F_NickName] varchar(50) NULL ,
[F_Type] int NULL DEFAULT ((0)) ,
[F_IPAddress] varchar(50) NULL ,
[F_IPAddressName] varchar(50) NULL ,
[F_Result] int NULL ,
[F_ResultDescription] varchar(500) NULL ,
[F_Id] int NOT NULL IDENTITY(1,1) 
)


GO
DBCC CHECKIDENT(N'[dbo].[Sys_Log_Logon]', RESEED, 2014)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Log_Logon', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'系统日志'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Logon'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'系统日志'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Logon'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Log_Logon', 
'COLUMN', N'F_LogId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'日志主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Logon'
, @level2type = 'COLUMN', @level2name = N'F_LogId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'日志主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Logon'
, @level2type = 'COLUMN', @level2name = N'F_LogId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Log_Logon', 
'COLUMN', N'F_Date')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'登录登出日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Logon'
, @level2type = 'COLUMN', @level2name = N'F_Date'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'登录登出日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Logon'
, @level2type = 'COLUMN', @level2name = N'F_Date'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Log_Logon', 
'COLUMN', N'F_Account')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户账号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Logon'
, @level2type = 'COLUMN', @level2name = N'F_Account'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户账号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Logon'
, @level2type = 'COLUMN', @level2name = N'F_Account'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Log_Logon', 
'COLUMN', N'F_NickName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'姓名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Logon'
, @level2type = 'COLUMN', @level2name = N'F_NickName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'姓名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Logon'
, @level2type = 'COLUMN', @level2name = N'F_NickName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Log_Logon', 
'COLUMN', N'F_Type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'登录类型（1登入，2登出）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Logon'
, @level2type = 'COLUMN', @level2name = N'F_Type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'登录类型（1登入，2登出）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Logon'
, @level2type = 'COLUMN', @level2name = N'F_Type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Log_Logon', 
'COLUMN', N'F_IPAddress')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'IP地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Logon'
, @level2type = 'COLUMN', @level2name = N'F_IPAddress'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'IP地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Logon'
, @level2type = 'COLUMN', @level2name = N'F_IPAddress'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Log_Logon', 
'COLUMN', N'F_IPAddressName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'IP所在城市'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Logon'
, @level2type = 'COLUMN', @level2name = N'F_IPAddressName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'IP所在城市'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Logon'
, @level2type = 'COLUMN', @level2name = N'F_IPAddressName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Log_Logon', 
'COLUMN', N'F_Result')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'登录结果（1成功，0失败）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Logon'
, @level2type = 'COLUMN', @level2name = N'F_Result'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'登录结果（1成功，0失败）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Logon'
, @level2type = 'COLUMN', @level2name = N'F_Result'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Log_Logon', 
'COLUMN', N'F_ResultDescription')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'登录结果描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Logon'
, @level2type = 'COLUMN', @level2name = N'F_ResultDescription'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'登录结果描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Logon'
, @level2type = 'COLUMN', @level2name = N'F_ResultDescription'
GO

-- ----------------------------
-- Records of Sys_Log_Logon
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Sys_Log_Logon] ON
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'617461bb-d46c-4709-b4f8-935335f295a2', N'2017-06-15 15:18:58.073', N'admin', N'admin', N'1', N'192.168.0.26', N'本地局域网', N'1', N'登录成功', N'1')
GO
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'9d0ecfe0-450a-4e5b-a72c-85a9325ef07a', N'2017-06-15 15:34:04.170', N'admin', N'admin', N'1', N'192.168.0.26', N'本地局域网', N'0', N'登录失败', N'2')
GO
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'41f31f04-1807-43aa-8b87-1860a29fe255', N'2017-06-15 15:36:21.990', N'admin', N'admin', N'1', N'192.168.0.26', N'本地局域网', N'0', N'登录失败', N'3')
GO
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'6222fe7a-e196-485b-a0b8-2655b21c4c44', N'2017-06-15 16:12:27.573', N'admin', N'admin', N'1', N'192.168.0.26', N'本地局域网', N'1', N'登录成功', N'5')
GO
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'f22c20e0-86fa-4f00-94cb-578d632351dc', N'2017-06-15 17:02:42.347', N'admin', N'系统管理员', N'1', N'192.168.0.26', N'本地局域网', N'1', N'登录成功', N'9')
GO
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'4ea71d46-a124-496b-ba6d-cfab259ac1ae', N'2017-06-15 17:05:23.813', N'admin', N'系统管理员', N'1', N'192.168.0.26', N'本地局域网', N'1', N'登录成功', N'10')
GO
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'c7f1d5cc-4f1e-4423-bb5d-2005f2e55221', N'2017-06-15 17:06:48.550', N'admin', N'系统管理员', N'1', N'192.168.0.26', N'本地局域网', N'1', N'登录成功', N'11')
GO
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'bd677090-85ba-4a94-aa76-33051f206f17', N'2017-06-15 17:13:08.890', N'admin', N'系统管理员', N'1', N'192.168.0.26', N'本地局域网', N'1', N'登录成功', N'12')
GO
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'c22e0f9b-b407-4bd0-9daf-6ba82bcce877', N'2017-06-15 17:49:45.107', N'admin', N'系统管理员', N'1', N'192.168.0.26', N'本地局域网', N'1', N'登录成功', N'14')
GO
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'84dd2fda-adeb-4943-a746-e69de4d9a45f', N'2017-06-15 20:30:40.643', N'admin', N'系统管理员', N'1', N'192.168.0.26', N'本地局域网', N'1', N'登录成功', N'17')
GO
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'cc029813-e57e-429f-a6aa-b51ca69b2bf7', N'2017-06-18 11:27:47.413', N'admin', N'系统管理员', N'1', N'192.168.135.1', N'本地局域网', N'1', N'登录成功', N'1005')
GO
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'44882c9a-962d-4a02-9683-f13037798eb3', N'2017-06-19 13:05:05.483', N'admin', N'系统管理员', N'1', N'192.168.0.26', N'本地局域网', N'1', N'登录成功', N'1006')
GO
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'77ca9824-d328-4524-b01d-1a2a7b893426', N'2017-06-19 13:48:38.017', N'admin', N'系统管理员', N'1', N'192.168.0.26', N'本地局域网', N'1', N'登录成功', N'1007')
GO
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'd0c1bdfa-987e-4096-b001-0149b6c91e51', N'2017-06-19 14:11:50.090', N'admin', N'系统管理员', N'1', N'192.168.0.26', N'本地局域网', N'1', N'登录成功', N'1008')
GO
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'6b80712a-f2c2-4430-be4f-82f7ff690661', N'2017-06-19 14:12:00.187', N'admin', N'系统管理员', N'1', N'192.168.0.26', N'本地局域网', N'0', N'登录失败', N'1009')
GO
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'd69ff330-9956-4271-9458-94d54fd4c453', N'2017-06-19 14:12:05.793', N'admin', N'系统管理员', N'1', N'192.168.0.26', N'本地局域网', N'1', N'登录成功', N'1010')
GO
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'35417bcd-69f1-43a3-8e3f-39fdde7f6e49', N'2017-06-19 14:13:26.743', N'admin', N'系统管理员', N'1', N'192.168.0.26', N'本地局域网', N'1', N'登录成功', N'1011')
GO
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'95429df1-0b6d-4a8e-ad52-dc6a3326b61e', N'2017-06-19 14:14:13.653', N'admin', N'系统管理员', N'1', N'192.168.0.26', N'本地局域网', N'1', N'登录成功', N'1012')
GO
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'535e0d55-681e-47ec-953a-f4c615fe5f5a', N'2017-06-19 14:15:51.673', N'admin', N'系统管理员', N'1', N'192.168.0.26', N'本地局域网', N'1', N'登录成功', N'1013')
GO
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'8422c8a9-ff6e-4ea4-848a-f7ba8e2ae444', N'2017-06-26 11:57:50.747', N'admin', N'系统管理员', N'1', N'192.168.0.26', N'本地局域网', N'1', N'登录成功', N'1015')
GO
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'3fc92d9e-3928-42e8-b60b-4c38762d38e9', N'2017-06-15 15:36:30.620', N'admin', N'admin', N'1', N'192.168.0.26', N'本地局域网', N'1', N'登录成功', N'4')
GO
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'951d6d13-4538-4ec6-b2fe-d6b33a43aad9', N'2017-06-15 17:43:58.547', N'admin', N'系统管理员', N'1', N'192.168.0.26', N'本地局域网', N'1', N'登录成功', N'13')
GO
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'e66ec856-d5b5-4296-b7c0-f34026c050c9', N'2017-06-15 20:05:20.173', N'admin', N'系统管理员', N'1', N'192.168.0.26', N'本地局域网', N'1', N'登录成功', N'15')
GO
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'41503383-2896-42e5-b451-7d0748d4fd19', N'2017-06-15 16:43:42.917', N'admin', N'系统管理员', N'1', N'192.168.0.26', N'本地局域网', N'1', N'登录成功', N'6')
GO
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'30a23ce0-1513-4ebc-95d8-bb7f19b62462', N'2017-06-15 16:44:03.953', N'admin', N'系统管理员', N'1', N'192.168.0.26', N'本地局域网', N'1', N'登录成功', N'7')
GO
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'636a12e3-b27d-4e4c-a923-01bd59d8ecb1', N'2017-06-15 16:45:04.447', N'admin', N'系统管理员', N'1', N'192.168.0.26', N'本地局域网', N'1', N'登录成功', N'8')
GO
GO
INSERT INTO [dbo].[Sys_Log_Logon] ([F_LogId], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_Result], [F_ResultDescription], [F_Id]) VALUES (N'4f5bf9ec-eb38-4787-ae63-04559fc2261f', N'2017-06-19 15:52:33.640', N'admin', N'系统管理员', N'1', N'192.168.0.26', N'本地局域网', N'1', N'登录成功', N'1014')
GO
GO
SET IDENTITY_INSERT [dbo].[Sys_Log_Logon] OFF
GO

-- ----------------------------
-- Table structure for Sys_Log_Module
-- ----------------------------
DROP TABLE [dbo].[Sys_Log_Module]
GO
CREATE TABLE [dbo].[Sys_Log_Module] (
[F_LogId] varchar(50) NULL ,
[F_Date] datetime NULL ,
[F_Account] varchar(50) NULL ,
[F_ModuleId] varchar(50) NULL ,
[F_ModuleName] varchar(50) NULL ,
[F_OperateType] int NULL ,
[F_OperateDescription] varchar(500) NULL ,
[F_Id] int NOT NULL IDENTITY(1,1) 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Log_Module', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'系统日志'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Module'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'系统日志'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Module'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Log_Module', 
'COLUMN', N'F_LogId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'日志主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Module'
, @level2type = 'COLUMN', @level2name = N'F_LogId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'日志主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Module'
, @level2type = 'COLUMN', @level2name = N'F_LogId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Log_Module', 
'COLUMN', N'F_Date')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Module'
, @level2type = 'COLUMN', @level2name = N'F_Date'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Module'
, @level2type = 'COLUMN', @level2name = N'F_Date'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Log_Module', 
'COLUMN', N'F_Account')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作用户'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Module'
, @level2type = 'COLUMN', @level2name = N'F_Account'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作用户'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Module'
, @level2type = 'COLUMN', @level2name = N'F_Account'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Log_Module', 
'COLUMN', N'F_ModuleId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'系统模块Id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Module'
, @level2type = 'COLUMN', @level2name = N'F_ModuleId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'系统模块Id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Module'
, @level2type = 'COLUMN', @level2name = N'F_ModuleId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Log_Module', 
'COLUMN', N'F_ModuleName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'系统模块名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Module'
, @level2type = 'COLUMN', @level2name = N'F_ModuleName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'系统模块名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Module'
, @level2type = 'COLUMN', @level2name = N'F_ModuleName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Log_Module', 
'COLUMN', N'F_OperateType')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作类型（1增加、2修改、3删除，4点击使用）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Module'
, @level2type = 'COLUMN', @level2name = N'F_OperateType'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作类型（1增加、2修改、3删除，4点击使用）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Module'
, @level2type = 'COLUMN', @level2name = N'F_OperateType'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Log_Module', 
'COLUMN', N'F_OperateDescription')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作类型描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Module'
, @level2type = 'COLUMN', @level2name = N'F_OperateDescription'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作类型描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Log_Module'
, @level2type = 'COLUMN', @level2name = N'F_OperateDescription'
GO

-- ----------------------------
-- Records of Sys_Log_Module
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Sys_Log_Module] ON
GO
SET IDENTITY_INSERT [dbo].[Sys_Log_Module] OFF
GO

-- ----------------------------
-- Table structure for Sys_Module
-- ----------------------------
DROP TABLE [dbo].[Sys_Module]
GO
CREATE TABLE [dbo].[Sys_Module] (
[F_ModuleId] varchar(50) NULL ,
[F_ParentId] varchar(50) NULL ,
[F_FullName] varchar(50) NULL ,
[F_Icon] varchar(50) NULL ,
[F_UrlAddress] varchar(500) NULL ,
[F_Description] varchar(500) NULL ,
[F_CreatorTime] datetime NULL ,
[F_CreatorUserId] varchar(50) NULL ,
[F_LastModifyTime] datetime NULL ,
[F_LastModifyUserId] varchar(50) NULL ,
[F_DeleteTime] datetime NULL ,
[F_DeleteUserId] varchar(50) NULL ,
[F_IsExpand] int NULL ,
[F_IsActive] int NULL ,
[F_IsRoot] int NULL ,
[F_SortIndex] int NULL ,
[F_IsDelete] int NULL DEFAULT ((0)) ,
[F_Id] int NOT NULL IDENTITY(1,1) 
)


GO
DBCC CHECKIDENT(N'[dbo].[Sys_Module]', RESEED, 4)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Module', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'系统模块'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'系统模块'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Module', 
'COLUMN', N'F_ModuleId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'模块主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_ModuleId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'模块主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_ModuleId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Module', 
'COLUMN', N'F_ParentId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'父级'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_ParentId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'父级'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_ParentId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Module', 
'COLUMN', N'F_FullName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_FullName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_FullName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Module', 
'COLUMN', N'F_Icon')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'图标'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_Icon'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'图标'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_Icon'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Module', 
'COLUMN', N'F_UrlAddress')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'链接'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_UrlAddress'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'链接'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_UrlAddress'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Module', 
'COLUMN', N'F_Description')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_Description'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_Description'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Module', 
'COLUMN', N'F_CreatorTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_CreatorTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_CreatorTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Module', 
'COLUMN', N'F_CreatorUserId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建用户主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_CreatorUserId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建用户主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_CreatorUserId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Module', 
'COLUMN', N'F_LastModifyTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后修改时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_LastModifyTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后修改时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_LastModifyTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Module', 
'COLUMN', N'F_LastModifyUserId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后修改用户'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_LastModifyUserId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后修改用户'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_LastModifyUserId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Module', 
'COLUMN', N'F_DeleteTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'删除时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_DeleteTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'删除时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_DeleteTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Module', 
'COLUMN', N'F_DeleteUserId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'删除用户'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_DeleteUserId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'删除用户'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_DeleteUserId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Module', 
'COLUMN', N'F_IsExpand')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'默认是否展开'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_IsExpand'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'默认是否展开'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_IsExpand'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Module', 
'COLUMN', N'F_IsActive')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否可用（1可用，0不可用）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_IsActive'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否可用（1可用，0不可用）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_IsActive'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Module', 
'COLUMN', N'F_IsRoot')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'判断根节点（1是、0否）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_IsRoot'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'判断根节点（1是、0否）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_IsRoot'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Module', 
'COLUMN', N'F_SortIndex')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'排序索引'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_SortIndex'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'排序索引'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_SortIndex'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Module', 
'COLUMN', N'F_IsDelete')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否被删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_IsDelete'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否被删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Module'
, @level2type = 'COLUMN', @level2name = N'F_IsDelete'
GO

-- ----------------------------
-- Records of Sys_Module
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Sys_Module] ON
GO
INSERT INTO [dbo].[Sys_Module] ([F_ModuleId], [F_ParentId], [F_FullName], [F_Icon], [F_UrlAddress], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_IsExpand], [F_IsActive], [F_IsRoot], [F_SortIndex], [F_IsDelete], [F_Id]) VALUES (N'163DA347-887C-4C91-8298-EB00FFBFEC84', N'91be873e-ccb7-434f-9a3b-d312d6d5798a', N'菜单管理', N'fa fa-gears', null, null, null, null, null, null, null, null, null, N'1', N'0', N'0', N'0', N'3')
GO
GO
INSERT INTO [dbo].[Sys_Module] ([F_ModuleId], [F_ParentId], [F_FullName], [F_Icon], [F_UrlAddress], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_IsExpand], [F_IsActive], [F_IsRoot], [F_SortIndex], [F_IsDelete], [F_Id]) VALUES (N'91be873e-ccb7-434f-9a3b-d312d6d5798a', N'', N'系统管理', N'fa fa-gears', null, null, null, null, N'2017-04-26 16:35:07.450', N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null, N'1', N'1', N'1', N'0', N'0', N'1')
GO
GO
INSERT INTO [dbo].[Sys_Module] ([F_ModuleId], [F_ParentId], [F_FullName], [F_Icon], [F_UrlAddress], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_IsExpand], [F_IsActive], [F_IsRoot], [F_SortIndex], [F_IsDelete], [F_Id]) VALUES (N'E29FCBA7-F848-4A8B-BC41-A3C668A9005D', N'91be873e-ccb7-434f-9a3b-d312d6d5798a', N'日志管理', N'fa fa-gears', null, null, null, null, null, null, null, null, null, N'1', N'0', N'1', N'0', N'4')
GO
GO
SET IDENTITY_INSERT [dbo].[Sys_Module] OFF
GO

-- ----------------------------
-- Table structure for Sys_Role
-- ----------------------------
DROP TABLE [dbo].[Sys_Role]
GO
CREATE TABLE [dbo].[Sys_Role] (
[F_RoleId] varchar(255) NULL ,
[F_Name] varchar(255) NULL ,
[F_Decription] varchar(255) NULL ,
[F_Id] int NOT NULL IDENTITY(1,1) 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Role', 
'COLUMN', N'F_RoleId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'权限Id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Role'
, @level2type = 'COLUMN', @level2name = N'F_RoleId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'权限Id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Role'
, @level2type = 'COLUMN', @level2name = N'F_RoleId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Role', 
'COLUMN', N'F_Name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'权限名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Role'
, @level2type = 'COLUMN', @level2name = N'F_Name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'权限名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Role'
, @level2type = 'COLUMN', @level2name = N'F_Name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Role', 
'COLUMN', N'F_Decription')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Role'
, @level2type = 'COLUMN', @level2name = N'F_Decription'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Role'
, @level2type = 'COLUMN', @level2name = N'F_Decription'
GO

-- ----------------------------
-- Records of Sys_Role
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Sys_Role] ON
GO
SET IDENTITY_INSERT [dbo].[Sys_Role] OFF
GO

-- ----------------------------
-- Table structure for Sys_RoleAuthorize
-- ----------------------------
DROP TABLE [dbo].[Sys_RoleAuthorize]
GO
CREATE TABLE [dbo].[Sys_RoleAuthorize] (
[F_RoleId] varchar(50) NOT NULL ,
[F_ModuleId] varchar(50) NOT NULL ,
[F_Id] int NOT NULL IDENTITY(1,1) 
)


GO
DBCC CHECKIDENT(N'[dbo].[Sys_RoleAuthorize]', RESEED, 1003)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_RoleAuthorize', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色授权表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_RoleAuthorize'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色授权表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_RoleAuthorize'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_RoleAuthorize', 
'COLUMN', N'F_RoleId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色Id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_RoleAuthorize'
, @level2type = 'COLUMN', @level2name = N'F_RoleId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色Id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_RoleAuthorize'
, @level2type = 'COLUMN', @level2name = N'F_RoleId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_RoleAuthorize', 
'COLUMN', N'F_ModuleId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'模块Id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_RoleAuthorize'
, @level2type = 'COLUMN', @level2name = N'F_ModuleId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'模块Id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_RoleAuthorize'
, @level2type = 'COLUMN', @level2name = N'F_ModuleId'
GO

-- ----------------------------
-- Records of Sys_RoleAuthorize
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Sys_RoleAuthorize] ON
GO
INSERT INTO [dbo].[Sys_RoleAuthorize] ([F_RoleId], [F_ModuleId], [F_Id]) VALUES (N'ccfcea25-cab8-42e7-aee3-61663d89ba93', N'91be873e-ccb7-434f-9a3b-d312d6d5798a', N'1')
GO
GO
INSERT INTO [dbo].[Sys_RoleAuthorize] ([F_RoleId], [F_ModuleId], [F_Id]) VALUES (N'ccfcea25-cab8-42e7-aee3-61663d89ba93', N'163DA347-887C-4C91-8298-EB00FFBFEC84', N'2')
GO
GO
INSERT INTO [dbo].[Sys_RoleAuthorize] ([F_RoleId], [F_ModuleId], [F_Id]) VALUES (N'ccfcea25-cab8-42e7-aee3-61663d89ba93', N'E29FCBA7-F848-4A8B-BC41-A3C668A9005D', N'3')
GO
GO
SET IDENTITY_INSERT [dbo].[Sys_RoleAuthorize] OFF
GO

-- ----------------------------
-- Table structure for Sys_UserLogon
-- ----------------------------
DROP TABLE [dbo].[Sys_UserLogon]
GO
CREATE TABLE [dbo].[Sys_UserLogon] (
[F_LogonId] uniqueidentifier NULL DEFAULT (newid()) ,
[F_Account] varchar(255) NULL DEFAULT (' ') ,
[F_Password] varchar(255) NULL DEFAULT (' ') ,
[F_Name] varchar(255) NULL DEFAULT (' ') ,
[F_CreateTime] datetime NULL DEFAULT (getdate()) ,
[F_RoleId] varchar(255) NULL ,
[F_Id] int NOT NULL IDENTITY(1,1) 
)


GO
DBCC CHECKIDENT(N'[dbo].[Sys_UserLogon]', RESEED, 1001)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_UserLogon', 
'COLUMN', N'F_LogonId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户标识主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserLogon'
, @level2type = 'COLUMN', @level2name = N'F_LogonId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户标识主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserLogon'
, @level2type = 'COLUMN', @level2name = N'F_LogonId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_UserLogon', 
'COLUMN', N'F_Account')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'账号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserLogon'
, @level2type = 'COLUMN', @level2name = N'F_Account'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'账号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserLogon'
, @level2type = 'COLUMN', @level2name = N'F_Account'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_UserLogon', 
'COLUMN', N'F_Password')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'密码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserLogon'
, @level2type = 'COLUMN', @level2name = N'F_Password'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'密码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserLogon'
, @level2type = 'COLUMN', @level2name = N'F_Password'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_UserLogon', 
'COLUMN', N'F_Name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserLogon'
, @level2type = 'COLUMN', @level2name = N'F_Name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserLogon'
, @level2type = 'COLUMN', @level2name = N'F_Name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_UserLogon', 
'COLUMN', N'F_CreateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserLogon'
, @level2type = 'COLUMN', @level2name = N'F_CreateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserLogon'
, @level2type = 'COLUMN', @level2name = N'F_CreateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_UserLogon', 
'COLUMN', N'F_RoleId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'权限Id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserLogon'
, @level2type = 'COLUMN', @level2name = N'F_RoleId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'权限Id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserLogon'
, @level2type = 'COLUMN', @level2name = N'F_RoleId'
GO

-- ----------------------------
-- Records of Sys_UserLogon
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Sys_UserLogon] ON
GO
INSERT INTO [dbo].[Sys_UserLogon] ([F_LogonId], [F_Account], [F_Password], [F_Name], [F_CreateTime], [F_RoleId], [F_Id]) VALUES (N'9F0B8029-15A3-4227-80AA-D1C646A31120', N'admin', N'admin', N'系统管理员', N'2017-05-02 17:03:49.000', N'ccfcea25-cab8-42e7-aee3-61663d89ba93', N'1')
GO
GO
INSERT INTO [dbo].[Sys_UserLogon] ([F_LogonId], [F_Account], [F_Password], [F_Name], [F_CreateTime], [F_RoleId], [F_Id]) VALUES (N'9F0B8029-15A3-4227-80AA-D1C646A31121', N'test', N'test', N'数据员', N'2017-06-15 20:05:57.193', N'ccfcea25-cab8-42e7-aee3-61663d89ba93', N'2')
GO
GO
SET IDENTITY_INSERT [dbo].[Sys_UserLogon] OFF
GO

-- ----------------------------
-- Indexes structure for table Sys_Log_ItemOperate
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Sys_Log_ItemOperate
-- ----------------------------
ALTER TABLE [dbo].[Sys_Log_ItemOperate] ADD PRIMARY KEY ([F_Id])
GO

-- ----------------------------
-- Indexes structure for table Sys_Log_Logon
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Sys_Log_Logon
-- ----------------------------
ALTER TABLE [dbo].[Sys_Log_Logon] ADD PRIMARY KEY NONCLUSTERED ([F_Id])
GO

-- ----------------------------
-- Indexes structure for table Sys_Log_Module
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Sys_Log_Module
-- ----------------------------
ALTER TABLE [dbo].[Sys_Log_Module] ADD PRIMARY KEY NONCLUSTERED ([F_Id])
GO

-- ----------------------------
-- Indexes structure for table Sys_Module
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Sys_Module
-- ----------------------------
ALTER TABLE [dbo].[Sys_Module] ADD PRIMARY KEY NONCLUSTERED ([F_Id])
GO

-- ----------------------------
-- Indexes structure for table Sys_Role
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Sys_Role
-- ----------------------------
ALTER TABLE [dbo].[Sys_Role] ADD PRIMARY KEY ([F_Id])
GO

-- ----------------------------
-- Indexes structure for table Sys_RoleAuthorize
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Sys_RoleAuthorize
-- ----------------------------
ALTER TABLE [dbo].[Sys_RoleAuthorize] ADD PRIMARY KEY NONCLUSTERED ([F_Id])
GO

-- ----------------------------
-- Indexes structure for table Sys_UserLogon
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Sys_UserLogon
-- ----------------------------
ALTER TABLE [dbo].[Sys_UserLogon] ADD PRIMARY KEY ([F_Id])
GO
