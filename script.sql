USE [master]਍䜀伀ഀഀ
/****** Object:  Database [GESTION]    Script Date: 12/05/2025 20:20:44 ******/਍䌀刀䔀䄀吀䔀 䐀䄀吀䄀䈀䄀匀䔀 嬀䜀䔀匀吀䤀伀一崀ഀഀ
 CONTAINMENT = NONE਍ 伀一  倀刀䤀䴀䄀刀夀 ഀഀ
( NAME = N'GESTION_Data', FILENAME = N'C:\SQLdata\MSSQL16.SQLEXPRESS\MSSQL\DATA\GESTION.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )਍ 䰀伀䜀 伀一 ഀഀ
( NAME = N'GESTION_Log', FILENAME = N'C:\SQLdata\MSSQL16.SQLEXPRESS\MSSQL\DATA\GESTION.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)਍ 圀䤀吀䠀 䌀䄀吀䄀䰀伀䜀开䌀伀䰀䰀䄀吀䤀伀一 㴀 䐀䄀吀䄀䈀䄀匀䔀开䐀䔀䘀䄀唀䰀吀Ⰰ 䰀䔀䐀䜀䔀刀 㴀 伀䘀䘀ഀഀ
GO਍䄀䰀吀䔀刀 䐀䄀吀䄀䈀䄀匀䔀 嬀䜀䔀匀吀䤀伀一崀 匀䔀吀 䌀伀䴀倀䄀吀䤀䈀䤀䰀䤀吀夀开䰀䔀嘀䔀䰀 㴀 ㄀㘀　ഀഀ
GO਍䤀䘀 ⠀㄀ 㴀 䘀唀䰀䰀吀䔀堀吀匀䔀刀嘀䤀䌀䔀倀刀伀倀䔀刀吀夀⠀✀䤀猀䘀甀氀氀吀攀砀琀䤀渀猀琀愀氀氀攀搀✀⤀⤀ഀഀ
begin਍䔀堀䔀䌀 嬀䜀䔀匀吀䤀伀一崀⸀嬀搀戀漀崀⸀嬀猀瀀开昀甀氀氀琀攀砀琀开搀愀琀愀戀愀猀攀崀 䀀愀挀琀椀漀渀 㴀 ✀攀渀愀戀氀攀✀ഀഀ
end਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET ANSI_NULL_DEFAULT OFF ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET ANSI_NULLS OFF ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET ANSI_PADDING OFF ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET ANSI_WARNINGS OFF ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET ARITHABORT OFF ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET AUTO_CLOSE ON ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET AUTO_SHRINK OFF ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET AUTO_UPDATE_STATISTICS ON ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET CURSOR_CLOSE_ON_COMMIT OFF ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET CURSOR_DEFAULT  GLOBAL ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET CONCAT_NULL_YIELDS_NULL OFF ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET NUMERIC_ROUNDABORT OFF ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET QUOTED_IDENTIFIER OFF ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET RECURSIVE_TRIGGERS OFF ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET  ENABLE_BROKER ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET AUTO_UPDATE_STATISTICS_ASYNC OFF ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET DATE_CORRELATION_OPTIMIZATION OFF ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET TRUSTWORTHY OFF ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET ALLOW_SNAPSHOT_ISOLATION OFF ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET PARAMETERIZATION SIMPLE ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET READ_COMMITTED_SNAPSHOT OFF ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET HONOR_BROKER_PRIORITY OFF ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET RECOVERY SIMPLE ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET  MULTI_USER ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET PAGE_VERIFY CHECKSUM  ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET DB_CHAINING OFF ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET TARGET_RECOVERY_TIME = 60 SECONDS ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET DELAYED_DURABILITY = DISABLED ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET ACCELERATED_DATABASE_RECOVERY = OFF  ਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET QUERY_STORE = ON਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)਍䜀伀ഀഀ
USE [GESTION]਍䜀伀ഀഀ
/****** Object:  Table [dbo].[tbl_alumnos]    Script Date: 12/05/2025 20:20:44 ******/਍匀䔀吀 䄀一匀䤀开一唀䰀䰀匀 伀一ഀഀ
GO਍匀䔀吀 儀唀伀吀䔀䐀开䤀䐀䔀一吀䤀䘀䤀䔀刀 伀一ഀഀ
GO਍䌀刀䔀䄀吀䔀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀琀戀氀开愀氀甀洀渀漀猀崀⠀ഀഀ
	[id] [int] NOT NULL,਍ऀ嬀渀漀洀戀爀攀崀 嬀渀瘀愀爀挀栀愀爀崀⠀㄀　　⤀ 一伀吀 一唀䰀䰀Ⰰഀഀ
	[email] [nvarchar](150) NULL,਍ऀ嬀瀀愀椀猀崀 嬀椀渀琀崀 一伀吀 一唀䰀䰀Ⰰഀഀ
	[provincia] [int] NOT NULL,਍ऀ嬀猀攀砀漀崀 嬀椀渀琀崀 一伀吀 一唀䰀䰀Ⰰഀഀ
	[estado_civil] [int] NOT NULL,਍ऀ嬀挀愀爀爀攀爀愀崀 嬀椀渀琀崀 一伀吀 一唀䰀䰀Ⰰഀഀ
PRIMARY KEY CLUSTERED ਍⠀ഀഀ
	[id] ASC਍⤀圀䤀吀䠀 ⠀倀䄀䐀开䤀一䐀䔀堀 㴀 伀䘀䘀Ⰰ 匀吀䄀吀䤀匀吀䤀䌀匀开一伀刀䔀䌀伀䴀倀唀吀䔀 㴀 伀䘀䘀Ⰰ 䤀䜀一伀刀䔀开䐀唀倀开䬀䔀夀 㴀 伀䘀䘀Ⰰ 䄀䰀䰀伀圀开刀伀圀开䰀伀䌀䬀匀 㴀 伀一Ⰰ 䄀䰀䰀伀圀开倀䄀䜀䔀开䰀伀䌀䬀匀 㴀 伀一Ⰰ 伀倀吀䤀䴀䤀娀䔀开䘀伀刀开匀䔀儀唀䔀一吀䤀䄀䰀开䬀䔀夀 㴀 伀䘀䘀⤀ 伀一 嬀倀刀䤀䴀䄀刀夀崀ഀഀ
) ON [PRIMARY]਍䜀伀ഀഀ
/****** Object:  Table [dbo].[tbl_carreras]    Script Date: 12/05/2025 20:20:44 ******/਍匀䔀吀 䄀一匀䤀开一唀䰀䰀匀 伀一ഀഀ
GO਍匀䔀吀 儀唀伀吀䔀䐀开䤀䐀䔀一吀䤀䘀䤀䔀刀 伀一ഀഀ
GO਍䌀刀䔀䄀吀䔀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀琀戀氀开挀愀爀爀攀爀愀猀崀⠀ഀഀ
	[id] [int] NOT NULL,਍ऀ嬀渀漀洀戀爀攀崀 嬀渀瘀愀爀挀栀愀爀崀⠀㄀　　⤀ 一伀吀 一唀䰀䰀Ⰰഀഀ
