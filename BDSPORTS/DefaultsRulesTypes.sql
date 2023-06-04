--DEFAULT
CREATE DEFAULT [dbo].[D_T_bool_0]
AS
0;

GO

CREATE DEFAULT [dbo].[D_T_bool_1] 
AS
1;

GO

CREATE DEFAULT [dbo].[D_T_date] 
AS
'00000000';

GO

CREATE DEFAULT [dbo].[D_T_entiers] 
AS
0;

GO

CREATE DEFAULT [dbo].[D_T_maj] 
AS
GetDate();

GO

CREATE DEFAULT [dbo].[D_T_timestamp] 
AS
'0000-00-00T00:00:00+00:00';

GO

--RULES
CREATE RULE [dbo].[R_T_bool_0] 
AS
(@column IS NULL
        OR (@column BETWEEN 0 AND 1));

GO

CREATE RULE [dbo].[R_T_bool_1] 
AS
(@column IS NULL
        OR (@column BETWEEN 0 AND 1));

GO

CREATE RULE [dbo].[R_T_naturels] 
AS
(@column IS NULL
        OR (@column >= 1));

GO

CREATE RULE [dbo].[R_T_naturels0] 
AS
(@column IS NULL
        OR (@column >= 0));

GO

--TYPES
CREATE TYPE [dbo].[T_bool_0] FROM [bit] NOT NULL
GO

CREATE TYPE [dbo].[T_bool_1] FROM [bit] NOT NULL
GO

CREATE TYPE [dbo].[T_code2] FROM [nchar](2) NOT NULL
GO

CREATE TYPE [dbo].[T_code3] FROM [nchar](3) NOT NULL
GO

CREATE TYPE [dbo].[T_code5] FROM [nchar](5) NOT NULL
GO

CREATE TYPE [dbo].[T_date] FROM [nchar](8) NOT NULL
GO

CREATE TYPE [dbo].[T_entiers] FROM [int] NOT NULL
GO

CREATE TYPE [dbo].[T_ident] FROM [int] NOT NULL
GO

CREATE TYPE [dbo].[T_label] FROM [nvarchar](64) NOT NULL
GO

CREATE TYPE [dbo].[T_maj] FROM [smalldatetime] NOT NULL 
GO

CREATE TYPE [dbo].[T_name] FROM [nvarchar](32) NOT NULL
GO

CREATE TYPE [dbo].[T_reels] FROM [real] NOT NULL
GO

CREATE TYPE [dbo].[T_float] FROM [float] NOT NULL
GO

CREATE TYPE [dbo].[T_remark] FROM [nvarchar](256) NOT NULL
GO

CREATE TYPE [dbo].[T_timestamp] FROM [nchar](25) NOT NULL
GO
