/*======================================================*/
/*  Created in Nov 2018                                 */
/*  P2 2018 Dec Semester					            */
/*  Diploma in IT/FI                                    */
/*                                                      */
/*  Database Script for setting up the database         */
/*  required for P2 Assignment.                        */
/*======================================================*/

--drop database PurpleProject_Portfolio

Create Database PurpleProject_Portfolio
GO

Use PurpleProject_Portfolio
GO

/***************************************************************/
/***           Delete tables before creating                 ***/
/***************************************************************/

/* Table: dbo.Feedback */
if exists (select * from sysobjects 
  where id = object_id('dbo.Feedback') and sysstat & 0xf = 3)
  drop table dbo.Feedback
GO

/* Table: dbo.Elder */
if exists (select * from sysobjects 
  where id = object_id('dbo.Elder') and sysstat & 0xf = 3)
  drop table dbo.Elder
GO

/* Table: dbo.Volunteer */
if exists (select * from sysobjects 
  where id = object_id('dbo.Volunteer') and sysstat & 0xf = 3)
  drop table dbo.Volunteer
GO

/* Table: dbo.Coordinator */
if exists (select * from sysobjects 
  where id = object_id('dbo.Coordinator') and sysstat & 0xf = 3)
  drop table dbo.Coordinator
GO

/* Table: dbo.Vendor */
if exists (select * from sysobjects 
  where id = object_id('dbo.Vendor') and sysstat & 0xf = 3)
  drop table dbo.Vendor
GO


/***************************************************************/
/***                     Creating tables                     ***/
/***************************************************************/


/* Table: dbo.Vendor */
CREATE TABLE dbo.Vendor
(
  VendorID				int IDENTITY (1,1),
  [Name]			    varchar(50) 	NOT NULL,
  EmailAddr		    	varchar(50)  	NOT NULL,
  [Password]		    varchar(255)  	NOT NULL DEFAULT ('p@55Vendor'),
  CONSTRAINT PK_Vendor PRIMARY KEY NONCLUSTERED (VendorID)
)
GO

/* Table: dbo.Coordinator */
CREATE TABLE dbo.Coordinator
(
  CoordinatorID			int IDENTITY (1,1),
  [Name]			    varchar(50) 	NOT NULL,
  EmailAddr		    	varchar(50)  	NOT NULL,
  [Password]		    varchar(255)  	NOT NULL DEFAULT ('p@55Coordi'),
  CONSTRAINT PK_Coordinator PRIMARY KEY NONCLUSTERED (CoordinatorID)
)
GO

/* Table: dbo.Volunteer */
CREATE TABLE dbo.Volunteer
(
  VolunteerID 			int IDENTITY (1,1),
  [Name]				varchar(50) 	NOT NULL,
  EmailAddr		    	varchar(50)  	NOT NULL,
  [Password]			varchar(255)  	NOT NULL DEFAULT ('p@55Volunteer'),
  [ContactNo] 			char (10) 		NULL,
  [Day]					char(3)			NOT NULL DEFAULT ('MON') CHECK ([Day] IN ('MON','TUE','WED','THU','FRI')),
  DateJoin				smalldatetime 	NOT NULL DEFAULT (GETDATE()) 
						CHECK (DateJoin <= GETDATE()),
  CoordinatorID 		int  			NOT NULL,
  CONSTRAINT PK_Volunteer PRIMARY KEY NONCLUSTERED (VolunteerID),
  CONSTRAINT FK_Volunteer_CoordinatorID FOREIGN KEY (CoordinatorID) 
  REFERENCES dbo.Coordinator(CoordinatorID)
)
GO

/* Table: dbo.Elder */
CREATE TABLE dbo.Elder
(
  ElderID 				int IDENTITY (1,1),
  SerialNo				varchar(4)		NOT NULL,
  [Name]				varchar(50) 	NOT NULL,
  [ElderAddress]		varchar(3000) 	NULL,
  [ContactNo] 			char (10) 		NULL,
  [Dietary]				varchar(3000) 	NULL,
  [HealthCondition]		varchar(255) 	NULL,
  [Meal]				varchar (10)	NOT NULL Default ('Lunch') CHECK ([Meal] IN ('Lunch','Dinner')),
  [Prepare]				varchar(30)			NOT NULL DEFAULT ('Still Progressing') CHECK ([Prepare] IN ('Completed','Still Progressing')),
  [Status]				char(1)			NOT NULL DEFAULT ('N') CHECK ([Status] IN ('Y','N')), 
  VolunteerID 			int  			NOT NULL,
  CONSTRAINT PK_Elder PRIMARY KEY NONCLUSTERED (ElderID),
  CONSTRAINT FK_Elder_VolunteerID FOREIGN KEY (VolunteerID) 
  REFERENCES dbo.Volunteer(VolunteerID)
)
GO