PRIMARY KEY CLUSTERED ਍⠀ഀഀ
	[id] ASC਍⤀圀䤀吀䠀 ⠀倀䄀䐀开䤀一䐀䔀堀 㴀 伀䘀䘀Ⰰ 匀吀䄀吀䤀匀吀䤀䌀匀开一伀刀䔀䌀伀䴀倀唀吀䔀 㴀 伀䘀䘀Ⰰ 䤀䜀一伀刀䔀开䐀唀倀开䬀䔀夀 㴀 伀䘀䘀Ⰰ 䄀䰀䰀伀圀开刀伀圀开䰀伀䌀䬀匀 㴀 伀一Ⰰ 䄀䰀䰀伀圀开倀䄀䜀䔀开䰀伀䌀䬀匀 㴀 伀一Ⰰ 伀倀吀䤀䴀䤀娀䔀开䘀伀刀开匀䔀儀唀䔀一吀䤀䄀䰀开䬀䔀夀 㴀 伀䘀䘀⤀ 伀一 嬀倀刀䤀䴀䄀刀夀崀ഀഀ
) ON [PRIMARY]਍䜀伀ഀഀ
/****** Object:  Table [dbo].[tbl_estado_civil]    Script Date: 12/05/2025 20:20:44 ******/਍匀䔀吀 䄀一匀䤀开一唀䰀䰀匀 伀一ഀഀ
GO਍匀䔀吀 儀唀伀吀䔀䐀开䤀䐀䔀一吀䤀䘀䤀䔀刀 伀一ഀഀ
GO਍䌀刀䔀䄀吀䔀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀琀戀氀开攀猀琀愀搀漀开挀椀瘀椀氀崀⠀ഀഀ
	[id] [int] NOT NULL,਍ऀ嬀渀漀洀戀爀攀崀 嬀渀瘀愀爀挀栀愀爀崀⠀㔀　⤀ 一伀吀 一唀䰀䰀Ⰰഀഀ
