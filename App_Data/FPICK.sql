/*
Navicat SQL Server Data Transfer

Source Server         : FPICK
Source Server Version : 100000
Source Host           : localhost:1433
Source Database       : FPICK
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 100000
File Encoding         : 65001

Date: 2015-03-21 10:15:12
*/


-- ----------------------------
-- Table structure for details
-- ----------------------------
DROP TABLE [details]
GO
CREATE TABLE [details] (
[UID] varchar(100) NOT NULL ,
[UserName] varchar(30) NOT NULL ,
[SEX] char(6) NOT NULL ,
[DOB] varchar(255) NULL ,
[PWD] varchar(255) NOT NULL ,
[PIC] text NULL ,
[BLOCKSTATUS] int NULL 
)


GO

-- ----------------------------
-- Records of details
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [details] ([UID], [UserName], [SEX], [DOB], [PWD], [PIC], [BLOCKSTATUS]) VALUES (N'avi@avi.com', N'Avithesh', N'male  ', N'19/9/1994', N'ÛöpÚ}Àz<`€7/ŸºÔ†²„', N'7566c057d5548ad32c9d662b75d5e08b.jpg', N'0'), (N'dj.kantan11@gmail.com', N'manikantan', N'male  ', N'27/10/1994', N'¸¡H½©Ò\`D!Ü‰›ÕÑ,d»»', N'cd42b47c6b672e4f6fc942ab56e5f901-pj8kep.jpg', N'0'), (N'harsha@gmail.com', N'Harsha', N'male  ', N'7/3/1994', N'ÚÞþÉûcZ„aÆ…', N'SAM_0141.JPG', N'0'), (N'mani@mani.com', N'mani', N'male  ', N'27/10/1990', N' ŒzÐ ¦{Zº	Ù2lšêæY„', N'mani.jpg', N'1'), (N'monisha@gmail.com', N'monisha', N'female', N'19/4/2000', N'%”z‘É_újŠ{åJÓgkÀ¿‡c', N'skeletons_in_my_heart_by_cute_and_bright-d2z294h.jpg', N'0'), (N'muthu@gmail.com', N'Muthu', N'male  ', N'30/4/1995', N'QX¸¶Ý+XÙñ}ã:´íDXª', N'M_n.jpg', N'0')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for Flist
-- ----------------------------
DROP TABLE [Flist]
GO
CREATE TABLE [Flist] (
[UID] varchar(MAX) NULL ,
[UID2] varchar(MAX) NULL ,
[Fstatus] int NULL ,
[PIC] text NULL 
)


GO

-- ----------------------------
-- Records of Flist
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [Flist] ([UID], [UID2], [Fstatus], [PIC]) VALUES (N'dj.kantan11@gmail.com', N'monisha', N'0', N'~/pic/skeletons_in_my_heart_by_cute_and_bright-d2z294h.jpg'), (N'dj.kantan11@gmail.com', N'monisha', N'0', N'~/pic/skeletons_in_my_heart_by_cute_and_bright-d2z294h.jpg'), (N'avi@avi.com', N'Harsha', N'0', N'~/pic/SAM_0141.JPG'), (N'dj.kantan11@gmail.com', N'monisha', N'0', N'~/pic/skeletons_in_my_heart_by_cute_and_bright-d2z294h.jpg'), (N'dj.kantan11@gmail.com', N'Harsha', N'0', N'~/pic/SAM_0141.JPG'), (N'dj.kantan11@gmail.com', N'Harsha', N'0', N'~/pic/SAM_0141.JPG'), (N'dj.kantan11@gmail.com', N'Harsha', N'0', N'~/pic/SAM_0141.JPG'), (N'avi@avi.com', N'monisha', N'0', N'~/pic/skeletons_in_my_heart_by_cute_and_bright-d2z294h.jpg'), (N'dj.kantan11@gmail.com', N'Avithesh', N'0', N'~/pic/7566c057d5548ad32c9d662b75d5e08b.jpg'), (N'dj.kantan11@gmail.com', N'Avithesh', N'0', N'~/pic/7566c057d5548ad32c9d662b75d5e08b.jpg'), (N'avi@avi.com', N'manikantan', N'0', N'~/pic/cd42b47c6b672e4f6fc942ab56e5f901-pj8kep.jpg'), (N'dj.kantan11@gmail.com', N'Avithesh', N'0', N'~/pic/7566c057d5548ad32c9d662b75d5e08b.jpg')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for img
-- ----------------------------
DROP TABLE [img]
GO
CREATE TABLE [img] (
[UID] varchar(MAX) NOT NULL ,
[IMGPATH] text NOT NULL ,
[UNAME] varchar(255) NOT NULL ,
[PTIME] datetime2(7) NOT NULL ,
[PIC] text NULL 
)