CREATE TABLE dbo.Feedback
(
	FeedbackID			int IDENTITY(1,1),
	VolunteerID			int				NOT NULL,
	ElderID				int				NOT NULL,
	[Feedback]			varchar(3000)	NULL,
	DateCreated			datetime		NOT NULL DEFAULT(getdate()),
	CONSTRAINT PK_Feedback PRIMARY KEY NONCLUSTERED (FeedbackID),
	CONSTRAINT FK_Feedback_VolunteerID FOREIGN KEY (VolunteerID)
	REFERENCES dbo.Volunteer(VolunteerID),
	CONSTRAINT FK_Feedback_ElderID FOREIGN KEY (ElderID)
	REFERENCES dbo.Elder(ElderID)
)



SET IDENTITY_INSERT [dbo].[Vendor] ON 
INSERT [dbo].[Vendor] ([VendorID], [Name], [EmailAddr],[Password]) VALUES (1, 'Peter Ghim', 'Peter_Ghim@ap.edu.sg', 'p@55Vendor')
SET IDENTITY_INSERT [dbo].[Vendor] OFF

SET IDENTITY_INSERT [dbo].Coordinator ON 
INSERT [dbo].[Coordinator] ([CoordinatorID], [Name], [EmailAddr],[Password]) VALUES (1, 'Jennifier Ghim', 'Jennifier_Ghim@ap.edu.sg', 'p@55Coordi')
INSERT [dbo].[Coordinator] ([CoordinatorID], [Name], [EmailAddr],[Password]) VALUES (2, 'Brandon Goh', 'Brandon_Goh@ap.edu.sg', 'p@55Coordi')
SET IDENTITY_INSERT [dbo].[Coordinator] OFF

SET IDENTITY_INSERT [dbo].[Volunteer] ON
INSERT [dbo].[Volunteer]([VolunteerID],[Name],[EmailAddr],[Password],[ContactNo],[Day],[DateJoin],[CoordinatorID]) VALUES (1,'Kelly Tan','Kelly_Tan@pp.edu.sg','p@55Volunteer','98989898','MON','30-Apr-2017',1)
INSERT [dbo].[Volunteer]([VolunteerID],[Name],[EmailAddr],[Password],[ContactNo],[Day],[DateJoin],[CoordinatorID]) VALUES (2,'Ahmad Sarah','Ahmad_Sarah@pp.edu.sg','p@55Volunteer','98765432','TUE','10-Oct-2015',2)
INSERT [dbo].[Volunteer]([VolunteerID],[Name],[EmailAddr],[Password],[ContactNo],[Day],[DateJoin],[CoordinatorID]) VALUES (3,'Nurul Fatin','Nurul_Fatin@pp.edu.sg','p@55Volunteer','91234567','WED','20-May-2016',1)
SET IDENTITY_INSERT [dbo].[Volunteer] OFF

SET IDENTITY_INSERT [dbo].[Elder] ON
INSERT [dbo].[Elder]([ElderID],[SerialNo],[Name],[ElderAddress],[ContactNo],[Dietary],[HealthCondition],[Meal],[Prepare],[Status],[VolunteerID]) VALUES (1, 'S001','Sandy Kee','BLK 123 Clementi Ave 1','65553789','Vegan','High Cholesterol','Lunch','Completed','N',1)
INSERT [dbo].[Elder]([ElderID],[SerialNo],[Name],[ElderAddress],[ContactNo],[Dietary],[HealthCondition],[Meal],[Prepare],[Status],[VolunteerID]) VALUES (2, 'S002','Felicia Tan','BLK 890 Jurong West Ave 1','64443789','less Oil','High Blood Pressure','Lunch','Still Progressing','N',2)
INSERT [dbo].[Elder]([ElderID],[SerialNo],[Name],[ElderAddress],[ContactNo],[Dietary],[HealthCondition],[Meal],[Prepare],[Status],[VolunteerID]) VALUES (3, 'S003','Adam Tan','BLK 300 Clementi Ave 5','65553789','Halal','arthritis','Lunch','Completed','N',1)
INSERT [dbo].[Elder]([ElderID],[SerialNo],[Name],[ElderAddress],[ContactNo],[Dietary],[HealthCondition],[Meal],[Prepare],[Status],[VolunteerID]) VALUES (4, 'S004','Ng Weng','BLK 222 Yew Tee Ave 1','61233789','No Seafood','Dementia','Lunch','Completed','N',3)
SET IDENTITY_INSERT [dbo].[Elder] OFF


SELECT * FROM Vendor
SELECT * FROM Volunteer
SELECT * FROM Elder
SELECT * FROM Coordinator
select * from Feedback

SELECT Prepare from Elder WHERE VolunteerID = 1