PRIMARY KEY CLUSTERED ਍⠀ഀഀ
	[id] ASC਍⤀圀䤀吀䠀 ⠀倀䄀䐀开䤀一䐀䔀堀 㴀 伀䘀䘀Ⰰ 匀吀䄀吀䤀匀吀䤀䌀匀开一伀刀䔀䌀伀䴀倀唀吀䔀 㴀 伀䘀䘀Ⰰ 䤀䜀一伀刀䔀开䐀唀倀开䬀䔀夀 㴀 伀䘀䘀Ⰰ 䄀䰀䰀伀圀开刀伀圀开䰀伀䌀䬀匀 㴀 伀一Ⰰ 䄀䰀䰀伀圀开倀䄀䜀䔀开䰀伀䌀䬀匀 㴀 伀一Ⰰ 伀倀吀䤀䴀䤀娀䔀开䘀伀刀开匀䔀儀唀䔀一吀䤀䄀䰀开䬀䔀夀 㴀 伀䘀䘀⤀ 伀一 嬀倀刀䤀䴀䄀刀夀崀ഀഀ
) ON [PRIMARY]਍䜀伀ഀഀ
/****** Object:  Table [dbo].[tbl_materias]    Script Date: 12/05/2025 20:20:44 ******/਍匀䔀吀 䄀一匀䤀开一唀䰀䰀匀 伀一ഀഀ
GO਍匀䔀吀 儀唀伀吀䔀䐀开䤀䐀䔀一吀䤀䘀䤀䔀刀 伀一ഀഀ
GO਍䌀刀䔀䄀吀䔀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀琀戀氀开洀愀琀攀爀椀愀猀崀⠀ഀഀ
	[id] [int] NOT NULL,਍ऀ嬀渀漀洀戀爀攀崀 嬀渀瘀愀爀挀栀愀爀崀⠀㄀　　⤀ 一伀吀 一唀䰀䰀Ⰰഀഀ
PRIMARY KEY CLUSTERED ਍⠀ഀഀ
	[id] ASC਍⤀圀䤀吀䠀 ⠀倀䄀䐀开䤀一䐀䔀堀 㴀 伀䘀䘀Ⰰ 匀吀䄀吀䤀匀吀䤀䌀匀开一伀刀䔀䌀伀䴀倀唀吀䔀 㴀 伀䘀䘀Ⰰ 䤀䜀一伀刀䔀开䐀唀倀开䬀䔀夀 㴀 伀䘀䘀Ⰰ 䄀䰀䰀伀圀开刀伀圀开䰀伀䌀䬀匀 㴀 伀一Ⰰ 䄀䰀䰀伀圀开倀䄀䜀䔀开䰀伀䌀䬀匀 㴀 伀一Ⰰ 伀倀吀䤀䴀䤀娀䔀开䘀伀刀开匀䔀儀唀䔀一吀䤀䄀䰀开䬀䔀夀 㴀 伀䘀䘀⤀ 伀一 嬀倀刀䤀䴀䄀刀夀崀ഀഀ
) ON [PRIMARY]਍䜀伀ഀഀ
/****** Object:  Table [dbo].[tbl_materias_cursadas]    Script Date: 12/05/2025 20:20:44 ******/਍匀䔀吀 䄀一匀䤀开一唀䰀䰀匀 伀一ഀഀ
GO਍匀䔀吀 儀唀伀吀䔀䐀开䤀䐀䔀一吀䤀䘀䤀䔀刀 伀一ഀഀ
GO਍䌀刀䔀䄀吀䔀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀琀戀氀开洀愀琀攀爀椀愀猀开挀甀爀猀愀搀愀猀崀⠀ഀഀ
	[id] [int] NOT NULL,਍ऀ嬀愀氀甀洀渀漀崀 嬀椀渀琀崀 一伀吀 一唀䰀䰀Ⰰഀഀ
	[carrera] [int] NOT NULL,਍ऀ嬀洀愀琀攀爀椀愀崀 嬀椀渀琀崀 一伀吀 一唀䰀䰀Ⰰഀഀ
	[fecha] [date] NOT NULL,਍倀刀䤀䴀䄀刀夀 䬀䔀夀 䌀䰀唀匀吀䔀刀䔀䐀 ഀഀ