GO

-- ----------------------------
-- Records of img
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [img] ([UID], [IMGPATH], [UNAME], [PTIME], [PIC]) VALUES (N'avi@avi.com', N'~/Images/loveq.jpg', N'Avithesh', N'2015-03-11 18:00:18.9830000', N'~/pic/buddha-quotes-on-happiness.jpg'), (N'avi@avi.com', N'~/Images/love_in_her_eyes_by_cute_and_bright-d2z2m2n.jpg', N'Avithesh', N'2015-03-11 18:00:32.7430000', N'~/pic/buddha-quotes-on-happiness.jpg'), (N'dj.kantan11@gmail.com', N'~/Images/00e4d02c6a9e6c44ed9043ba65cec766.jpg', N'manikantan', N'2015-03-11 20:30:48.3170000', N'~/pic/cd42b47c6b672e4f6fc942ab56e5f901-pj8kep.jpg'), (N'dj.kantan11@gmail.com', N'~/Images/blue_1967_fastback_by_americanmuscle-d88ci38.jpg', N'manikantan', N'2015-03-11 20:33:30.1230000', N'~/pic/cd42b47c6b672e4f6fc942ab56e5f901-pj8kep.jpg'), (N'monisha@gmail.com', N'~/Images/pentax_no_1_by_fair_uh_grrr-d4lk1br.jpg', N'monisha', N'2015-03-11 20:45:40.6600000', N'~/pic/skeletons_in_my_heart_by_cute_and_bright-d2z294h.jpg'), (N'monisha@gmail.com', N'~/Images/untitled_by_eliseenchanted-d85fzm7.jpg', N'monisha', N'2015-03-11 20:46:04.8230000', N'~/pic/skeletons_in_my_heart_by_cute_and_bright-d2z294h.jpg'), (N'dj.kantan11@gmail.com', N'~/Images/here_comes_the_sun_by_xochitlcumanda-d392pu5.jpg', N'manikantan', N'2015-03-11 20:33:57.9870000', N'~/pic/cd42b47c6b672e4f6fc942ab56e5f901-pj8kep.jpg')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for POST
-- ----------------------------
DROP TABLE [POST]
GO
CREATE TABLE [POST] (
[PIC] text NOT NULL ,
[UserName] varchar(MAX) NOT NULL ,
[COMMENT] text NOT NULL ,
[CTIME] datetime NULL 
)


GO