(਍ऀ嬀椀搀崀 䄀匀䌀ഀഀ
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]਍⤀ 伀一 嬀倀刀䤀䴀䄀刀夀崀ഀഀ
GO਍⼀⨀⨀⨀⨀⨀⨀ 伀戀樀攀挀琀㨀  吀愀戀氀攀 嬀搀戀漀崀⸀嬀琀戀氀开洀愀琀攀爀椀愀猀开爀攀渀搀椀搀愀猀崀    匀挀爀椀瀀琀 䐀愀琀攀㨀 ㄀㈀⼀　㔀⼀㈀　㈀㔀 ㈀　㨀㈀　㨀㐀㐀 ⨀⨀⨀⨀⨀⨀⼀ഀഀ
SET ANSI_NULLS ON਍䜀伀ഀഀ
SET QUOTED_IDENTIFIER ON਍䜀伀ഀഀ
CREATE TABLE [dbo].[tbl_materias_rendidas](਍ऀ嬀椀搀崀 嬀椀渀琀崀 一伀吀 一唀䰀䰀Ⰰഀഀ
	[alumno] [int] NOT NULL,਍ऀ嬀挀愀爀爀攀爀愀崀 嬀椀渀琀崀 一伀吀 一唀䰀䰀Ⰰഀഀ
	[materia] [int] NOT NULL,਍ऀ嬀昀攀挀栀愀崀 嬀搀愀琀攀崀 一伀吀 一唀䰀䰀Ⰰഀഀ
PRIMARY KEY CLUSTERED ਍⠀ഀഀ
	[id] ASC਍⤀圀䤀吀䠀 ⠀倀䄀䐀开䤀一䐀䔀堀 㴀 伀䘀䘀Ⰰ 匀吀䄀吀䤀匀吀䤀䌀匀开一伀刀䔀䌀伀䴀倀唀吀䔀 㴀 伀䘀䘀Ⰰ 䤀䜀一伀刀䔀开䐀唀倀开䬀䔀夀 㴀 伀䘀䘀Ⰰ 䄀䰀䰀伀圀开刀伀圀开䰀伀䌀䬀匀 㴀 伀一Ⰰ 䄀䰀䰀伀圀开倀䄀䜀䔀开䰀伀䌀䬀匀 㴀 伀一Ⰰ 伀倀吀䤀䴀䤀娀䔀开䘀伀刀开匀䔀儀唀䔀一吀䤀䄀䰀开䬀䔀夀 㴀 伀䘀䘀⤀ 伀一 嬀倀刀䤀䴀䄀刀夀崀ഀഀ
) ON [PRIMARY]਍䜀伀ഀഀ
/****** Object:  Table [dbo].[tbl_paises]    Script Date: 12/05/2025 20:20:44 ******/਍匀䔀吀 䄀一匀䤀开一唀䰀䰀匀 伀一ഀഀ
GO਍匀䔀吀 儀唀伀吀䔀䐀开䤀䐀䔀一吀䤀䘀䤀䔀刀 伀一ഀഀ
GO਍䌀刀䔀䄀吀䔀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀琀戀氀开瀀愀椀猀攀猀崀⠀ഀഀ
	[id] [int] NOT NULL,਍ऀ嬀渀漀洀戀爀攀崀 嬀渀瘀愀爀挀栀愀爀崀⠀㄀　　⤀ 一伀吀 一唀䰀䰀Ⰰഀഀ
PRIMARY KEY CLUSTERED ਍⠀ഀഀ
	[id] ASC਍⤀圀䤀吀䠀 ⠀倀䄀䐀开䤀一䐀䔀堀 㴀 伀䘀䘀Ⰰ 匀吀䄀吀䤀匀吀䤀䌀匀开一伀刀䔀䌀伀䴀倀唀吀䔀 㴀 伀䘀䘀Ⰰ 䤀䜀一伀刀䔀开䐀唀倀开䬀䔀夀 㴀 伀䘀䘀Ⰰ 䄀䰀䰀伀圀开刀伀圀开䰀伀䌀䬀匀 㴀 伀一Ⰰ 䄀䰀䰀伀圀开倀䄀䜀䔀开䰀伀䌀䬀匀 㴀 伀一Ⰰ 伀倀吀䤀䴀䤀娀䔀开䘀伀刀开匀䔀儀唀䔀一吀䤀䄀䰀开䬀䔀夀 㴀 伀䘀䘀⤀ 伀一 嬀倀刀䤀䴀䄀刀夀崀ഀഀ
) ON [PRIMARY]਍䜀伀ഀഀ
/****** Object:  Table [dbo].[tbl_plan_estudio]    Script Date: 12/05/2025 20:20:44 ******/਍匀䔀吀 䄀一匀䤀开一唀䰀䰀匀 伀一ഀഀ
GO਍匀䔀吀 儀唀伀吀䔀䐀开䤀䐀䔀一吀䤀䘀䤀䔀刀 伀一ഀഀ
GO਍䌀刀䔀䄀吀䔀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀琀戀氀开瀀氀愀渀开攀猀琀甀搀椀漀崀⠀ഀഀ
	[id] [int] NOT NULL,਍ऀ嬀渀漀洀戀爀攀崀 嬀渀瘀愀爀挀栀愀爀崀⠀㄀　　⤀ 一伀吀 一唀䰀䰀Ⰰഀഀ
	[carrera] [int] NOT NULL,਍ऀ嬀昀攀挀栀愀崀 嬀搀愀琀攀崀 一伀吀 一唀䰀䰀Ⰰഀഀ
PRIMARY KEY CLUSTERED ਍⠀ഀഀ
	[id] ASC਍⤀圀䤀吀䠀 ⠀倀䄀䐀开䤀一䐀䔀堀 㴀 伀䘀䘀Ⰰ 匀吀䄀吀䤀匀吀䤀䌀匀开一伀刀䔀䌀伀䴀倀唀吀䔀 㴀 伀䘀䘀Ⰰ 䤀䜀一伀刀䔀开䐀唀倀开䬀䔀夀 㴀 伀䘀䘀Ⰰ 䄀䰀䰀伀圀开刀伀圀开䰀伀䌀䬀匀 㴀 伀一Ⰰ 䄀䰀䰀伀圀开倀䄀䜀䔀开䰀伀䌀䬀匀 㴀 伀一Ⰰ 伀倀吀䤀䴀䤀娀䔀开䘀伀刀开匀䔀儀唀䔀一吀䤀䄀䰀开䬀䔀夀 㴀 伀䘀䘀⤀ 伀一 嬀倀刀䤀䴀䄀刀夀崀ഀഀ
) ON [PRIMARY]਍䜀伀ഀഀ
/****** Object:  Table [dbo].[tbl_provincias]    Script Date: 12/05/2025 20:20:44 ******/਍匀䔀吀 䄀一匀䤀开一唀䰀䰀匀 伀一ഀഀ
GO਍匀䔀吀 儀唀伀吀䔀䐀开䤀䐀䔀一吀䤀䘀䤀䔀刀 伀一ഀഀ
GO਍䌀刀䔀䄀吀䔀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀琀戀氀开瀀爀漀瘀椀渀挀椀愀猀崀⠀ഀഀ
	[id] [int] NOT NULL,਍ऀ嬀渀漀洀戀爀攀崀 嬀渀瘀愀爀挀栀愀爀崀⠀㄀　　⤀ 一伀吀 一唀䰀䰀Ⰰഀഀ
	[pais] [int] NOT NULL,਍倀刀䤀䴀䄀刀夀 䬀䔀夀 䌀䰀唀匀吀䔀刀䔀䐀 ഀഀ