-- ----------------------------
-- Records of POST
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [POST] ([PIC], [UserName], [COMMENT], [CTIME]) VALUES (N'~/pic/7566c057d5548ad32c9d662b75d5e08b.jpg', N'Avithesh', N'HIIIIII :)', N'2015-03-12 10:12:40.917'), (N'~/pic/cd42b47c6b672e4f6fc942ab56e5f901-pj8kep.jpg', N'manikantan', N'GUD AFTANUN :)', N'2015-03-12 11:39:20.617'), (N'~/pic/cd42b47c6b672e4f6fc942ab56e5f901-pj8kep.jpg', N'manikantan', N'hi SDMITZZZZ!!!', N'2015-03-13 10:41:53.753'), (N'~/pic/cd42b47c6b672e4f6fc942ab56e5f901-pj8kep.jpg', N'manikantan', N'GUD AFTANUN :)', N'2015-03-13 14:29:48.887'), (N'~/pic/cd42b47c6b672e4f6fc942ab56e5f901-pj8kep.jpg', N'manikantan', N'GUD NIGHT', N'2015-03-19 20:21:09.443'), (N'~/pic/cd42b47c6b672e4f6fc942ab56e5f901-pj8kep.jpg', N'manikantan', N'gud evng', N'2015-03-11 16:25:16.513'), (N'~/pic/buddha-quotes-on-happiness.jpg', N'Avithesh', N'GUD EVNING', N'2015-03-11 18:01:01.880'), (N'~/pic/skeletons_in_my_heart_by_cute_and_bright-d2z294h.jpg', N'monisha', N'GOOD NIGHT', N'2015-03-11 20:46:31.460')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE [settings]
GO
CREATE TABLE [settings] (
[UID] varchar(255) NOT NULL ,
[WORK] varchar(255) NOT NULL ,
[PLACE] varchar(255) NOT NULL ,
[MSTATUS] varchar(255) NOT NULL ,
[PFN] varchar(255) NOT NULL 
)


GO

-- ----------------------------
-- Records of settings
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [settings] ([UID], [WORK], [PLACE], [MSTATUS], [PFN]) VALUES (N'dj.kantan11@gmail.com', N'jobless', N'mangalore', N'Single', N'student'), (N'avi@avi.com', N'CEO at FPICK', N'Kumbla', N'Complicated', N'Student')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Procedure structure for sp_alterdiagram
-- ----------------------------
DROP PROCEDURE [sp_alterdiagram]
GO

	CREATE PROCEDURE [sp_alterdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
			begin
				select @ShouldChangeUID = 1 ;
			end
		end

		-- update dds data			
		update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

		-- change owner
		if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

		-- update dds version
		if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
	
GO

-- ----------------------------
-- Procedure structure for sp_creatediagram
-- ----------------------------
DROP PROCEDURE [sp_creatediagram]
GO

	CREATE PROCEDURE [sp_creatediagram]
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
		-- next 2 line only for test, will be removed after define name unique
		if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
	
GO

-- ----------------------------
-- Procedure structure for sp_dropdiagram
-- ----------------------------
DROP PROCEDURE [sp_dropdiagram]
GO

	CREATE PROCEDURE [sp_dropdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
	
GO

-- ----------------------------
-- Procedure structure for sp_helpdiagramdefinition
-- ----------------------------
DROP PROCEDURE [sp_helpdiagramdefinition]
GO

	CREATE PROCEDURE [sp_helpdiagramdefinition]
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
	
GO

-- ----------------------------
-- Procedure structure for sp_helpdiagrams
-- ----------------------------
DROP PROCEDURE [sp_helpdiagrams]
GO

	CREATE PROCEDURE [sp_helpdiagrams]
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
	
GO

-- ----------------------------
-- Procedure structure for sp_renamediagram
-- ----------------------------
DROP PROCEDURE [sp_renamediagram]
GO

	CREATE PROCEDURE [sp_renamediagram]
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
	
GO

-- ----------------------------
-- Procedure structure for sp_upgraddiagrams
-- ----------------------------
DROP PROCEDURE [sp_upgraddiagrams]
GO

	CREATE PROCEDURE [sp_upgraddiagrams]
	AS
	BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,	-- we may change it to varbinary(85)
			diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		/* Add this if we need to have some form of extended properties for diagrams */
		/*
		IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
		BEGIN
			CREATE TABLE dbo.sysdiagram_properties
			(
				diagram_id int,
				name sysname,
				value varbinary(max) NOT NULL
			)
		END
		*/

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
				0,							-- zero for old format, dgdef.[version],
				dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
	
GO

-- ----------------------------
-- Function structure for fn_diagramobjects
-- ----------------------------
DROP FUNCTION [fn_diagramobjects]
GO

	CREATE FUNCTION [fn_diagramobjects]() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
	
GO

-- ----------------------------
-- Indexes structure for table details
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table details
-- ----------------------------
ALTER TABLE [details] ADD PRIMARY KEY ([UID])
GO