(਍ऀ嬀椀搀崀 䄀匀䌀ഀഀ
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]਍⤀ 伀一 嬀倀刀䤀䴀䄀刀夀崀ഀഀ
GO਍⼀⨀⨀⨀⨀⨀⨀ 伀戀樀攀挀琀㨀  吀愀戀氀攀 嬀搀戀漀崀⸀嬀琀戀氀开猀攀砀漀崀    匀挀爀椀瀀琀 䐀愀琀攀㨀 ㄀㈀⼀　㔀⼀㈀　㈀㔀 ㈀　㨀㈀　㨀㐀㐀 ⨀⨀⨀⨀⨀⨀⼀ഀഀ
SET ANSI_NULLS ON਍䜀伀ഀഀ
SET QUOTED_IDENTIFIER ON਍䜀伀ഀഀ
CREATE TABLE [dbo].[tbl_sexo](਍ऀ嬀椀搀崀 嬀椀渀琀崀 一伀吀 一唀䰀䰀Ⰰഀഀ
	[nombre] [nvarchar](50) NOT NULL,਍倀刀䤀䴀䄀刀夀 䬀䔀夀 䌀䰀唀匀吀䔀刀䔀䐀 ഀഀ
(਍ऀ嬀椀搀崀 䄀匀䌀ഀഀ
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]਍⤀ 伀一 嬀倀刀䤀䴀䄀刀夀崀ഀഀ
GO਍䄀䰀吀䔀刀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀琀戀氀开愀氀甀洀渀漀猀崀  圀䤀吀䠀 䌀䠀䔀䌀䬀 䄀䐀䐀  䌀伀一匀吀刀䄀䤀一吀 嬀䘀䬀开愀氀甀洀渀漀猀开挀愀爀爀攀爀愀崀 䘀伀刀䔀䤀䜀一 䬀䔀夀⠀嬀挀愀爀爀攀爀愀崀⤀ഀഀ
REFERENCES [dbo].[tbl_carreras] ([id])਍䜀伀ഀഀ
ALTER TABLE [dbo].[tbl_alumnos] CHECK CONSTRAINT [FK_alumnos_carrera]਍䜀伀ഀഀ
ALTER TABLE [dbo].[tbl_alumnos]  WITH CHECK ADD  CONSTRAINT [FK_alumnos_estado_civil] FOREIGN KEY([estado_civil])਍刀䔀䘀䔀刀䔀一䌀䔀匀 嬀搀戀漀崀⸀嬀琀戀氀开攀猀琀愀搀漀开挀椀瘀椀氀崀 ⠀嬀椀搀崀⤀ഀഀ
GO਍䄀䰀吀䔀刀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀琀戀氀开愀氀甀洀渀漀猀崀 䌀䠀䔀䌀䬀 䌀伀一匀吀刀䄀䤀一吀 嬀䘀䬀开愀氀甀洀渀漀猀开攀猀琀愀搀漀开挀椀瘀椀氀崀ഀഀ
GO਍䄀䰀吀䔀刀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀琀戀氀开愀氀甀洀渀漀猀崀  圀䤀吀䠀 䌀䠀䔀䌀䬀 䄀䐀䐀  䌀伀一匀吀刀䄀䤀一吀 嬀䘀䬀开愀氀甀洀渀漀猀开瀀愀椀猀崀 䘀伀刀䔀䤀䜀一 䬀䔀夀⠀嬀瀀愀椀猀崀⤀ഀഀ
REFERENCES [dbo].[tbl_paises] ([id])਍䜀伀ഀഀ
ALTER TABLE [dbo].[tbl_alumnos] CHECK CONSTRAINT [FK_alumnos_pais]਍䜀伀ഀഀ
ALTER TABLE [dbo].[tbl_alumnos]  WITH CHECK ADD  CONSTRAINT [FK_alumnos_provincia] FOREIGN KEY([provincia])਍刀䔀䘀䔀刀䔀一䌀䔀匀 嬀搀戀漀崀⸀嬀琀戀氀开瀀爀漀瘀椀渀挀椀愀猀崀 ⠀嬀椀搀崀⤀ഀഀ
GO਍䄀䰀吀䔀刀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀琀戀氀开愀氀甀洀渀漀猀崀 䌀䠀䔀䌀䬀 䌀伀一匀吀刀䄀䤀一吀 嬀䘀䬀开愀氀甀洀渀漀猀开瀀爀漀瘀椀渀挀椀愀崀ഀഀ
GO਍䄀䰀吀䔀刀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀琀戀氀开愀氀甀洀渀漀猀崀  圀䤀吀䠀 䌀䠀䔀䌀䬀 䄀䐀䐀  䌀伀一匀吀刀䄀䤀一吀 嬀䘀䬀开愀氀甀洀渀漀猀开猀攀砀漀崀 䘀伀刀䔀䤀䜀一 䬀䔀夀⠀嬀猀攀砀漀崀⤀ഀഀ
REFERENCES [dbo].[tbl_sexo] ([id])਍䜀伀ഀഀ
ALTER TABLE [dbo].[tbl_alumnos] CHECK CONSTRAINT [FK_alumnos_sexo]਍䜀伀ഀഀ
ALTER TABLE [dbo].[tbl_materias_cursadas]  WITH CHECK ADD  CONSTRAINT [FK_cursadas_alumno] FOREIGN KEY([alumno])਍刀䔀䘀䔀刀䔀一䌀䔀匀 嬀搀戀漀崀⸀嬀琀戀氀开愀氀甀洀渀漀猀崀 ⠀嬀椀搀崀⤀ഀഀ
GO਍䄀䰀吀䔀刀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀琀戀氀开洀愀琀攀爀椀愀猀开挀甀爀猀愀搀愀猀崀 䌀䠀䔀䌀䬀 䌀伀一匀吀刀䄀䤀一吀 嬀䘀䬀开挀甀爀猀愀搀愀猀开愀氀甀洀渀漀崀ഀഀ
GO਍䄀䰀吀䔀刀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀琀戀氀开洀愀琀攀爀椀愀猀开挀甀爀猀愀搀愀猀崀  圀䤀吀䠀 䌀䠀䔀䌀䬀 䄀䐀䐀  䌀伀一匀吀刀䄀䤀一吀 嬀䘀䬀开挀甀爀猀愀搀愀猀开挀愀爀爀攀爀愀崀 䘀伀刀䔀䤀䜀一 䬀䔀夀⠀嬀挀愀爀爀攀爀愀崀⤀ഀഀ
REFERENCES [dbo].[tbl_carreras] ([id])਍䜀伀ഀഀ
ALTER TABLE [dbo].[tbl_materias_cursadas] CHECK CONSTRAINT [FK_cursadas_carrera]਍䜀伀ഀഀ
ALTER TABLE [dbo].[tbl_materias_cursadas]  WITH CHECK ADD  CONSTRAINT [FK_cursadas_materia] FOREIGN KEY([materia])਍刀䔀䘀䔀刀䔀一䌀䔀匀 嬀搀戀漀崀⸀嬀琀戀氀开洀愀琀攀爀椀愀猀崀 ⠀嬀椀搀崀⤀ഀഀ
GO਍䄀䰀吀䔀刀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀琀戀氀开洀愀琀攀爀椀愀猀开挀甀爀猀愀搀愀猀崀 䌀䠀䔀䌀䬀 䌀伀一匀吀刀䄀䤀一吀 嬀䘀䬀开挀甀爀猀愀搀愀猀开洀愀琀攀爀椀愀崀ഀഀ
GO਍䄀䰀吀䔀刀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀琀戀氀开洀愀琀攀爀椀愀猀开爀攀渀搀椀搀愀猀崀  圀䤀吀䠀 䌀䠀䔀䌀䬀 䄀䐀䐀  䌀伀一匀吀刀䄀䤀一吀 嬀䘀䬀开爀攀渀搀椀搀愀猀开愀氀甀洀渀漀崀 䘀伀刀䔀䤀䜀一 䬀䔀夀⠀嬀愀氀甀洀渀漀崀⤀ഀഀ
REFERENCES [dbo].[tbl_alumnos] ([id])਍䜀伀ഀഀ
ALTER TABLE [dbo].[tbl_materias_rendidas] CHECK CONSTRAINT [FK_rendidas_alumno]਍䜀伀ഀഀ
ALTER TABLE [dbo].[tbl_materias_rendidas]  WITH CHECK ADD  CONSTRAINT [FK_rendidas_carrera] FOREIGN KEY([carrera])਍刀䔀䘀䔀刀䔀一䌀䔀匀 嬀搀戀漀崀⸀嬀琀戀氀开挀愀爀爀攀爀愀猀崀 ⠀嬀椀搀崀⤀ഀഀ
GO਍䄀䰀吀䔀刀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀琀戀氀开洀愀琀攀爀椀愀猀开爀攀渀搀椀搀愀猀崀 䌀䠀䔀䌀䬀 䌀伀一匀吀刀䄀䤀一吀 嬀䘀䬀开爀攀渀搀椀搀愀猀开挀愀爀爀攀爀愀崀ഀഀ
GO਍䄀䰀吀䔀刀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀琀戀氀开洀愀琀攀爀椀愀猀开爀攀渀搀椀搀愀猀崀  圀䤀吀䠀 䌀䠀䔀䌀䬀 䄀䐀䐀  䌀伀一匀吀刀䄀䤀一吀 嬀䘀䬀开爀攀渀搀椀搀愀猀开洀愀琀攀爀椀愀崀 䘀伀刀䔀䤀䜀一 䬀䔀夀⠀嬀洀愀琀攀爀椀愀崀⤀ഀഀ
REFERENCES [dbo].[tbl_materias] ([id])਍䜀伀ഀഀ
ALTER TABLE [dbo].[tbl_materias_rendidas] CHECK CONSTRAINT [FK_rendidas_materia]਍䜀伀ഀഀ
ALTER TABLE [dbo].[tbl_plan_estudio]  WITH CHECK ADD  CONSTRAINT [FK_plan_carrera] FOREIGN KEY([carrera])਍刀䔀䘀䔀刀䔀一䌀䔀匀 嬀搀戀漀崀⸀嬀琀戀氀开挀愀爀爀攀爀愀猀崀 ⠀嬀椀搀崀⤀ഀഀ
GO਍䄀䰀吀䔀刀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀琀戀氀开瀀氀愀渀开攀猀琀甀搀椀漀崀 䌀䠀䔀䌀䬀 䌀伀一匀吀刀䄀䤀一吀 嬀䘀䬀开瀀氀愀渀开挀愀爀爀攀爀愀崀ഀഀ
GO਍䄀䰀吀䔀刀 吀䄀䈀䰀䔀 嬀搀戀漀崀⸀嬀琀戀氀开瀀爀漀瘀椀渀挀椀愀猀崀  圀䤀吀䠀 䌀䠀䔀䌀䬀 䄀䐀䐀  䌀伀一匀吀刀䄀䤀一吀 嬀䘀䬀开瀀爀漀瘀椀渀挀椀愀猀开瀀愀椀猀崀 䘀伀刀䔀䤀䜀一 䬀䔀夀⠀嬀瀀愀椀猀崀⤀ഀഀ
REFERENCES [dbo].[tbl_paises] ([id])਍䜀伀ഀഀ
ALTER TABLE [dbo].[tbl_provincias] CHECK CONSTRAINT [FK_provincias_pais]਍䜀伀ഀഀ
USE [master]਍䜀伀ഀഀ
ALTER DATABASE [GESTION] SET  READ_WRITE ਍䜀伀ഀഀ
