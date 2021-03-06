USE [master]
GO
/****** Object:  Database [jspmkltxyesjywzjyA1A9]    Script Date: 03/19/2018 16:19:10 ******/
CREATE DATABASE [jspmkltxyesjywzjyA1A9] ON  PRIMARY 
( NAME = N'jspmkltxyesjywzjyA1A9', FILENAME = N'D:\微云同步\程序实战\jspm\jspm快乐淘校园二手交易网zjyA1A9\database\jspmkltxyesjywzjyA1A9.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'jspmkltxyesjywzjyA1A9_log', FILENAME = N'D:\微云同步\程序实战\jspm\jspm快乐淘校园二手交易网zjyA1A9\database\jspmkltxyesjywzjyA1A9_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [jspmkltxyesjywzjyA1A9].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET ANSI_NULLS OFF
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET ANSI_PADDING OFF
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET ARITHABORT OFF
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET AUTO_CLOSE ON
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET  DISABLE_BROKER
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET  READ_WRITE
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET RECOVERY SIMPLE
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET  MULTI_USER
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [jspmkltxyesjywzjyA1A9] SET DB_CHAINING OFF
GO
USE [jspmkltxyesjywzjyA1A9]
GO
/****** Object:  Table [dbo].[youqinglianjie]    Script Date: 03/19/2018 16:19:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[youqinglianjie](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[wangzhanmingcheng] [varchar](50) NULL,
	[wangzhi] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[youqinglianjie] ON
INSERT [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [addtime]) VALUES (1, N'百度', N'http://www.baidu.com', CAST(0x0000A8910017B074 AS DateTime))
INSERT [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [addtime]) VALUES (2, N'谷歌', N'http://www.google.cn', CAST(0x0000A8910017B074 AS DateTime))
INSERT [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [addtime]) VALUES (3, N'新浪', N'http://www.sina.com', CAST(0x0000A8910017B074 AS DateTime))
INSERT [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [addtime]) VALUES (4, N'雅虎', N'http://www.yahoo.cn', CAST(0x0000A8910017B074 AS DateTime))
INSERT [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [addtime]) VALUES (5, N'腾讯', N'http://www.qq.com', CAST(0x0000A8910017B074 AS DateTime))
SET IDENTITY_INSERT [dbo].[youqinglianjie] OFF
/****** Object:  Table [dbo].[yonghuzhuce]    Script Date: 03/19/2018 16:19:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[yonghuzhuce](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[yonghuming] [varchar](50) NULL,
	[mima] [varchar](50) NULL,
	[xingming] [varchar](50) NULL,
	[xingbie] [varchar](2) NULL,
	[chushengnianyue] [varchar](50) NULL,
	[QQ] [varchar](50) NULL,
	[youxiang] [varchar](50) NULL,
	[dianhua] [varchar](50) NULL,
	[shenfenzheng] [varchar](50) NULL,
	[touxiang] [varchar](50) NULL,
	[dizhi] [varchar](300) NULL,
	[beizhu] [varchar](500) NULL,
	[addtime] [datetime] NULL,
	[issh] [varchar](2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[yonghuzhuce] ON
INSERT [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [dianhua], [shenfenzheng], [touxiang], [dizhi], [beizhu], [addtime], [issh]) VALUES (1, N'555', N'555', N'何升高', N'男', N'2012-07-08', N'429489354', N'gsgs@163.com', N'13186835580', N'52353253262', N'upload/1333961148718.jpg', N'龙港龙翔路1170号', N'mfgmfgmfg', CAST(0x0000A8910017B074 AS DateTime), N'是')
INSERT [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [dianhua], [shenfenzheng], [touxiang], [dizhi], [beizhu], [addtime], [issh]) VALUES (2, N'leejie', N'leejie', N'李龙', N'男', N'2012-05-21', N'851781333', N'fege@126.com', N'63474337', N'623632153', N'upload/1333963398718.gif', N'温州飞翔路2号', N'htrjrtjr', CAST(0x0000A8910017B074 AS DateTime), N'是')
INSERT [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [dianhua], [shenfenzheng], [touxiang], [dizhi], [beizhu], [addtime], [issh]) VALUES (3, N'mygod', N'mygod', N'陈德才', N'男', N'2012-02-02', N'870538338', N'gshf@yahoo.com', N'9696556', N'33253636', N'upload/1333963445546.gif', N'杭州四季青广场3号', N'hdhffd', CAST(0x0000A8910017B074 AS DateTime), N'是')
INSERT [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [dianhua], [shenfenzheng], [touxiang], [dizhi], [beizhu], [addtime], [issh]) VALUES (4, N'xwxxmx', N'xwxxmx', N'吴江', N'女', N'2012-03-14', N'609577616', N'jrjtr@163.com', N'34437754', N'215323262', N'upload/1333963661093.jpg', N'上海浦东区22号', N'gfdhth', CAST(0x0000A8910017B074 AS DateTime), N'是')
INSERT [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [dianhua], [shenfenzheng], [touxiang], [dizhi], [beizhu], [addtime], [issh]) VALUES (5, N'666', N'666', N'张六', N'男', N'2017-04-27 04:07:48', N'6852145', N'387522@qq.com', N'64805215', N'222222222222222223', N'upload/1493237280161.jpg', N'浙江杭州市', N'123132132132', CAST(0x0000A89100442230 AS DateTime), N'是')
INSERT [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [dianhua], [shenfenzheng], [touxiang], [dizhi], [beizhu], [addtime], [issh]) VALUES (6, N'777', N'777', N'张七', N'男', N'2017-04-27 04:21:28', N'6852145', N'387522@qq.com', N'64805215', N'222222222222222223', N'upload/1493238101111.jpg', N'浙江湖州市', N'1231321321231', CAST(0x0000A8910047E6A4 AS DateTime), N'是')
SET IDENTITY_INSERT [dbo].[yonghuzhuce] OFF
/****** Object:  Table [dbo].[xinwentongzhi]    Script Date: 03/19/2018 16:19:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[xinwentongzhi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[biaoti] [varchar](300) NULL,
	[leibie] [varchar](50) NULL,
	[neirong] [text] NULL,
	[tianjiaren] [varchar](50) NULL,
	[shouyetupian] [varchar](50) NULL,
	[dianjilv] [int] NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[xinwentongzhi] ON
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (1, N'联叙监督团要求将冲突地区被困民众迅速转移', N'站内新闻', N'　新华网大马士革６月１８日电（记者姜铁英）联合国<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">叙利亚</SPAN>监督团（联叙监督团）团长穆德１７日晚发表声明，呼吁叙利亚各方马上采取措施，将被困在叙境内冲突地区的平民迅速转移到安全地区。
<P>　　<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">穆德</SPAN>在声明中强调，目前仍有大量平民被困在冲突地区不能转移。他说，几天来，联叙监督团一直设法将被困在霍姆斯等冲突地区的平民转移至安全地区，但是至今仍未成功。</P>
<P>　　穆德呼吁，<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">叙</SPAN>利亚各方马上采取措施，无条件地将困在冲突地区的妇女、儿童、老人与受伤平民立刻转移到安全地区。他说，叙利亚各方应该展现诚意，保障叙利亚人民的生命安全。</P>
<P>　　近期，叙利亚境内冲突持续升级，叙利亚政府军与反对派武装力量“叙利亚自由军”在大马士革与<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">霍姆斯</SPAN>等多个地区发生激烈交火。联叙监督团１６日在大马士革发表声明，监督团即日起暂停在叙一切活动，所有观察员留守驻地待命，等候通知，联叙团与相关各方的接触也将随之减少。</P>', N'hsg', N'upload/1317085910921.jpg', 99, CAST(0x0000A8910043A4CC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (2, N'北约将重振快速反应部队', N'站内新闻', N'<SPAN id=content>
<P>　　新华网布鲁塞尔１月１７日电（记者 张伟）<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">北约</SPAN>军事委员会主席孔德·巴特尔斯１７日说，北约今后将重振快速反应部队，以推动北约军事发展与改革。</P>
<P>　　北约２８个成员国的参谋长１６日至１７日在布鲁塞尔北约总部举行会议。巴特尔斯在会后对记者说，近年来，全球金融和经济危机导致北约成员国普遍缩减军费，与此同时，新兴的安全威胁又要求北约做好应对准备。为此，北约提出了“灵巧防务”的理念，即通过多国合作的形式，在降低支出的同时，保持和发展军事能力。加强快速反应<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">部队</SPAN>建设将是北约进行这一努力的关键。</P>
<P>　　他说，北约快速<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">反应</SPAN>部队不仅能为北约提供一支强大和灵活的军事力量，而且还是各成员国加强合作、提高协同作战能力的平台。此外，北约还可以通过这一平台加强与伙伴国的军事合作。</P>
<P>　　北约<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">快速</SPAN>反应部队组建于２００６年，包括陆军、空军、海军和特种部队等多个兵种，可以在５天内部署到全球任何地方。它现有兵力约２．７万，其中１．６万属于后备部队。目前，北约快速反应部队的海军正在参与打击索马里海盗和在地中海反恐的任务。２０１２年，美国首次宣布将派一个旅加入北约快速反应部队，显示美国开始加强对这一平台的重视。</P></SPAN>', N'hsg', N'upload/1317086069593.jpg', 96, CAST(0x0000A8910043A4CC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (3, N'解读十二五规划纲要:完善人才选拔任用激励机制', N'站内新闻', N'<STRONG>&nbsp;&nbsp;&nbsp; ［镜头］&nbsp;</STRONG>&nbsp;从2011到2015年，中关村将面向以海外高层次人才为代表的国家发展所特需的各类人才，建设“人才智力高度密集、体制机制真正创新、科技创新高度活跃、新兴产业高速发展”的人才特区。<BR><BR>　　北京建设人才特区的重大支持政策，包括了在人才特区布局和优先支持一批国家科技重大专项；推动投资便利化；创新人才培养模式等。<BR><BR>　　中关村人才特区的诞生，恰从一个侧面见证着，在创新这个“发动机”的强劲驱动下，建设人才强国的“动车”正不断提速。<BR>　　<BR><BR>　　“十二五”规划纲要中，“创新驱动，实施科教兴国战略和人才强国战略”篇为如何造就规模宏大的高素质人才队伍勾勒出了清晰的路线图，也为加快转变经济发展方式、实现科学发展提供了强有力的人才保证。<BR><BR>　　<B>突出重点，培养创新型科技人才</B><BR><BR>　　我国创新型科技人才队伍的现状不容乐观，尤其是拔尖人才和领军人才严重不足：在158个国际一级科学组织及其包含的1566个主要二级组织中，参与领导层的我国科学家仅占总数的2.26％。因此，规划纲要明确提出，围绕提高科技创新能力、建设创新型国家，以高层次创新型科技人才为重点，造就一批世界水平的科学家、科技领军人才、工程师和高水平创新团队。<BR><BR>　　中国科学技术发展战略研究院常务副院长王元表示，作为最宝贵的战略性资源，应为人才在自主创新的基础上搭建一个更大的舞台，有舞台才会出现领军人物和科学大师。规划纲要强调，加强实践培养，依托国家重大科研项目和重大工程、重点学科和重点科研基地、国际学术交流合作项目，建设高层次创新型科技人才培养基地。<BR><BR>　　注重培养一线创新人才和青年科技人才；积极引进和用好海外高层次创新创业人才……专家表示，规划纲要列举的这些举措具有很强的针对性，相信随着一项项措施的付诸实践，将会为创新型科技人才队伍建设带来质的飞跃。<BR><BR>　　<B>协调发展，重点开发紧缺专门人才</B><BR><BR>　　“发展重点领域、开发紧缺人才”，是规划纲要十分强调的一个重点。<BR><BR>　　“要完善人才队伍建设、促进人才结构与社会经济发展相协调，就必须抓住人才队伍中的‘短板’，重点开发经济社会发展重点领域急需紧缺专门人才。”教育部教育发展研究中心主任张力解释。<BR><BR>　　依据规划纲要，急需大力开发的紧缺专门人才的重点领域，涵盖了装备制造、生物技术、新材料、航空航天、国际商务、能源资源、农业科技等经济领域和教育、文化、政法、医药卫生等社会领域。<BR><BR>　　规划纲要还格外重视统筹推进各类人才队伍建设。“统筹推进党政、企业经营管理、专业技术、高技能、农村实用、社会工作等各类人才队伍建设。”中国人事科学研究院院长吴江认为，实现中国特色社会主义现代化，这6支人才队伍将发挥举足轻重的作用。<BR><BR>　　<B>营造环境，让优秀人才脱颖而出</B><BR><BR>　　长期以来，在人才发展问题上，体制机制亟待创新是社会各界反映强烈的一点，正因为体制机制不活，导致不能人尽其才、才尽其用。规划纲要提出，建立健全政府宏观管理、市场有效配置、单位自主用人、人才自主择业的体制机制。中国人才研究会副会长王通讯表示：“我国人才的70％最终是靠中小企业消化的，也就是说市场才是配置资源的主体。如果光靠党委政府下‘红头文件’来管理人才，很难落到企业、学校、医院、社区这些人才分布的角角落落里去。人才最终是用人单位在管，必须要发挥用人单位在人才培养、吸引和使用中的主体作用。”规划纲要对此加以明确，“推动人才管理部门职能转变，规范行政行为，扩大和落实单位用人自主权。”<BR><BR>　　规划纲要对深化国有企业和事业单位人事制度改革也提出了要求。“之所以有不少人愿意当‘官’，是因为当‘官’后能拥有更多的社会行政资源和福利待遇。”中央党校经济学部副主任赵振华表示，应从体制机制上保证那些专业技术人才即使不当官，待遇也不低于行政官员，也能获得相应的尊重和社会回报。<BR><BR>　　规划纲要针对性地对健全完善人才评价发现机制、选拔任用机制和激励保障机制作出了部署，提出创新人才管理体制和人才培养开发、评价发现、选拔任用、流动配置和激励保障机制，营造尊重人才、有利于优秀人才脱颖而出和充分发挥作用的社会环境。', N'hsg', N'upload/1317086056687.jpg', 41, CAST(0x0000A8910043A4CC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (4, N'巴沙尔施出软硬两招 叙利亚边放软话边搞军演', N'站内新闻', N'<DIV id=Content>
<P><SPAN id=content>
<P align=center><FONT face=楷体_GB2312 color=navy><IMG id={BA99880D-347A-4BAB-9C63-6A88FB62BE07} title="" style="BORDER-RIGHT: #000000 0px solid; BORDER-TOP: #000000 0px solid; BORDER-LEFT: #000000 0px solid; BORDER-BOTTOM: #000000 0px solid" height=391 hspace=0 src="http://news.xinhuanet.com/world/2011-12/07/122386859_21n.jpg" width=588 align=center border=0 sourcedescription="" sourcename=""></FONT></P>
<P style="COLOR: navy; FONT-FAMILY: 楷体_GB2312; TEXT-ALIGN: left" align=left><FONT color=navy>&nbsp;&nbsp;&nbsp; 11月28日，人们在<SPAN style="BORDER-BOTTOM: #0084d8 0px dotted" name="HL_TAG"><A style="COLOR: #0084d8" href="http://news.xinhuanet.com/world/2011-12/07/c_122386859.htm#"><FONT face=楷体_GB2312>叙利亚</FONT></A></SPAN>首都大马士革市中心的萨巴·巴赫拉特广场游行示威，抗议阿拉伯国家联盟（阿盟）对叙实施制裁的决定。当日，上万名叙利亚民众在大马士革举行抗议阿盟经济制裁的示威游行。阿盟27日在开罗召开紧急外长会议后决定立即对叙利亚实施经济制裁。新华社记者 殷博古 摄</FONT></P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;连日来，来自国内外的持续压力，正使叙利亚总统巴沙尔·阿萨德面临更大的挑战。12月6日，美国国务卿希拉里会见叙利亚反对派领导人；5日，巴勒斯坦民族解放运动(哈马斯)称要考虑从叙撤出领导层，“重新评估双方关系”；3日，叙政府安保机构首次传出大批秘密警察倒戈……对此，巴沙尔施出软硬两招，一边称愿意有条件签署<SPAN style="BORDER-BOTTOM: #0084d8 0px dotted" name="HL_TAG"><A style="COLOR: #0084d8" href="http://news.xinhuanet.com/world/2011-12/07/c_122386859.htm#">阿盟</A></SPAN>协议，一边却试射导弹显示实力。</P>
<P><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;巴沙尔腹背受敌更显孤立</STRONG></P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;叙利亚国内外的反巴沙尔势力连日来动作不断，使总统巴沙尔更显孤立。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;在叙利亚国内，4日传出巴沙尔赖以维持政权的支柱秘密警察首次发生大规模叛逃事件，至少12名秘密警察从一个情报基地逃离。叙反对派人士称，这批倒戈的秘密警察，是3日晚从首都大马士革西北部280公里处的伊德利卜市中心的空军情报基地叛逃的。反对派人士还称，4日另有16名士兵从伊德利卜叛逃。据称，估计军人叛逃者迄今已达数千之多。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;更令巴沙尔意想不到的是，随着部分军警的背弃，哈马斯和叙利亚的盟友关系也开始面临考验。哈马斯5日传出正考虑将其政治局领导人哈立德·迈沙阿勒撤离叙利亚，并将重新评估与巴沙尔政府的关系。由于受以色列通缉与暗杀威胁，迈沙阿勒此前一直生活在叙利亚首都大马士革，由巴沙尔政府提供保护。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;与巴沙尔日益孤立形成巨大反差的是，叙反对派似乎正越来越受到西方认同。据英国《每日电讯报》称，美国国务卿希拉里预定6日晚些时候前往瑞士日内瓦会见7名叙利亚反对派领导人，以表示对其支持。这也是希拉里继今年7月之后第二次会见叙利亚反对派人士。</P>
<P><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;愿有条件接受阿盟和平协议</STRONG></P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;深受内外压力夹攻的巴沙尔政府，5日放出软话，表示愿意有条件接受阿盟此前提出的和平协议。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;据叙利亚通讯社5日报道，叙利亚外交与侨民部部长瓦利德·穆阿利姆当天下午致信阿盟秘书长阿拉比称，叙利亚将积极回应阿盟的建议，同意阿盟向叙派遣观察员，并愿意签署阿盟有关叙利亚问题的解决协议。但他也强调，叙利亚对阿盟和平协议作出的解释、阿尔及利亚方面的立场意见、阿盟有关反对外来干涉叙利亚的声明等内容，必须作为协议“不可缺少”的重要部分。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;叙利亚<SPAN style="BORDER-BOTTOM: #0084d8 0px dotted" name="HL_TAG"><A style="COLOR: #0084d8" href="http://news.xinhuanet.com/world/2011-12/07/c_122386859.htm#">外交部发言人</A></SPAN>吉哈德·马克迪希5日也表示，叙利亚接受阿盟和平协议有两个明确的条件：一是叙利亚拒绝外国干涉，协议签署的地点必须在叙利亚境内；二是双方签署协议后，阿盟即取消冻结叙利亚阿盟成员国资格的决定，对叙利亚的经济制裁也自动失效。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;阿盟秘书长阿拉比5日证实，他们收到了叙外长穆阿利姆的信函，并透露叙方要求阿盟在签署协议问题上再宽限两三天。对于叙方提出的附加条件，阿拉比说：“叙利亚提出的条件包含了我们之前未听过的新内容，阿盟各国外长正在研究对策。”他还表示：“阿盟将努力在阿拉伯框架中解决叙利亚危机，这需要叙方的协助，因为目前外部世界没有停止动作，正在考虑将叙利亚问题国际化。”</P>
<P><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;试射导弹检验实战能力</STRONG></P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;尽管叙利亚表示已经有条件接受阿盟提出的和平计划，结束该国长达8个月的抗议活动，但为了展示其军事实力，对外国干涉力量进行威慑，叙军4日举行军事演习，试射了多枚战术导弹。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;据叙利亚通讯社5日报道，根据2011年军事演习计划，叙利亚武装部队于4日进行了两次模拟实战的战役战术实弹射击演习。另据以色列国防军消息人士称，叙利亚军方当天在叙东北部地区进行的试射演练，包括向伊拉克边境发射俄制“飞毛腿-B”导弹。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;尽管叙利亚军方每年都进行军事演习，但此次<SPAN style="BORDER-BOTTOM: #0084d8 0px dotted" name="HL_TAG"><A style="COLOR: #0084d8" href="http://news.xinhuanet.com/world/2011-12/07/c_122386859.htm#">军演</A></SPAN>规格却更高，演练内容包括导弹试射及空军和地面部队的行动。叙利亚国家电视台说，军演旨在测试“导弹系统面对任何可能的入侵所具备的作战能力及备战状况”。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;叙利亚武装力量副总司令、国防部长达乌德等叙军高级将领，观看了当天的军演。达乌德高度赞赏叙利亚武装部队所付出的努力以及<SPAN style="BORDER-BOTTOM: #0084d8 0px dotted" name="HL_TAG"><A style="COLOR: #0084d8" href="http://news.xinhuanet.com/world/2011-12/07/c_122386859.htm#">演习部队</A></SPAN>表现出色的作战能力，并称，军事演习的成功，证明叙利亚武装部队已做好一切准备，保卫祖国，挫败一切企图破坏其安全和攻击其领土的阴谋。</P></SPAN>
<P></P></DIV>', N'hsg', N'upload/1317085936937.jpg', 51, CAST(0x0000A8910043A4CC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (5, N'圆明园将择机赴日本欧洲追索劫散国宝', N'站内新闻', N'<P>　　昨天，是圆明园罹劫150周年纪念日，有关方面发布了全球倡议书：抵制流失文物拍卖交易。</P><!--advertisement code begin--><!--none--><!--advertisement code end-->
<P>　　圆明园，这个曾经的“万园之园”，历经劫难后如今只剩断壁残垣，静立在北京西郊。而尤为让人痛心的是，自1860年遭英法联军焚烧以来，圆明园到底流失了多少文物，至今依然是一道历史谜题。</P>
<P>　　流失文物至少150万件</P>
<P>　　“从目前所存信息看，散失在国内外的各类圆明园文物至少有150万件。”圆明园管理处主任陈名杰说，由于记录圆明园摆设的“陈设清册”没有留存下来，可能毁于战火，因而失去了精确排查圆明园流失文物的依据，这个数字也只是一个估算。</P>
<P>　　为寻找圆明园海外流失文物，圆明园管理处曾于2009年10月成立工作组专程赴美国进行寻访，以摸底流失文物并完善文物资料数据库建设，寻到超过400张老照片及流失文物。</P>
<P>　　将持续进行国外“寻宝”</P>
<P>　　根据1970年在联合国教科文组织大会上签署的国际间共同保护文物与合法管制文物进出口协定，私藏赃物者必须将文物归还原主。因此，陈名杰他们在出发之前，已经预感到此行可能不太顺利。</P>
<P>　　“当时有一家博物馆在初次见面时就带上了律师，还以为工作组是来‘索要文物’的，所以准备‘对抗’到底。”陈名杰回忆道。</P>
<P>　　不过由于工作组一再强调此行意在“摸清家底”，而非追讨流失文物，在美国寻访过程中，工作组还是得到大多数博物馆和有关机构的热情接待。</P>
<P>　　陈名杰说，今后，圆明园管理处还将择机开展赴欧洲和日本的寻宝之行，以期能建立一份较为完整的圆明园流失文物名录。</P>
<P>　　国外追讨文物困难重重</P>
<P>　　建立流失名录难，而追讨流失文物回国更是难上加难。2009年初佳士得不顾中国方面的反对拍卖圆明园兽首事件，从一个侧面反映了流失文物的回归之难。</P>
<P>　　虽然文物流失国追讨文物“回家”有相应的国际公约作为法理依据，但对于已经流失海外很久的文物，特别是追讨从圆明园流失的价值连城的文物，实际操作起来困难重重。</P>', N'hsg', N'upload/1317085922265.jpg', 45, CAST(0x0000A8910043A4CC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (6, N'参观纪念馆迎接记者节', N'站内新闻', N'<DL class=textCenterImg>
<DT>
<DIV align=center><IMG style="WIDTH: 550px" src="http://bddsb.bandao.cn/data/20101104/4648343433373436/images/17.jpg"> </DIV></DT></DL><BR><BR>　　在11月8日第十一个中国记者节即将来临之际，市委宣传部于11月3日组织全市新闻单位的60多名青年编辑记者，来到中共青岛地方支部旧址纪念馆参观学习，接受党史和革命传统教育，以独特的方式迎接全体新闻工作者的节日', N'hsg', NULL, 33, CAST(0x0000A8910043A4CC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (7, N'奥巴马为何提“卫星时刻”', N'站内新闻', N'<P align=center><IMG id={1DF22D94-A254-4691-A2F8-2BF814B79623} title="" style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" hspace=0 src="http://news.xinhuanet.com/2011-01/29/13711835_11n.jpg" align=center border=0 sourcename="" sourcedescription=""></P>
<P><FONT face=楷体_GB2312 color=navy>&nbsp;&nbsp;&nbsp;&nbsp;1月25日，美国总统奥巴马在首都华盛顿发表国情咨文。美国总统奥巴马25日在发表国情咨文时指出，世界已发生深刻变革，美国正在同其他国家竞争，为此美国需为创造就业岗位和刺激经济增长付出更多努力。 新华社发</FONT></P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;“卫星时刻”的说法近来在美国蹿红。它最初使用是在1957年，当时苏联卫星上天，强烈震动了美国。以后一提这个词，美国人就明白“危机来了”。近日，美国总统奥巴马的国情咨文中再次用到了这个词。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;奥巴马说：“半个世纪前，苏联人发射了‘地球伴星一号’人造卫星，在太空领域领先于我们。当时我们对于该如何在登月计划上打败他们毫无头绪，美国国家航空航天局甚至还没成立。但后来美国不仅超越苏联，还释放了一股创新潮流。”他说：“现在正是我们这一代人面临重大挑战的‘卫星时刻’。”</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;奥巴马在国情咨文中，提到中国的高铁、太阳能研究设施和全世界最快计算机，提到韩国对教育的重视，提到俄罗斯和欧洲国家对基础设施的投入……奥巴马用种种事例刺激美国民众的危机感。美国面临挑战，这一点毋庸置疑。美国国会预算办公室(CBO)预计2011年联邦政府预算赤字将达到近1.5万亿美元，创下历史新高。CBO还预计今年美国经济将增长3.1%，但失业率仍将保持在9%以上。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;但是，“确保美国世界第一的位置”，这仍然是奥巴马国情咨文中传达的极为明确的信息：“现在重要的是我们能否维持美国的地位：美国不仅是地图上一个地名，而且是世界的一盏明灯。”</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;美国感受到了危机，有人则感受到了被当做对手的荣耀。奥巴马国情咨文一出，他们就开始统计“中国”在其中出现了多少次。好像这就是中国实力的证明。事实上，美国依然是当今世界最大最繁荣的经济体。美国在各方面的创新能力依然无人能匹敌。其实，认识到美国的强大，才是中国人自信的表现。如今，美国在“卫星时刻”反思如何赢得未来，中国似乎也该体会一下自己的“卫星时刻”了。（张红）</P><!-- end_ct -->', N'hsg', NULL, 31, CAST(0x0000A8910043A4CC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (8, N'中国梦的见证', N'站内新闻', N'&nbsp; 　这个冬天分外寒冷，可再寒冷的冬天也挡不住春天的脚步，在春天即将来临的时刻正是梦想起航的时分。
<P>　　人生如船，梦想是帆，每个人都有一个只属于自己的梦，可每个人的梦又与国家民族兴衰荣辱紧密相连。1942年的中国，河南延津的灾民连吃饱穿暖都实现不了，还遑论其它！那是因为外敌入侵、山河破碎、政治腐败。所以，先贤顾炎武早就发出了“天下兴亡，匹夫有责”的呐喊。因为，国家好，大家才能好！</P>
<P>　　我的祖父祖母出生于清末民初的动荡岁月，他们见证了旧中国的积弱积贫，也见证了“中国人民站起来”；父亲母亲出生于日寇的铁蹄下，他们见证了“落后就要挨打”，也见证了“改革开放富起来”；我们这一代出生于“<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">文革</SPAN>”的动乱年代，见证了短缺经济的拮据，也见证了新世纪的新生活，见证了中国成为世界第二大经济体；孩子呢？孩子的欢声笑语是最动听的音乐，他们理应有更好的未来。儿子是个“一零后”，他们这一代将见证2020年全面建成小康社会，2049年建成富强民主文明和谐的社会主义现代化国家。</P>
<P>　　懂得了个人幸福与国家梦想的关系，每个人心中又升腾起关于国家社会的梦想，我想那个梦想一定是五彩缤纷的，一定是芳菲满眼的，基调一定是玫瑰色的，因为玫瑰色最温暖。也许每个人的国家梦不尽相同，但共同的一定是国泰民安、经济发展、政治清明、文化繁荣、社会和谐、生态良好、公平正义。</P>
<P>　　我们的生活不是没有阴霾，既有“十面霾伏”的尴尬，也有“房叔”“房妹”的不公，正因为还有种种不如意，所以才期盼有更好的教育、更稳定的工作、更满意的收入、更可靠的社会保障、更高水平的医疗卫生服务、更舒适的居住条件、更优美的环境，期盼孩子们能成长得更好、工作得更好、生活得更好。习近平总书记说：“人民对美好生活的向往，就是我们的奋斗目标。”总书记关于<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">中国梦</SPAN>的深情阐述，用实现中华民族伟大复兴的中国梦凝聚起强大的精神能量。</P>
<P>　　“中国梦”里，有“<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">强国</SPAN>”也有“富民”。“中国梦”里，有期盼也有实干。中华民族是一个命运共同体，只有民族、国家全面科学发展，个人才能实现梦想。同样，只有每个人都充满激情和梦想，“中国梦”才够美丽，才够坚实。专家认为，以家国情怀为特征的中国梦有别于以个人奋斗为特征的美国梦。</P>
<P>　　国防大学教授刘明福前年出版了一本让美国前国务卿基辛格博士高度关注的书，就叫《中国梦》，他认为中国在和强国的竞争中，中国必胜。同时指出：“如果我们不解决好中国信仰的问题，那么你就很难在竞争中得到金牌。因为信仰是国家的核心竞争力，是国家的灵魂。”</P>
<P>　　没有梦想的民族是可悲的，对美好梦想没有坚定不移、矢志不渝追求的民族同样没有前途。习近平总书记在最近的几次讲话中既强调了实干兴邦，又强调要胸怀共产主义的崇高理想，做共产主义远大理想和中国特色社会主义共同理想的坚定信仰者和忠实践行者。</P>
<P>　　新中国成立60多年、改革开放30多年来，我们的一个个梦想成为现实，圆了民族独立梦，圆了百年奥运梦，圆了航天航海梦，也圆了房子、汽车、上学、养老的百姓梦。世界还将<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">见证</SPAN>，一个更加美丽的中国梦将在我们手中梦想成真！</P>
<P>　　我们的民族曾经历尽苦难，但那与汉武帝、唐太宗时代的中国人一以贯之的民族复兴梦召唤着我们顽强奋斗，艰苦奋斗，不懈奋斗。可以预见的是，只要我们胸怀理想，坚定信仰，又脚踏实地，苦干实干，我们就一定能够拥抱美丽的中国梦！ （<SPAN>严冰）</SPAN></P>', N'hsg', NULL, 43, CAST(0x0000A8910043A4CC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (9, N'金融股引领纽约股市收高', N'站内新闻', N'&nbsp;&nbsp;&nbsp; １２月８日电（记者牛海荣）由于当天没有重要经济数据公布，８日纽约股市在大多数交易时间内维持窄幅震荡态势，三大股指最终在金融股的带领下以上涨报收。
<P><SPAN>美国总统奥巴马在前一天宣布与共和党达成了延长布什时期减税政策的协议，尽管这一协议还必须经过国会的最终批准，但是多数市场人士对前景表示乐观，并认为这一举措将有利于刺激消费，推动美国经济持续复苏。</SPAN></P>
<P><SPAN>　　受这一政策的影响，美国国债遭受投资者的抛售，１０年期美国国债的收益率当天升至６个月以来的最高水平。同时，美元汇率走强，致使以美元计价的黄金、白银以及原油等大宗商品价格承受了较大压力。</SPAN></P>
<P><SPAN>　　与此相比，纽约股市全天变化并不突出，三大股指开盘上涨，之后便在涨跌之间维持震荡态势，午盘后受金融股的提振稳步走高，最终以全线上涨报收。</SPAN></P>
<P><SPAN>　　与股市总体表现波澜不惊相比，两家当天在纽约证券交易所上市的中国互联网企业掀起了一轮热潮。中国最大的视频网站优酷网和电子商务网站当当网当天通过首次公开募股（ＩＰＯ）同时登陆纽交所，上市首日两家公司的股价表现均非常亮眼。其中，优酷网股价收盘时涨幅超过１６０％，为近几年来纽交所上市的所有公司中首日表现最好的一家。</SPAN></P>
<P><SPAN>　　到纽约股市收盘时，道琼斯３０种工业股票平均价格指数比前一个交易日涨１３．３２点，收于１１３７２．４８点，涨幅为０．１２％。标准普尔５００种股票指数涨４．５３点，收于１２２８．２８点，涨幅为０．３７％。纳斯达克综合指数涨１０．６７点，收于２６０９．１６点，涨幅为０．４１％。</SPAN></P><!-- end_ct -->', N'hsg', NULL, 62, CAST(0x0000A8910043A4CC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (10, N'我国约有1600万名重性精神病患者:难入院难回家', N'站内新闻', N'<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>给精神病患者一个归宿</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">近期，北京、广西、山东、四川等地发生多起精神病人伤人事件，引起社会热议。但人们的关注更多停留在“精神病人”的字眼上，有人甚至从心理上更加排斥精神病患者。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">据估算，我国有1600万名重性精神病患者。不管从疾病康复还是社会负担角度来看，精神病患者都需要融入社会，被常人接纳和包容，从根本上避免类似事件发生。然而，社会的排斥，让徘徊在孤独世界的精神病患者无所适从，难觅归宿。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>难入院，难回家</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">——不承认有病，花费数年时间终于入院；进了医院，往往被拒绝回家</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">坐在记者面前的汪阿姨，虽已71岁，但头发不白，眼睛明亮，浑身透着一股坚强的劲儿。她是北大第六医院绿丝带志愿协会一名志愿者，也是一名精神病患者的母亲。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">汪阿姨儿子患病22年，首次发现是1991年，正上高二。一开始家人都不敢面对，直到1997年，儿子开始陆续住院治疗，先后住院3次。在汪阿姨看来，每次住院都是一次惊心动魄的经历。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">2010年一天，汪阿姨给已经上班的儿子打电话，电话不接，发信息不回。汪阿姨继而发现，儿子在网上攻击别人，还写了遗嘱放到网上。她知道儿子病又犯了，赶紧和老伴赶到儿子的住处，敲了半天门始终不开。两人屏声静气在门外听了半天，直到里面传来一声咳嗽才松一口气：“儿子还活着。”</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">这之后，两人分工，老伴继续听屋里动静，汪阿姨去派出所求民警出警送儿子去医院。一开始民警不搭理，汪阿姨连续去了一个星期，民警终于被感动了。可是，老伴也被儿子告到了派出所，儿子认为自己没病，家人在害他。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">终于，在儿子上班的时候，老两口和民警以及居委会六七名工作人员，带着绳子等工具，把儿子从单位喊了出来，直奔医院，住上了加床。这一住就住了70天，要不是碍于经济负担，老两口不想让儿子出院，“就想让他一直住下去”，回到家“太折磨人了”。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">从发病到住院历经数年时间，住院要靠押送才能成功实施，这也是大多数重性精神病患者家庭的体验。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">然而，许多患者到了医院，也常常住不进去，主要原因是医院床位周转期长。一名女子为让姐姐住院，请了6个人，每个人给500元，把姐姐送到医院，但是没有床位，女子在门诊大厅给汪阿姨跪下，希望她这个志愿者能帮上忙。记者查阅《2011中国卫生统计年鉴》发现，精神病医院出院者平均住院日53.9天，几乎是各科住院患者中最长的。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">患者一旦住进医院，大多数家庭像汪阿姨一样，不想让患者出院。今年海淀区精神卫生防治院对300名住院患者进行调查，其中150多人符合出院条件；召开家属座谈会却发现，家属全都坚决反对患者出院。最长的患者已住了20多年。有的由于父母身故，兄弟姐妹各自成家，有的父母年事已高，无法照顾，还有些家庭宁愿承担费用也不愿意患者出院，害怕病情出现波动。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>被禁锢，被歧视</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">——有的被家人百般藏匿，甚至捆绑、锁在笼子里。即使是康复者，婚恋、就业也困难重重</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">3年前，山东泰安市东平县农村的司大叔给记者打来电话，讲述了女儿患精神病的情况。他女儿18岁时外出打工，没多久受到挫折回家，开始发病，经常挥舞着刀子跑到村口。几次三番后，司大叔把她锁在家里，老伴专门看着她。这一关就是11年。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">“为什么不送去治疗？”“治过了，从县里到省城都去了，只有县里能报销一点。”“一个大姑娘，总不能天天关在家里，不然这一辈子怎么办？”司大叔很无奈。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">近日，记者再次拨通了司大叔家里的号码，他又陪女儿上医院看病去了。他老伴告诉记者，家里值钱的东西全都卖光了，小女儿的打工钱也都用来治病了。“为了看着她，我这么多年没出过门了，现在她虽然结婚了，但仍住家里，将来谁看她啊？”司大叔老伴说。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">被锁在家中，成为“笼中人”，是农村大多数重性精神病患者的现状。据媒体报道，仅河北省锁在家里的精神病患者就超过10万人。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">城市里的患者，生活同样备受歧视。斯奇是北京的一名精神病康复者，患病20年来，家里搬了4次家，邻居都不知道他有这个病。“没有跟亲戚、邻居说，只有居委会知道。这个病被人知道了，就抬不起头了。”他说。斯奇体型偏胖，这是长期服用药物的结果。他告诉记者，精神病类药物对很多人来说都有副作用，常见的有体重增加、犯困嗜睡、乏力等症状。没有工作经验，找份工作原本就不容易，而病史的存在更加大了难度，斯奇在求职中遭遇的各类歧视层出不穷。从2009年拿到网管证书到现在4年多时间里，他没有找到一份稳定工作。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">2010年，斯奇参加某城区社会工作者的招聘考试，笔试面试全部通过了，但是未被录取，招聘方告诉他精神病人不宜从事社区工作，“其实就是怕我打人杀人”。这之前，斯奇还去报名参加残联组织的一些免费培训课程、招聘会等，都被组织方、招聘方以怕不好管理等各种理由拒绝了，即使他有残疾证。“也有求职成功的，但比较少，要隐瞒自己的病情，基本上都是临时工作。”他说。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">对于年轻的女患者来说，结婚的需求更加迫切。小涵今年26岁，病史已达10年。2006年学了导游，在旅行社干过一段时间，和一名广告公司的司机处上了。“当时想着自己有病，不管什么人都先试试吧。”小涵还去了两次远在重庆农村的男方家，虽然他父母没有说什么，但小涵感觉到他们对她的歧视。3年前两人分手了。之后，小涵又处过不少人，“他们看中的是我家里的房产、北京人的身份，而我喜欢的人，比如有一个英语老师，得知我的病情后，换了手机号，QQ也不登录了。”小涵说这些的时候，右手不时地捂嘴，她怕自己说这些的时候，感受到压力而喘不上气来。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">“年轻人的婚恋、求职等困难重重，父母担心后续照顾问题，让康复人员的社会回归之路显得尤其漫长。”徐东是北京回龙观医院在月坛静心园的心理指导医生，他反复强调，社会、家庭环境的改善对精神病患者的康复最重要。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>渴望“彩虹”救助</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">——全国每万人口仅有1.5名执业精神科医生。社会支持系统薄弱，农村地区几乎是一片空白</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">采访精神病患者，没有常人想的那么可怕。他们看起来和常人一样，只是在面对记者的时候，不停地搓手，观察对方反应，比较拘谨。这与媒体报道的杀人精神病人大相径庭。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">据北京回龙观医院副院长王绍礼介绍，普通人理解的精神病，主要是指重性精神障碍，表现为思维、情感和行为的紊乱，有时不能自控。按照1%发病率推算，人群中大约有1600万重性精神障碍患者。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">对重性精神障碍患者除了药物治疗，还有一整套的配套措施，如物理治疗、心理治疗、康复治疗等。鉴于发病原因尚不明确，药物治疗一般是对症治疗，目的是控制症状。为了减少病情波动，提倡对重性精神障碍患者进行规范化治疗，分急性期、巩固期、维持期三个阶段治疗。急性期主要在医院治疗，巩固期在康复机构，维持期回到社区。首次发病的患者需要1—2年的时间治疗，两次发病需要2—5年，3次以上则需要终身服药治疗。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">“现实情况是，医院床位、医生数量明显不足，医务人员整体水平不高，全国2万名精神科医生，每万人口执业精神科医生数1.5名，远低于全球3.9名的平均数。床位20万张，服务1600万患者中10%需要住院的人。康复机构、社区指导更是严重缺乏。造成住院难，住进来后出不去，占用了有限的医疗资源，同时患者不接触社会，加重社会功能衰退。出院后直接回到家庭，由于条件限制及压力，病情容易复发，反复出院入院。”王绍礼说。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">目前，我国精神病患者治疗费用已纳入医保报销，但家庭及个人负担仍较重。精神病康复者小军今年住院花了三四万元，报销了一半。剩下的一半费用和每月药费，让小军家难以承受。记者专门查看了精神病药物的价格，比如一种名为“奥氮平”的药物，进口药5毫克规格28片一盒，价格711.79元，一天要服用4片，一个月3000元，同样成分同样规格的国产药一个月也要1350元左右。视病情需要，可能几类药物一起服用，费用更高。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">“社会关注不足，就连有些残疾康复机构都不接纳精神病康复人员。”王涌是北大六院精神疾病全程干预中心的一名个案管理员。他认为加强社会管理服务，可以避免精神病人肇事肇祸事件的发生，不能像现在这样以病人不“闹事”为管理目的。“如果没有健全的社区管理，恶性事件的频繁曝光，可能会让一些精神症状不稳定的患者产生模仿的想法，一旦出现同类事件，就形成了一个恶性循环。他们更受歧视、管制，不利于康复，成为社会的包袱，加重家属的心理负担。”</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">北京、上海、广州地区的社会支持系统较好，有开放式康复机构，也有类似“庇护工厂”的机构。但也仅限于城市地区，在重性精神疾病高发的农村地区，几乎是一片空白。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">一名精神病患者把社会救助比作“彩虹”：“宛如希望降临在垂死者的床前，彩虹落在狂野湍急的瀑布旁边；当万物横遭毁灭，狂急的流水卷走一切，彩虹却依然晴朗鲜艳如前。”“纳什均衡”理论的提出者约翰·纳什，这位著名的精神分裂患者，幸运地获得了“彩虹”。他的妻子、社区心理医生以及所在大学的支持，使他度过了那段煎熬的岁月，这段经历最终被拍成了电影《美丽心灵》。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">也许，我们可以尝试一下，把歧视变成关怀，帮精神病患者找到归宿，真正回归社会。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">(文中患者均为化名)（李红梅）</P><!--/enpcontent-->', N'hsg', NULL, 74, CAST(0x0000A8910043A4CC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (11, N'报告称我国县域网购量暴增 淘宝网进村刷墙做广告', N'站内新闻', N'<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">淘宝网日前发布的一份《县域网购发展报告》引发了各界关注和热议。报告称，去年我国县域地区淘宝购物消费较上一年增长了87%。淘宝也开始进村刷墙做广告。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>网购花费最多前十地区被江浙包揽</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">7月29日，淘宝网发布《县域网购发展报告》。这份对2006个县域地区的网购数据的统计分析报告显示：去年，我国县域地区共有超过3000万人上淘宝购物，花费达1790亿元，比上一年增长了87%。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">而县域的人均网购花费、网购次数，已经超越一二线城市。报告称，去年我国县域地区平均每人网购花费5628元，一二线城市仅4700元；前者人均网购54次，远超一二线城市的39次。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">报告显示，从年人均花费上来看，福建清流县最高，2012年的人均花费达到了2万元；其次是西藏贡觉、江苏洪泽、黑龙江绥芬河、广东普宁，浙江的永康、文成和河北葉城，人均年花费都在1.1万以上。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">在报告所涵盖的地区中，2012年淘宝购物花费最多的地区是浙江的义乌，成交金额达34.4亿，其次是江苏昆山、常熟、江阴等地，前十均被浙江和江苏两省包揽。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>县城存“一人购买多人享用”现象</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">上述数据及排名一经发布，立即在网络上引发热烈讨论。新浪微博一网友表示认同报告内容，“说白了是因为小县城购物不方便，很多玩意不好买。”</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">但也有用户称“正是因为县域网购不发达，很多人不了解网上支付，就找会网购的朋友代买，造成单人购买力强的假象。”</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">对于“县域人均网购力量要高于一二线城市”的现象，淘宝报告中分析认为：部分网购渗透并不高的地区，人均花费反而要比渗透率高的地区更多。因为存在“一人购买多人享用”的情况。此外，网购所提供的价格优势、丰富的商品给相对落后地区带来的刺激也是重要因素。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">“网络零售带来的不仅是购物便捷，更是与一二线城市消费者的同等待遇和机会。”淘宝解释称。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">淘宝还提出，县域网购消费所呈现令人振奋和意外的数据，仍是受到抑制后的结果。“县域地区将是未来网络零售以及整个经济市场的另一片蓝海。”</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>淘宝在遂昌县做院墙广告</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">与报告数据相对应的另一个热点是“淘宝进村”。院墙从来都是农村市场最好的户外广告牌，日前有媒体报道称，在浙江省遂昌县，淘宝开始刷墙了，“生活要想好，赶紧上淘宝”、“打工东奔西跑，不如创业淘宝”。淘宝方面承认了此次营销活动。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">据介绍，遂昌县是国内著名的“淘宝县”，在这里，诞生了1200多家淘宝店，其中信誉皇冠以上的就有20多家。去年总销售额已达上亿元。在《县域网购发展报告》中，遂昌县成为最爱使用淘金币的地区，76%的用户使用了淘金币。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">但也有网友称，不光淘宝进村，还需要快递也进村。“之前看过一个差评，说自己是农村的，快递送到另个村就走了，自己还要坐车来回收快递，车费比快递和货物费合起来还贵，然后就给差评。卖家表示无语。”</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">淘宝在报告中也指出，从一二线城市和县域地区的网购发展来看，现有互联网和物流体系的落后在相当程度上限制和抑制了县域地区的网络消费。随着两者的发展，将极大释放中国县域地区的网络消费潜力，向“消费无差别”迈进。　（记者刘夏）</P><!--/enpcontent-->', N'hsg', NULL, 62, CAST(0x0000A8910043A4CC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (12, N'习近平参观西柏坡:毛泽东所提两个务必意义深远', N'站内新闻', N'<DIV id=artbody class=artCon><!--enpcontent--><FONT color=#333399>
<P align=center><IMG style="WIDTH: 440px; HEIGHT: 478px" id=22720590 title="" border=0 align=center src="http://images.china.cn/attachement/jpg/site1000/20130712/7427ea210c541349849612.jpg" md5="" sourcedescription="编辑提供的本地文件" sourcename="本地文件"></P></FONT>
<P style="TEXT-ALIGN: center; TEXT-INDENT: 30px; MARGIN: 0px 3px 15px" align=center><FONT color=#333399>习近平今日来到30多年前工作过的河北正定县</FONT></P>
<P align=center><IMG style="WIDTH: 440px; HEIGHT: 266px" id=22720592 title="" border=0 align=center src="http://images.china.cn/attachement/jpg/site1000/20130712/7427ea210c541349849b13.jpg" md5="" sourcedescription="编辑提供的本地文件" sourcename="本地文件"></P>
<P style="TEXT-ALIGN: center; TEXT-INDENT: 30px; MARGIN: 0px 3px 15px; COLOR: #333399" align=center><FONT color=#333399>习近平今日来到30多年前工作过的河北正定县</FONT></P>
<P align=center><IMG style="WIDTH: 440px; HEIGHT: 323px" id=22720594 title="" border=0 align=center src="http://images.china.cn/attachement/jpg/site1000/20130712/7427ea210c54134984a014.jpg" md5="" sourcedescription="编辑提供的本地文件" sourcename="本地文件"></P>
<P style="TEXT-ALIGN: center; TEXT-INDENT: 30px; MARGIN: 0px 3px 15px; COLOR: #333399" align=center><FONT color=#333399>习近平在正定看望30多年前在一个班子一起工作的老同事</FONT></P>
<P align=center><IMG style="WIDTH: 440px; HEIGHT: 317px" id=22720597 title="" border=0 align=center src="http://images.china.cn/attachement/jpg/site1000/20130712/7427ea210c54134984a715.jpg" md5="" sourcedescription="编辑提供的本地文件" sourcename="本地文件"></P>
<P style="TEXT-ALIGN: center; TEXT-INDENT: 30px; MARGIN: 0px 3px 15px; COLOR: #333399" align=center><FONT color=#333399>习近平来到河北平山县西柏坡参观</FONT></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">7月11日，中共中央总书记习近平来到30多年前工作过的河北正定县，看望塔元庄村干部群众，就开展党的群众路线教育实践活动，直接听取最基层的意见。习近平说，这里我很熟悉，当年下乡就骑自行车来。今天就是来听大家的，看看乡亲们，接接地气，充充电。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">习近平在塔元庄村说，作风问题关系党的生死存亡。一个人不论活到多大岁数，最宝贵的是历经沧桑仍怀有赤子之心。同样，我们党成立90多年了，执政60多年了，最宝贵的是要永葆青春、永葆生机活力。这就要不断改进作风，不断改革创新，保持党的先进性和纯洁性。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">塔元庄村干部和村民踊跃发言，高兴地与习近平沟通交流，并纷纷表达对党的群众路线教育实践活动的热烈拥护。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">在正定县期间，习近平还看望了30多年前在一个班子一起工作的老同事。他说，一个人对一个地方感情深不深，主要不在时间长短。焦裕禄在兰考工作只有一年多，但精神永存。我们的宗旨就是为人民服务，有了这份感情，只要在一个地方工作过，就永远不会忘记那里的群众。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">11日下午，习近平来到平山县西柏坡参观。他对当地干部群众说，西柏坡我来过多次，每次都怀着崇敬之心来，带着许多思考走。对我们共产党人来说，中国革命历史是最好的营养剂，多学习多重温，心中会增添许多正能量。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">参观期间，习近平说，毛泽东同志当年提出的“两个务必”，包含着对我国几千年历史治乱规律的深刻借鉴，包含着对我们党艰苦卓绝奋斗历程的深刻总结，包含着对胜利了的政党永葆先进性和纯洁性、对即将诞生的人民政权实现长治久安的深刻忧思，思想意义和历史意义十分深远。</P><!--/enpcontent--></DIV>', N'hsg', NULL, 27, CAST(0x0000A8910043A4CC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (13, N'成品油价格机制应联动民生', N'站内新闻', N'&nbsp;&nbsp;&nbsp; 在物价总水平居高不下之时，对于成品油价格机制的改革，从注重企业利益转为注重民生利益是应有之义。改革越早越到位，价格才越能还原真实，进而化解百姓疑虑。
<P>　　2月19日，国家发改委发出通知，决定自2月20日零时起上调汽、柴油售价，全国平均90号汽油和0号柴油每升分别提高0.26元和0.3元，国内成品油价格再创新高。在物价形势比较严峻的情况下上调成品油价格，发改委称，此举旨在合理引导消费，保障市场供应。而为尽可能减轻调价影响，已经推迟了近一个月的调价时间，并控制了调价幅度。 </P>
<P>　　油价上调，是现行成品油定价机制的应然反应。该机制根据新加坡、纽约和鹿特丹等三地市场价格的变动情况来确定调整国内的成品油价格，因此，这次油价调整于法有据。 </P>
<P>　　然而，就这一机制设置的初衷而言，启动以来远未达到发挥市场配置资源作用、反映真实供求关系的诉求。其一，国际油价瞬息万变，成品油价格调整时机往往滞后，以至于屡屡呈现反向运动的情况。特别是自2008年启动定价机制以来，伴随经济形势的反复和期货监管的强化，国际油价涨跌互现，而国内成品油价格却多跟涨而少跟跌，基本呈现出单边上升之势，并未完全反映市场变化。其二，国内成品油定价是在国外三地加权平均价格基础上，加以企业适当利润和汇率变化等因素形成，不仅操作复杂，而且透明度不够，遭到许多用户质疑。其三，由于调价可以预期，客观刺激了部分石化产品经销者要么囤积居奇要么降价促销等投机情况，市场价格机制理应发挥的平衡供需、抑制投机的作用不仅难以体现，反有相反作用。 </P>
<P>　　尤为引发争议的是，百姓日常用油成本的急升与石化双雄的利润形成了鲜明对比。2010年中石油实现利润1676亿元，中石化利润也有望突破千亿元。这两份骄人年报是在其国外销售价格低于国内销售价格的情况下实现的。尽管双雄上缴税收同样大幅上升，但人们仍存疑问：双雄是属于全民所有性质的企业，在税收之外能否以较低油价实现对全民的反哺？ </P>
<P>　　答案并不难找。一方面，在价格标准上，成品油定价机制确以国际市场价格为其调整标准，另一方面，又时时辅以行政手段干预。加之石油化工企业从生产到销售的组织链条皆以半企业、半行政的形式存在，反映到成品油定价机制上，呈现出的就是个半成品。 </P>
<P>　　实际上，成品油定价机制改革在去年已经启动并原计划去年底前完成，但时至今日又无下文。作为上游产品，油价涉及基础民生。在物价总水平居高不下之时，对于成品油价格机制的改革，从注重企业利益转为注重民生利益是应有之义。改革越早越到位，价格才越能还原真实，进而化解百姓疑虑。 （徐立凡）</P><!-- end_ct -->', N'hsg', NULL, 92, CAST(0x0000A8910043A4CC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (14, N'韩国总统将派特使团访问中国', N'站内新闻', N'　&nbsp; 新华网首尔１月１６日电（记者张青）<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">韩国</SPAN>当选总统朴槿惠的发言人１６日宣布，朴槿惠将于２２日向中国派遣特使团。
<P>　　据韩国联合通讯社报道，特使团由韩国选举对策委员会前综合本部长金武星、议员沈允肇、赵源震和延世大学国际研究生院教授韩硕熙四人组成。</P>
<P>　　发言人表示，特使团此行将与最大经济伙伴中国交流经济发展方案，并讨论包括安全问题在内的其他议题。</P>
<P>　　报道说，这是朴槿惠首次向他国派遣特使团，表明其重视并希望深化韩中关系。</P>', N'hsg', NULL, 76, CAST(0x0000A8910043A4CC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (15, N'李长春观看全国优秀剧目展演', N'站内新闻', N'<SPAN id=content>
<P>　　新华网北京９月２８日电中共中央政治局常委李长春２８日晚来到北京天桥剧场，与首都近千名观众一起观看了２０１２年全国优秀剧目展演的芭蕾舞剧《小美人鱼》。他称赞这部芭蕾舞剧舞台绚丽、表演精湛，思想性、艺术性、观赏性俱佳。他希望广大艺术工作者大力弘扬优秀传统文化，积极吸收借鉴国外优秀文化成果，加快推进体制机制、内容形式、方法手段创新，创作生产更多群众喜闻乐见的优秀文艺作品，为丰富群众文化生活、促进文化繁荣发展作出更大贡献。</P>
<P>　　中共中央政治局委员、国务委员刘延东，全国政协副主席张榕明一同观看演出。</P>
<P>　　芭蕾舞剧《小美人鱼》是中央芭蕾舞团新近引进、排演的剧目。近年来，中央芭蕾舞团坚持把“请进来”与“走出去”相结合，通过引进世界不同流派、不同风格的芭蕾舞蹈作品，不断提升中央芭蕾舞团的艺术水平。芭蕾舞剧《小美人鱼》由德国著名芭蕾舞编导约翰·诺伊梅尔根据安徒生童话《海的女儿》改编，经中央芭蕾舞团重新创排、演绎而成。该剧以大家熟知的《海的女儿》故事为线索，在绚丽的舞美、灯光、服装设计，以及优美的音乐衬托下，舞蹈演员翩翩起舞，展示出如梦如幻的奇特魅力，赢得现场观众阵阵掌声。</P>
<P>　　由文化部举办的“讴歌伟大时代，艺术奉献人民——２０１２全国优秀剧目展演”活动，于８月至１０月期间，集中展演来自全国各省区市、部队系统和国家艺术院团的１１９台优秀剧目，演出场次超过２４０场，全面展示近年来我国舞台艺术创作和人才培养取得的丰硕成果，为迎接党的十八大胜利召开营造良好氛围。</P></SPAN>', N'hsg', NULL, 13, CAST(0x0000A8910043A4CC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (16, N'土耳其东部地震死亡人数超过100人', N'新闻公告', N'&nbsp;&nbsp;&nbsp;&nbsp; 新华网安卡拉１０月２３日电（记者郑金发　戚燕凌）据土耳其道安通讯社２３日报道，到目前为止，土耳其东部凡省地震造成的死亡人数已经超过１００人，另有３６６人被埋在废墟下。
<P>&nbsp;&nbsp;&nbsp;&nbsp;目前，土耳其已有３８个省出动１２７５个地震救灾小组前往凡省地震灾区积极开展营救，在地震灾区已有１４５辆救护车和５００名医务人员。土耳其军队也派出６个营的兵力前往地震灾区援助救灾工作。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;据土耳其伊斯坦布尔地震研究中心报告，当地时间２３日１３时４１分（北京时间１８时４１分），凡省发生里氏７．２级地震，震中位于和伊朗接壤的凡省塔巴利村，震源深度５公里。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;据土耳其ＮＴＶ电视台报道，土耳其东部凡省当地时间２３时４５分（北京时间２４日４时４５分）又发生了里氏５．７级地震。但据美国地质勘探局地震信息网消息，土耳其此次地震为里氏６级，震源深度９．８公里。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;土耳其是一个地震多发国家。１９９９年，土耳其西北部地区曾连续发生两次大地震，造成约１．８万人死亡。</P>', N'hsg', N'upload/1317085910921.jpg', 58, CAST(0x0000A89100FB6634 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (17, N'“嫦娥三号”发射成功 开启中国航天新征程', N'新闻公告', N'<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">新华网西昌１２月２日电（记者李宣良　李清华　余晓洁）嫦娥抱“玉兔”，逐梦广寒宫——承载着中国首次地外天体软着陆和巡视探测任务的嫦娥三号月球探测器，１２月２日１时３０分从西昌卫星发射中心顺利升空，中国航天由此开启了一段崭新征程。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">５天之后，经过３８万公里太空旅程的嫦娥三号将抵达环月轨道。如果一切顺利，着陆器和“玉兔”号月球车将在１２月中旬登陆月球，中国可望成为世界上第三个有能力独立自主实施月球软着陆的国家。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">作为中国探月工程“绕、落、回”三步走战略中承上启下的关键一环，“嫦娥落月”不仅寄托着千百年来人们关于月宫的种种美丽想像，更充满着技术上的风险。正因为如此，当长征三号乙运载火箭橘红色的尾焰从人们视线里慢慢消失时，一个民族的思绪也被带进了茫茫太空——</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">漫漫奔月路，人们期盼着嫦娥三号能够平安着陆月球。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">航天是充满风险的事业，月球探索更是如此。迄今为止，人类共进行了１２９次月球探测活动，成功率仅５１％。对于嫦娥三号来说，实现成功发射仅仅是“万里长征第一步”。在接下来的征途中，各个系统均有大量新技术和新研产品的嫦娥三号，还要经受月面软着陆、两器分离、月地间遥操作、月面生存等众多充满挑战的考验。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">探月工程副总指挥李本正说，针对可能出现的问题，科技人员准备了２００多套预案。对方案严谨设计、对计划科学论证、对质量锱铢必较、对管理精细追求……正是中国航天人的这种极端认真和高度负责，让人们对嫦娥三号充满信心。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">展望中国航天征程，月球探索必将带来更多惊喜与收获。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">作为人类深空探测的起点，探月具有许多现实而重大的价值：提供战略性资源，开展真空、微重力和低磁场试验，观测太空，监测地球环境变化……这其中不少内容正是嫦娥三号的使命。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">中国的月球探索活动，虽然起步晚，但是起点高；虽然投入少，但是效益高。首次发射的嫦娥一号，实现了４项科学目标，获得了中国第一幅全月球影像图；嫦娥二号获得了更清晰、更详细的影像和数据，创造了世界航天领域的多项第一，为嫦娥三号实现月球软着陆奠定了基础。可以相信，装备更先进、性能更优越的嫦娥三号，将为人类认识月球作出更大的贡献。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">畅想中国航天新征程，“航天梦”必将为“中国梦”注入更强大动力。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">“中国梦”蕴含“航天梦”，“航天梦”助推“中国梦”。随着嫦娥登月成功，广袤的太空将会出现更多、更活跃的中国身影：在近地轨道组装大型空间站，开展地面上无法进行的科研实验；开展有人探月活动、组装飞往火星等天体的飞行器，把中华民族的梦想写在更加高远的太空……</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">遥望嫦娥，让我们共同期待，期待中国航天又一段辉煌旅程的开始！</P><!--/enpcontent-->', N'hsg', N'upload/1317086069593.jpg', 91, CAST(0x0000A89100FB6634 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (18, N'工信部严打黑手机“吸费” 将抽查手机内置信息', N'新闻公告', N'<P>　　工信部近日联合国家工商总局发出《关于进一步整治手机“吸费”问题的通知》指出，目前未获得进网许可证的非法手机“吸费”现象比较严重，将掀起一轮严打风暴。</P>
<P>　　昨日公布的这则通知指出，在前一段时期的整顿下，目前手机“吸费”问题整体上得到一定程度的遏制，但未获得进网许可证的非法手机“吸费”现象仍然比较严重。两部委决定加大整顿力度。</P>
<P>　　其中，《通知》对手机内置软件提出了新要求。手机生产商在申请进网许可时要提交芯片商、软件开发商及 软件版本等信息备查。工信部将对手机内置信息进行抽查，发现问题的企业将严肃处理。</P>
<P>　　《通知》要求，SP运营商建立日常拨测机制，及时处理和通报在拨测中发现问题的内置业务和合作伙伴。针对流通环节中的“黑手机”，《通知》指出，将加大对手机市场销售假冒伪劣商品以及伪造产地、伪造或冒用他人厂名厂址违法行为的打击力度，严查经销没有或伪造冒用进网许可证、许可标志手机的行为。</P>
<P>　　去年以来手机“吸费”的问题突出，不法分子通过手机的内置软件，在用户不知情的情况下，让手机自动点播或订制服务，或者在用户正常操作其他业务时，手机触发点播或订制服务，或者用户点击订制类服务后，未经二次确认即扣除相关费用，严重损害消费者合法权益。针对这些情况，中国移动近日在业界首次推出增值业务扣费主动提醒。</P>
<P>　　作者：焦立坤 </P><!-- end_ct -->', N'hsg', N'upload/1317086056687.jpg', 67, CAST(0x0000A89100FB6634 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (19, N'发改委官员：城镇化户籍改革应减少限制条件', N'新闻公告', N'<DIV id=artbody class=artCon><!--enpcontent-->
<P align=center><IMG style="WIDTH: 400px; HEIGHT: 266px" id=22758618 title="7月3日，在“城镇化改革系列谈”上，新京报社社长戴自更（左）和发改委城市和小城镇改革发展中心主任李铁（右）进行对话。新京报记者 浦峰 摄" hspace=0 alt="7月3日，在“城镇化改革系列谈”上，新京报社社长戴自更（左）和发改委城市和小城镇改革发展中心主任李铁（右）进行对话。新京报记者 浦峰 摄" src="http://images.china.cn/attachement/jpg/site1000/20130716/00016c42d95c134ed3770d.jpg" width=400 height=266 md5=""></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><FONT color=#333399>7月3日，在“城镇化改革系列谈”上，新京报社社长戴自更（左）和发改委城市和小城镇改革发展中心主任李铁（右）进行对话。新京报记者 浦峰摄</FONT></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">近日，国家发改委城市和小城镇改革发展中心与新京报社联合主办“城镇化改革系列谈”特别节目。7月3日，节目举行第一期活动。发改委城市和小城镇改革发展中心主任李铁与新京报社社长戴自更进行了对话。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">两人就我国新型城镇化进程中的户籍制度改革、新型城镇化的内涵、新老市民利益关系协调、农民工进城后的就业问题与城市产业发展、地方实践的经验与借鉴等方面进行了探讨。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">李铁认为，城镇化的核心是农民工市民化和城市可持续发展。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">戴自更认为，城镇化的核心不是为了GDP，而是要把提高市民、特别是农民享受公共服务的档次当做目的。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>城乡二元制制约城镇化发展</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">“中国的城镇化不是那么简单，要解决农民进城过程中一系列的问题。”</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">戴自更：从去年十八大到今年的两会，中央和国务院提出中国未来经济发展的主要方向——城镇化。李主任参与并见证了有关政策制定的过程。我先问一个问题，城镇化具体有哪些内涵？</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">李铁：城镇化内涵实际上比较简单，就是农民进城。中国的城镇化不是那么简单，要解决农民进城过程中一系列的问题。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">第一是如何通过一系列制度改革来解决农民进城以后和城镇居民的平等化，这里关键问题就涉及户籍制度改革。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">第二是农民进城要享受公共服务，享受居住、就业等方面的均等待遇。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">所以，新型城镇化内涵就两个，首先是农民工市民化，第二个就是可持续发展。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">戴自更：中国城乡是二元结构，一种是农业人口，一种是非农业人口，长期分割造成壁垒，严重制约城镇化的发展。前不久中央出台有关户籍制度改革方案，大致是在中小城市放开户籍制度，在中等城市有序地推进，在大城市方面有条件地放开，你觉得要解决这个问题，有什么特别好的途径？</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">李铁：中小城市解决户籍壁垒实际上早已经有政策。2000年中央11号文件(《中共中央、国务院关于促进小城镇健康发展的若干意见》)就明确在县级市以下，包括县级市放开农民进城政策，农民们可以在农村保留自己的土地，保留自己的宅基地。到了2010年又进一步明确在地级市放宽，居住达到一定期限，有稳定的就业，缴纳社保，只要满足这三项就可以进城。这几个文件颁发以后，解决了中小城市当地农民进城落户的政策限制问题。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">现在看，当下户籍制度改革面临着几方面的新问题：一是当地农民落户已经不是主要矛盾，很多当地农民特别是近郊农民，因为有土地升值预期，有宅基地等，并不愿意转为城镇户口；二是本地人对外来人口也就是非本地户籍农民进城普遍排斥；三是以城市行政等级确定户改优先顺序的思路不好操作。大中小型城市，人口规模不一样，发展也不平衡，由于公共服务差别较大，涉及户改的利益支出差别也大，“一刀切”的政策难以落实；四是外来人口所占比重不同，改革的压力也不同。有的城镇人口倒挂，外来人口是本地人口的几倍。这就很难放开落户限制；五是大城市主城区和下辖区的外来人口如何区分；六是现在户改设置的条件比较苛刻。例如以社保缴纳年限为前提，就没有考虑到我国有1亿左右农民工属于灵活就业，没有地方缴纳社保；七是各地户改态度并不积极，没有哪个城市愿意主动放开落户政策。这就牵扯到解决农民工进城，给地方政府多大空间的问题。把改革主动权交给地方，也直接影响到实施的效果。</P><!--/enpcontent--></DIV>', N'hsg', N'upload/1317085936937.jpg', 53, CAST(0x0000A89100FB6634 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (20, N'嫦娥二号完成发射场区测试检查', N'新闻公告', N'<P>　　昨天，中国探月工程新闻发言人发布消息称，嫦娥二号卫星和火箭已完成发射场区的测试和检查，测试结果正常，完全满足发射的技术条件，将于10月1日18时59分57秒在西昌卫星发射中心发射。如果遇到气候等原因，不能在第一窗口时间发射，还选择了10月2日和3日择机发射。</P>
<P><STRONG>　　&gt;&gt;任务概述奔月飞行约需112小时</STRONG></P>
<P>　　本次发射将使用长征三号丙运载火箭，将嫦娥二号卫星送入近地点高度200公里、远地点高度约38万公里的直接奔月轨道。卫星奔月飞行约需112小时，其间计划进行2-3次轨道修正，并开展X频段测控、紫外导航等试验和空间环境探测。</P>
<P>　　当卫星到达月球附近，将实施近月制动，进入近月点100公里的椭圆轨道。再经过两次轨道调整，进入100公里的极月圆轨道。之后，卫星将择机变轨，进入100公里×15公里椭圆轨道，拍摄后续任务着陆的虹湾预选着陆区图像，分辨率优于1.5米，并验证快速测定轨等相关技术。1-2天后，卫星返回100公里环月轨道，继续技术试验和科学探测。</P>
<P><STRONG>　　&gt;&gt;记者探访飞控大厅进行最后演练</STRONG></P>
<P>　　北京航天飞行控制中心是继俄罗斯、美国之后诞生的世界第三、中国第一大载人航天飞行控制中心，也是我国绕月探测工程的飞行控制中心。昨天，记者走进飞控大厅，嫦娥二号发射前的最后一次演练正在紧张进行中。厅正前方一个长12米、宽4米的巨幅大屏幕，一分为四，分别显示着来自发射场的画面、反映卫星飞行轨迹的三维动画图以及各测控站、测量船分布图。身着蓝色工作服的科研人员端坐在显示屏前，收集从各测控站(船)发来的数据。位于飞控大厅后侧的终端机房的科技人员，与前方人员遥相呼应，密切监视卫星的飞行状态。</P>
<P><STRONG>　　&gt;&gt;探测意义 为开发月球资源做准备</STRONG></P>
<P>　　嫦娥二号卫星是我国第二颗探月卫星。那么，开展月球探测究竟有何意义呢？</P>
<P>　　中国航天科技集团有关专家说，实施月球探测工程，具有经济、科技和国家发展战略等方面的重大意义。实施月球探测工程，将为人类开发利用月球资源做准备。人类已取得的月球探测成果表明，月球上特有的能源和矿产，是对地球资源的重要补充和储备。</P>
<P>　　实施月球探测工程，将促进我国经济可持续发展。我国月球探测工程所带动的基础科学和高新技术的进步，对于促进经济的发展将带来牵引和推动作用。</P>
<P><STRONG>　　&gt;&gt;专家揭秘 奔月经过五个飞行阶段</STRONG></P>
<P>　　昨天，北京飞控中心主任朱民才向记者介绍，“嫦娥二号绝不是嫦娥一号的简单重复，技术状态变化多达60多项。”他表示，嫦娥二号卫星要经过发射入轨段、地月转移轨道段、月球捕获轨道段、环月运行段、试验轨道段等五个飞行阶段，中途要经过多次变轨，控制过程非常复杂。“任何一次轨控异常均可能导致卫星飞行轨道偏离设计轨道，如果不能及时进行应急控制，将会影响整个任务。因此，风险和挑战前所未有。”朱民才说。</P>
<P><STRONG>　　&gt;&gt;气象保障 天气平稳不会影响发射</STRONG></P>
<P>　　中国气象局应急减灾与公共服务司司长陈振林昨天在气象局新闻发布会上回答记者提问时说，从29日到10月3日，西昌卫星发射中心天气以阴天间多云为主，有阵性降水。</P>
<P>　　根据中国气象局国家空间天气预警中心的判断，预计9月30日到国庆假期前期，空间天气平稳，太阳活动水平低，对“嫦娥二号”发射没有不利的影响。陈振林表示，气象部门会为发射中心做好滚动气象保障服务。</P>
<P>　　综合新华社央视本报记者李铁铮 通讯员熊卫平姜宁报道</P><!-- publish_helper_end --><!-- google_ad_section_end --><!-- 正文内容 end --><!-- $ {新版相关媒体新闻显示} -->', N'hsg', N'upload/1317085922265.jpg', 29, CAST(0x0000A89100FB6634 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (21, N'ＩＭＦ总裁敦促成员国批准治理与份额改革方案', N'新闻公告', N'<SPAN id=content>
<P>　　新华网华盛顿１２月２０日电（记者蒋旭峰　樊宇）国际货币基金组织（ＩＭＦ)总裁拉加德２０日敦促成员国尽快批准２０１０年提出的国际货币基金组织治理与<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">份额</SPAN>改革方案。</P>
<P>　　国际货币基金组织当天发表声明说，国际货币基金组织执行董事会近日评估了２０１０年１２月通过的有关<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">治理</SPAN>与份额改革方案的实施进展情况。截至１２月１４日，已有份额占７７．１％的１４５个成员批准了份额改革方案，投票权占７０．２％的１２９个成员批准了执董会改革方案。</P>
<P>　　声明说，但目前尚未达到治理与份额改革方案生效所需的法律门槛。执董会改革方案生效需要投票权占８５％的成员批准，而份额改革方案生效需要占份额不少于７０％的成员批准执董会改革方案。目前国际货币基金组织的最大股东国美国尚未批准治理与份额改革方案，成为改革完成的最大阻力。</P>
<P>　　国际货币基金组织总裁<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">拉加德</SPAN>在声明中说，没有完成批准程序的成员应尽快完成必要的法律程序，完成这些重要的改革。</P>
<P>　　根据该改革方案，国际货币基金组织的份额将增加一倍，成员的份额比重也将进行调整，约６％的份额将向有活力的新兴市场和发展中国家转移。国际货币基金组织还提议改革执董会，以促成一个更具代表性、全部由选举产生的执董会。执董会改革完成后，欧洲国家将让出两个席位，以提高新兴市场和发展中国家在执董会的代表性。</P></SPAN>', N'hsg', NULL, 34, CAST(0x0000A89100FB6634 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (22, N'全球经济能否不再“熄火”', N'新闻公告', N'<STRONG><FONT color=#008080>&nbsp;新一届的世界经济论坛又在瑞士小镇达沃斯开幕了。全球经济尚未走出低迷的阴霾，这将是一次什么样的会议？论坛主席克劳斯·施瓦布说：“我们不希望这次会议成为一届绝望的会议。我们应当重塑自信，击败可能的‘熄火’。这应当是一次积极乐观主义的会议。”</FONT></STRONG>
<P align=center><STRONG><FONT color=#008080><IMG id={0E32DA7A-613D-4A20-ADAE-3A2705EFAF88} title="" style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" hspace=0 src="http://news.xinhuanet.com/2011-01/29/13711836_71n.jpg" align=center border=0 sourcedescription="" sourcename=""></FONT></STRONG></P>
<P><FONT face=楷体_GB2312 color=navy>&nbsp;&nbsp;&nbsp;&nbsp;1月26日，在瑞士达沃斯举行的世界经济论坛年会开幕式上，世界经济论坛主席克劳斯·施瓦布致辞。当天，第41届世界经济论坛年会在瑞士达沃斯开幕。来自全球100多个国家和地区的2500多名各界精英将探寻新形势下如何确立全球新经济秩序和新经济治理规则。 新华社发（世界经济论坛供稿）</FONT></P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;第41届世界经济论坛年会１月２６日至３０日召开，主题为“新形势下的共同准则”。</P>
<P><FONT color=blue><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;乐观情绪显现</STRONG></FONT></P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;施瓦布表示，跨国公司的信心已经差不多恢复至金融危机爆发前的水平。咨询公司普华永道日前公布的调查显示，全球商界领袖对企业前景乐观。在被访的全球各地1201名首席执行官中，48%的人表示对自己企业未来12个月的增长前景“非常有信心”；88%的首席执行官表示，他们至少对前景有“一些”信心。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;金融领域的高管已经开始热衷于展示该行业成功摆脱全球金融危机，政界人士则希望尽快结束欧元区的经济低迷。全球经济的复苏虽然还有很多不确定性，但是人们正在找回自信，有了新的乐观情绪。</P>
<P><FONT color=blue><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;通胀压力上升</STRONG></FONT></P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;与会人士就广泛议题展开讨论，包括欧洲主权债务危机、全球通货膨胀趋势、贸易和货币“战争”隐忧、粮价上涨和全球金融体系遗留问题。</P>', N'hsg', NULL, 8, CAST(0x0000A89100FB6634 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (23, N'美国务卿：有5国谈及对叙动武 阿盟国家愿出钱', N'新闻公告', N'<DIV id=artbody class=artCon><!--enpcontent-->
<P align=center><IMG id=23360039 alt="美国务卿：有5国谈及对叙动武 阿盟国家愿出钱" src="http://images.china.cn/attachement/jpg/site1000/20130906/001aa0bce2741393543001.jpg" md5=""></P>
<P style="TEXT-ALIGN: center" class=pictext align=center>　　<FONT color=#333399>3日，克里在参院听证会上。</FONT></P>
<P style="TEXT-ALIGN: center; COLOR: #333399" align=center><FONT color=#333399><IMG id=23360040 alt="美国务卿：有5国谈及对叙动武 阿盟国家愿出钱" src="http://images.china.cn/attachement/jpg/site1000/20130906/001aa0bce2741393543002.jpg" md5=""></FONT></P>
<P style="TEXT-ALIGN: center; TEXT-INDENT: 30px; MARGIN: 0px 3px 15px" align=center><FONT color=#333399>3日，美参议院外委会举行叙利亚问题听证会，民众在现场示威，抗议美国军事干预叙利亚。</FONT></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>我们热爱美国人民，有数百万美国人民拥有阿拉伯血统，其中就包括叙利亚。我们不愿意与美国开战。如果一旦开战，任何人都无法控制将要发生的一切。</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>——叙利亚副外长梅克达德</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">授权对叙利亚动武决议案4日通过美国参议院外交关系委员会投票，艰难闯过国会第一关。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>在国会还要过“三关”</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">参院外交关系委员会当天以10：7的投票结果通过了决议案。决议设立了60天的军事行动时限，如果届时没有完成打击，可在与国会协商后延长30天。决议将军事行动的范围限定在叙利亚境内，并禁止派地面部队参战，但允许在紧急情况下派遣小规模的解救部队。决议生效后30天内，白宫还必须向国会提交解决叙利亚冲突的外交办法。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">但这份议案并未在委员会内部获得一边倒的支持。4日，委员会召开了整整一上午的闭门会议，最后以较小优势过关。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">在通过委员会投票后，参院全院有望在下周就此展开辩论与投票。但参院外交关系委员会主席梅嫩德斯承认，从委员会内部情况来看，当前动武决议案的阻力较大，全院投票可能需要60张赞成票才能确保过关。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">在参院委员会过关之后，动武授权还需经过众议院外交关系委员会审核。国防部长哈格尔和国务卿克里当天前往众院外委会参加听证会，希望说服议员支持动武。要拿到动武授权，奥巴马必须说服参众两院都投票支持决议案。媒体普遍认为，动武决议案在众议院的阻力比在参议院还要大。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">据新华社电</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>沙特卡塔尔谈“参战”</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">又讯美国国务卿克里当地时间4日在出席众议院外交委员会听证会上说，目前，已经有沙特、阿联酋、卡塔尔、土耳其和法国已谈及对叙采取行动的问题，而还有不少阿拉伯国家愿意为叙军事行动埋单。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">克里当天在众议院外交委员会参加了长达4个小时的听证会，以说服众议院议员同意针对叙利亚的军事行动。克里在会上说，美国已经得到了许多国家的支持，包括许多阿拉伯国家。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">“已经谈及行动的一些国家包括沙特、阿联酋、卡塔尔、土耳其和法国。”克里说。</P><!--/enpcontent--></DIV>', N'hsg', NULL, 75, CAST(0x0000A89100FB6634 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (24, N'“神曲”走红背后：艺术还是垃圾？', N'新闻公告', N'<P align=center><FONT face=楷体_GB2312 color=navy><IMG id={39698007-F4C7-47D3-A95D-39E11B1E3911} src="http://news.xinhuanet.com/2011-02/22/121106631_101n.jpg"></FONT></P>
<P class=pictext style="COLOR: navy; FONT-FAMILY: 楷体_GB2312" align=center><FONT face=楷体_GB2312 color=navy>演唱“神曲”的龚琳娜已经成为电视娱乐节目的常客。</FONT></P>
<P class=pictext style="COLOR: navy; FONT-FAMILY: 楷体_GB2312; TEXT-ALIGN: left" align=left><STRONG>&nbsp;&nbsp;&nbsp; 从《忐忑》到《丢丢铜》，一首首“神曲”诞生的背后，究竟是什么因素在作祟——</STRONG></P>
<P class=pictext style="TEXT-ALIGN: left" align=left>　<FONT face=仿宋_GB2312>　现在声乐界太沉闷了，在歌唱上有创造性的越来越少了，很多人都是越唱越进入了一种格式化的套路，像龚琳娜这种探索其实挺可贵的。</FONT></P>
<P style="FONT-FAMILY: 仿宋_GB2312"><FONT face=仿宋_GB2312 color=navy>　　著名歌唱家王昆</FONT></P>
<P style="FONT-FAMILY: 仿宋_GB2312"><FONT face=仿宋_GB2312>　　当年青歌赛民族唱法银奖的获得者，好好唱民歌，没火，现在居然靠这种邪乎的东西火了，真是一种悲哀！</FONT></P>
<P style="FONT-FAMILY: 仿宋_GB2312"><FONT face=仿宋_GB2312 color=navy>　　某知名词作家</FONT></P>
<P style="FONT-FAMILY: 仿宋_GB2312"><FONT face=仿宋_GB2312>　　现代人生活中充满了不确定性，而《忐忑》在表达内容上的模糊性，恰好契合了这种不确定性，它什么都没说，其实又什么都说了。</FONT></P>
<P style="FONT-FAMILY: 仿宋_GB2312"><FONT face=仿宋_GB2312 color=navy>　　央视特约评论员杨禹</FONT></P>
<P style="FONT-FAMILY: 仿宋_GB2312"><FONT face=仿宋_GB2312>　　由于歌词的模糊、唱法的奇特，《忐忑》充分调动了人们的想象力，激起了人们的好奇感和参与感，而这也正是大众娱乐的特征。</FONT></P>
<P style="FONT-FAMILY: 仿宋_GB2312"><FONT face=仿宋_GB2312 color=navy>　　媒体评论人孙虹钢</FONT></P>
<P>　　湖南卫视上周直播的元宵喜乐会上，龚琳娜和声灵组合带来的一曲《丢丢铜》，再度被网友围观。从《忐忑》到《丢丢铜》，对于龚琳娜的音乐，公众舆论一直处于两极化状态。针对作品，有人说“感觉像噪音，听完她的歌只想去揍人”，有人说“此曲只应天上有，人间哪得几回闻”；针对龚琳娜，有人赞她执著于民歌艺术探索，也有人惋惜她滑入搞怪成瘾、哗众取宠的泥淖。</P>', N'hsg', NULL, 34, CAST(0x0000A89100FB6634 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (25, N'微博成最新反腐方式 更直接、更给力', N'新闻公告', N'　&nbsp; 记者昨日采访了一些官员和相关专家，不少人认为微博已成为一种最新的反腐方式。
<P><STRONG>　　官员应加强个人修养</STRONG></P>
<P>　　省委党校党史党建教研部主任董连翔教授对记者表示，这一事件给广大党员干部敲响了警钟：在现在监督手段越来越健全的大环境下，党员干部更应该加强自身修养，严守道德底线。“你可以有私生活，但你的私生活也应当建立在社会公德的制约之下。”而且，董连翔指出，作为党员干部，那就是公众人物，更应当自觉接受社会各界、各种形式的监督。</P>
<P><STRONG>　　网络监督更直接有力</STRONG></P>
<P>　　董连翔认为，从前几年的周久耕事件，到今天的溧阳卫生局长事件，人们可以看到的是，包括微博在内的网络舆论已经成为群众监督的非常重要的途径。对党委政府而言，多了一个制约监督权力的平台；对公众来说，也多了一种快速监督的途径。对领导干部而言，也多了一种约束自己的机制。“事实证明，网络监督往往更直接，更有力。”</P>
<P><STRONG>　　纪检部门应主动介入</STRONG></P>
<P>　　前不久重庆市丰都县检察院微博通过开通“防腐微博”，发现了粉丝在微博跟帖评论中的线索，成功挖出当地一家医院包括一名副院长在内的两名贪腐人员。</P>
<P>　　对此，董连翔教授指出：纪检部门对微博等网论线索的介入，不但是非常必要的，而且应当越及时越好。尤其是，到一定的时期可以将调查的真相在制度和纪律允许的范围内及时公之于众，为公众打开一种新的畅通、公开的监督渠道。 本报记者　石小磊</P>', N'hsg', NULL, 80, CAST(0x0000A89100FB6634 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (26, N'内蒙古自治区大力推进农村牧区精神文明建设', N'新闻公告', N'<P style="TEXT-ALIGN: center" align=center><STRONG><FONT color=navy>&nbsp;&nbsp;&nbsp;&nbsp;内蒙古自治区实施“以会促创、典型示范”战略，</FONT></STRONG></P>
<P style="TEXT-ALIGN: center" align=center><STRONG><FONT color=navy>大力推进农村牧区精神文明建设</FONT></STRONG></P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;新华网呼和浩特６月２０日电　１９９６年以来，内蒙古党委、政府在抓好经济建设的同时，高度重视农村牧区精神文明建设工作，大力实施“以会促创、典型示范”重点推进战略，有力地推动了农村牧区精神文明建设。“以会促创、典型示范”战略，已成为内蒙古推进农村牧区精神文明建设机制创新和载体创新的品牌工程。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;春风化雨，雨露滋润。１５年来，在“以会促创、典型示范”战略的推动下，全区从以创建文明村镇（嘎查、苏木）为主要形式的群众性精神文明创建活动，演进为社会主义新农村新牧区精神文明建设的全面发展，成为全区广大农牧民奔小康、建和谐的生动实践。通过申办会议的形式，每年选择一个基础条件好、农村牧区精神文明创建活动开展好的地区召开全区农村牧区精神文明建设现场经验交流会，总结交流经验，观摩创建成果，宣传推广典型，调动了各级党委、政府加强精神文明建设的积极性，强化了“一把手两手抓”的政治责任，实现了以点带线、以线带面、各个突破、积少成多、集中连片、整体推进的效果，形成了自治区、盟市、旗县（市区）、苏木乡镇、嘎查村“五级联创”精神文明建设的良好格局。</P>
<P><STRONG><FONT color=blue>&nbsp;&nbsp;&nbsp;&nbsp;夯实基础，提高农牧民道德水平</FONT></STRONG></P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;精神文明建设的根本任务是提高公民素质，中心环节是思想道德建设。在推进“以会促创、典型示范”战略中，自治区始终围绕民族团结、边疆稳定、经济发展、社会和谐这个主题，坚持以社会主义核心价值体系建设为根本，把思想道德建设、促进各民族共同团结奋斗、共同繁荣发展作为农村牧区精神文明建设的核心。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;近年来，全区各地将提高农牧民思想道德水平建设作为工作的重点，关注转型期农村牧区精神文明建设领域出现的新问题，针对农牧民思想道德领域存在的突出问题，广泛开展了“农牧民大讲堂”、“金喇叭工程”、“七网连牧户”、“百佳文明农牧民”、道德模范和身边好人学习宣传等群众性思想教育和道德实践活动。各地还利用广播、标语、宣传栏、手机短信、网络互动、图片展览等形式，着力提高农牧民思想道德素质，广泛宣传普及基本道德规范，发动农牧民群众积极参与“道德模范”、“致富能手”、“文化能人”、“民族团结先进个人”等一系列有特色、有影响的评比活动。１５年来，先后涌现出草原之子——廷·巴特尔，牧区群众的杰出代表、全国道德模范乌兰其其格等一大批先进人物。目前，全区１０１个旗县区都建立了理论政策讲堂，各苏木乡镇普遍设立了流动讲堂，不少嘎查村还建起了“道德讲堂”，乡村干部用群众的语言讲述群众身边的好人好事，推动了良好社会风尚的形成。</P>', N'hsg', NULL, 76, CAST(0x0000A89100FB6634 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (27, N'中国花样滑冰9人被指年龄造假 奥委会要求查清', N'新闻公告', N'&nbsp;&nbsp;&nbsp; 董芳霄之后，又有中国运动员陷入“年龄门”。这次并非个别运动员，而是中国花滑队9名运动员一起陷入麻烦，其中包括都灵冬奥会银牌得主张丹/张昊。　昨日，美国媒体称，中国滑冰协会官网上公布的9名现役运动员年龄与国际滑联官网上的资料不相符，涉嫌造假。张丹/张昊，双人滑新星隋文静/韩聪，女单耿冰娃、许斌姝等知名运动员悉数在列。
<P>　　国际滑联规定，该赛季之初的7月1日年满15周岁的选手，方能参加奥运会和世锦赛；年满14周岁，才能参加其他成年组的比赛。而年满13周岁未满19周岁(单人)或21周岁(双人滑和冰舞选手)才有资格参加青少年组的比赛。</P>
<P>　　据美国媒体称，根据中国滑冰协会公开的信息，张丹生于1987年10月4日。这意味着她参加2002年盐湖城冬奥会和世锦赛时未满15周岁。张昊则生于1982年2月6日，这也意味着他携手张丹参加2003年青少年组世锦赛时，已经超龄。那届比赛，他俩最终夺魁。其他选手也都存在着类似的问题。</P>
<P>　　美国媒体同时还称，国际滑联已经知会中国滑冰协会，要求对方提供更多信息。“暂时我们没有任何评论。我们正在努力找到那份名单的位置，到底是谁制作了那份名单。只有得到这些信息之后，我们才会得到更多信息。”</P>
<P>　　国际奥委会主席罗格也开始介入此事，“年龄要是存在问题，必须要查清楚。尽管我尚不了解具体细节，但我们急切盼着双方尽快厘清事实，采取措施。我将与(奥委会的相关)同事做进一步沟通。”</P>
<P>　　本报讯 美国媒体表示他们的信息来源为中国滑冰协会的官网。在“协会公告”这一频道中，包括“2010/2011年度全国冬季项目注册运动员合格名单”、2010/2011年度全国冬季项目注册运动员不合格名单”以及“关于冬季项目第二批运动员注册公布通知及名单”等几个名单或通知。</P>
<P>　　涉及的几份名单中，均标明了运动员的出生年月。在2010-2011全国冬季项目注册运动员不合格名单中包括张丹、张昊、庞清、佟健等人。庞清、佟健的备注一栏中标有“缺户口本复印件”的信息，而张丹、张昊的备注一栏信息则是“&amp;”的符号。</P>
<P>　　张丹、张昊的名字随后出现在第二批合格名单中。两份名单中，张丹、张昊的出生年月一致，分别是1987年10月和1982年2月。昨晚七时左右，官网上的这些名单已经被删除。</P>
<P>　　■&nbsp;官方表态</P>
<P>　　<STRONG>赵英刚：</STRONG></P>
<P>　　<STRONG>张丹/张昊绝对没问题</STRONG></P>
<P>　　<STRONG>冬运中心主任解释或在注册等环节存在问题</STRONG></P>
<P>　　本报讯&nbsp;“张丹/张昊的年龄肯定没问题，其他年轻选手的年龄还需要进一步核实。”昨日接受采访时，冬运中心主任赵英刚对花滑“年龄门”事件发表了看法，指出可能是在注册等环节上存在问题导致了这一情况出现。</P>
<P>　　昨日下午三点半左右，记者就“年龄门”问题赶往冬运中心。但赵英刚并不在办公室，他正在黑龙江督战单板滑雪世界杯中国站。接通电话之后，他表示对此尚不知情，希望记者采访分管花滑的副主任任洪国。</P>
<P>　　冬运中心的办公室并没有多少人。整个花滑队昨晚前往台湾，备战即将开始的四大洲花滑锦标赛，任洪国今日早晨飞往台湾督战。</P>
<P>　　大约六点左右，赵英刚通过电话对此事进行了回应。“张丹/张昊的年龄肯定是没问题的，他们参加过这么多次比赛，每一次我们都按照程序严格检查。至于其他年轻队员，我们还需要进一步核实调查。”赵英刚说。</P>
<P>　　对于此事发生的原因，赵英刚指出问题的环节可能出在地方的注册、送报或者官网的统计上。赵英刚同时表示，中心尚未收到国际滑联的核实信息，尽管花滑队相关领导都在台湾参赛，但相关的调查核实工作将在同期举行。</P>
<P>　　赵英刚也重申了中心反对年龄作假的态度，“对于年龄问题，中心的态度向来是明确的，我们坚决反对任何形式的瞒报、谎报和误报，抵制各类不实年龄的发生。”</P>
<P>　　■&nbsp;当事人语</P>
<P>　　<STRONG>张丹/张昊：</STRONG></P>
<P>　　<STRONG>觉得这事儿挺搞笑</STRONG></P>
<P>　　本报讯&nbsp;“一下午接到了几十个电话，全都是问这事的，我现在嗓子都哑了。”身陷“年龄门”中的张昊接通记者电话时，嗓音沙哑，表示已经被此事搞得有些心烦了。</P>
<P>　　张昊在国际滑联的报名出生日期为1984年7月6日，而张丹则是1985年10月4日。在中国滑冰协会的官网上，张昊的生日变成了1982年2月6日，张丹的生日则是1987年10月4日。</P>
<P>　　对于这一新闻，张昊表示有些哭笑不得，“我们本身没问题，谁知道他们瞎搞这个。我现在正在家里康复，也没上网，新闻怎么写的也不知道。其他不管了，只要自己的年龄是真实的就行了。”</P>
<P>　　由于手指的伤势，张丹/张昊本赛季一直没有参加比赛。张昊承认，年龄门已经让他受到了很大困扰，“我们一年没比赛，还整出这么多事。说实话，这事挺大的，不是什么小事。实在不行我可以把身份证号告诉大家。”</P>
<P>　　对于此事，张丹与张昊态度一致，“我觉得这事挺搞笑的。我还跟张昊说，这一年都没比赛，也没什么成绩，突然出这么个事是不是大家太想我们了。”</P>
<P>　　本版采写/本报记者 张宾</P><!-- publish_helper_end --><!-- 高清图推荐 开始 --><!-- 高清图推荐 结束 --><!-- 一键关注 开始 -->', N'hsg', NULL, 71, CAST(0x0000A89100FB6634 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (28, N'桂林屠宰量1/3生猪被私宰：私宰肉是怎样流向餐桌的', N'新闻公告', N'<P align=center><IMG id={0AF31807-D435-4426-B5B9-880EA858BA31} title="" style="WIDTH: 400px; HEIGHT: 198px" src="http://news.xinhuanet.com/2011-07/13/121658307_11n.jpg" align=center border=0 relativeid="{09B98AEE-A37B-493F-8F2E-1200F615A26E}" relativepic="/attachement/2/jpg/20110713/121658307_1.jpg"></P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px"><FONT face=楷体_GB2312 color=navy>桂林市叠彩区白竹干村委办公楼旁边的私宰点里，私宰者正在砍肉。谢建伟 张克庆摄影报道</FONT></P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;<FONT color=navy><STRONG>【阅读提示】</STRONG></FONT></P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;日前，广西桂林市4家定点屠宰企业联名上书桂林市商务局，递交了《请求恢复生猪屠宰执法报告》。报告称，“2011年以来，桂林市生猪屠宰执法工作是一片空白。桂林市每日生猪屠宰量逐日减少，由原来的每日1500头到如今的1000头左右，日均屠宰量少了500头左右，占全市生猪屠宰量的33%。”</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;那么，日均少了的那500头左右的生猪流向了哪里？这些私宰的生猪又怎样才能变为放心肉流向餐桌？记者连日来通过暗访发现，桂林某些村屯把生猪私宰当成主业，每天私宰量达300至400头。按照每头猪200斤肉计算，每天出现在市场上的私宰肉在6万斤至8万斤之间。这些私宰肉鱼目混珠进入了市场，走进了消费者的菜篮子。</P>
<P>&nbsp;&nbsp;&nbsp;<FONT color=navy><STRONG>&nbsp;多个非法屠宰点</STRONG></FONT></P>
<P style="COLOR: navy"><FONT color=navy><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;日私宰量达数万斤</STRONG></FONT></P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;据知情人透露，桂林市叠彩区白竹干村的私宰现象较为突出，属于“家庭式生产线”。为了调查清楚私宰肉如何流入市场，记者从7月5日凌晨4时开始连续6天蹲守在白竹干村至屏风菜市场的必经路段。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;7月6日凌晨5时左右，记者开车在白竹干村转了两圈，发现近10个私宰点，有的私宰点直接将肉摆放在地上。走近白竹干村的一排低矮房屋，记者发现里面忙得热火朝天：有的在杀猪，有的在砍肉，还有的将私宰猪肉放上摩托车。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;这个村的私宰肉流向哪些菜市？记者尾随一辆载有私宰肉的摩托车，看到摩托车穿过桂林市东二环路经建干北路来到了桂林市屏风市场。一路上，记者陆续看到有10多辆摩托车载着私宰肉，沿着这条线路进入屏风市场。调查发现，从白竹干村出来的私宰肉一半以上是运往距离白竹干2公里左右的屏风市场。从凌晨4点到下午4时都有人拉猪从该村出来。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;据住在附近的一位村民介绍，“每天早上4点左右，村里面就陆陆续续传来猪的尖叫声，跟上班似的很有规律。睡眠不好的人会被吵醒，头痛死了。”他说，白竹干的私宰已经很多年了，执法部门也来打击过，但都没有用。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;在屏风菜市场，记者假装买肉，问一位卖私宰肉的女摊主：“猪肉上面怎么没有盖章？”女摊主说：“我来得早了点，检疫的人等下才来。不过你放心，猪肉保证是好的，我给你看下合格证。”说完，她从装钱的筐子里拿出一张票据，像是生猪定点屠宰场（点）统一使用的《动物产品检疫合格证》，还没等记者看清就丢回了钱筐。</P>', N'hsg', NULL, 91, CAST(0x0000A89100FB6634 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (29, N'整治非法网络公关行为：各地迅速部署 各界积极支持', N'新闻公告', N'<P>&nbsp;&nbsp;&nbsp;&nbsp;按照中央外宣办、工业和信息化部、公安部、国家工商总局等四部门近日联合下发的《深入整治非法网络公关行为专项行动工作方案》要求，各地积极行动，立即部署，全面清理网上非法网络公关信息，此举得到了社会各界的积极反响和支持。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;河北大学新闻传播学院副院长杜友君说，开展整治非法网络公关行为非常必要，当前许多网络公关行为演变成了网络敲诈，一些所谓的网络公关公司打着“公关”的旗号为请托人删帖，却同时在另外一些网站上传帖子，造成越删越多的情况，很多人、企业因此上当受骗。而一些夸大其词的宣传帖则属于不正当竞争，这种失实的宣传理应得到整治。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;山东省委外宣办、省网络文化办公室等多部门联合下发文件，将深入整治非法网络公关行为专项行动工作的有关要求及时传达到各有关单位及重点新闻网站。要求按照《方案》，及时、稳步、扎实、有效地推动相关工作。截至４月２４日，山东省共清理删除相关信息２６２０余条，删除注册用户１６０余个，清理工作仍在继续中。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;黑龙江省专项行动文件目前进入会签阶段，同时黑龙江省网宣办要求黑龙江日报、东北网等当地有影响的媒体转载新华社稿件的同时，查找网络水军、推手等方面的新闻线索，进行深入采访报道，策划有关专题进行专项行动配合报道，形成强大的舆论氛围。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;福建省从今年４月中旬至６月上旬，将开展为期两个月的专项整治行动，重点整治违法违规、影响恶劣的非法网络公关行为，查处一批非法网络公关重大案件，依法严惩一批违法犯罪分子，曝光一批典型案例，清理网上非法网络公关信息。<BR><BR>&nbsp;&nbsp;&nbsp; 重庆市采取“疏管结合”的措施，主动及时疏导网络舆论，加大信息透明力度，积极取信于民，消除“网络水军”的生存土壤。一是打造华龙网“阳光重庆”、大渝报料台等平台，充分发挥网络媒体的信息桥梁和舆论监督作用，为网民提供客观反映问题和现象、理性表达意见和建议的在线便民通道；二是积极培养公众的理性意识和独立判断能力，加强对互联网舆论平台的监管，使理性表达成为舆论氛围的主流。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;河北省委宣传部舆情处处长王振儒说，网络公关是互联网时代的一种新生事物，当前我国网络公关存在一些非法乱象，非法网络公关行为有一定的市场，现在开展整治行动就是要加大网络管理，最大限度挤压非法网络公关的市场，要提高政府管理部门、相关企业的责任意识和法律意识，把网上、网下整治活动有机结合，这样才能做到标本兼治。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;“从即日起，网站利用１０天时间开展自查自纠，５月上旬起，我们将对网站自查自纠情况开展验收。”福建省委网络办常务副主任卢承圣在福建省委外宣办、省互联网协会牵头组织省内知名网站召开的“网站抵制非法网络公关座谈会”上说。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;重庆要求市内网站加强论坛、博客管理，随时开展自查自纠工作，在市内主要网站开辟举报平台，让拒绝非法网络公关成为广大网站和网民自觉自律的行为。<BR><BR>&nbsp;&nbsp;&nbsp; 黑龙江省重点新闻网站东北网的总编助理岳同明说，现在网站每天的编辑例会对记者自采稿件进行把关、指导，遇到难点问题、打擦边球的新闻，编辑、记者个人不能擅自处理。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;大众网、齐鲁网等山东重点新闻网站在显著位置转发《中央四部门整治非法网络公关》等一系列新闻和评论，并在论坛转帖，开展“打击非法网络公关”反“灌水”等行动，为整治非法网络公关行为专项行动营造舆论声势。网民“商汤论剑”说，“国家应该加快网络立法步伐，使网络在法律规范的范畴内依法运行，既有利于社会稳定，也可以减少网络犯罪。”</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;杜友君表示，在开展专项行动的同时，国家层面也应该开展论证制定相关的政策法规，使得打击整治有法可依，比如网络管理员的责任、权利、义务都要明确，正规网络公关行为也应有明确的界定。（参与采写记者：刘宝森、朱峰、辛林霞、郑良、胡振华、王晓磊）</P>
<P><BR></P>', N'hsg', NULL, 81, CAST(0x0000A89100FB6634 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (30, N'苍南火车站交警执勤室成立', N'新闻公告', N'<P align=center><IMG alt="" src="http://pic2.66wz.com/0/10/39/63/10396384_823109.jpg" border=0>&nbsp;</P>
<P>&nbsp;&nbsp;&nbsp; 3月30日消息：今天上午，“苍南县公安局交通警察大队一中队驻火车站执勤室”成立暨授牌仪式在苍南火车站广场举行。</P>
<P>&nbsp;&nbsp;&nbsp; 该执勤室的主要职责是承担维护车站周边道路交通安全管理任务，它的成立将有效改善火车站周围的道路交通环境，维护正常的道路交通秩序。（通讯员 李珊珊）</P>', N'hsg', NULL, 77, CAST(0x0000A89100FB6634 AS DateTime))
SET IDENTITY_INSERT [dbo].[xinwentongzhi] OFF
/****** Object:  Table [dbo].[shangpinxinxi]    Script Date: 03/19/2018 16:19:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shangpinxinxi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[shangpinbianhao] [varchar](50) NULL,
	[shangpinmingcheng] [varchar](50) NULL,
	[shangpinleibie] [varchar](50) NULL,
	[xinjiuchengdu] [varchar](50) NULL,
	[tupian] [varchar](50) NULL,
	[jiage] [varchar](50) NULL,
	[kucunshuliang] [varchar](50) NULL,
	[faburen] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[shangpinxinxi] ON
INSERT [dbo].[shangpinxinxi] ([ID], [shangpinbianhao], [shangpinmingcheng], [shangpinleibie], [xinjiuchengdu], [tupian], [jiage], [kucunshuliang], [faburen], [addtime]) VALUES (1, N'04270406591234', N'面包树上的女人', N'A类', N'7成新', N'upload/1493237238061.jpg', N'16', N'78', N'555', CAST(0x0000A8910043F224 AS DateTime))
INSERT [dbo].[shangpinxinxi] ([ID], [shangpinbianhao], [shangpinmingcheng], [shangpinleibie], [xinjiuchengdu], [tupian], [jiage], [kucunshuliang], [faburen], [addtime]) VALUES (2, N'02242109299984', N'宠物', N'B类', N'9成新', N'upload/1519477788013.jpg', N'20', N'10', N'555', CAST(0x0000A891015CCC30 AS DateTime))
SET IDENTITY_INSERT [dbo].[shangpinxinxi] OFF
/****** Object:  Table [dbo].[shangpinleibie]    Script Date: 03/19/2018 16:19:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shangpinleibie](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[leibie] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[shangpinleibie] ON
INSERT [dbo].[shangpinleibie] ([ID], [leibie], [addtime]) VALUES (1, N'A类', CAST(0x0000A891004338FC AS DateTime))
INSERT [dbo].[shangpinleibie] ([ID], [leibie], [addtime]) VALUES (2, N'B类', CAST(0x0000A89100433B54 AS DateTime))
SET IDENTITY_INSERT [dbo].[shangpinleibie] OFF
/****** Object:  Table [dbo].[liuyanban]    Script Date: 03/19/2018 16:19:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[liuyanban](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[cheng] [varchar](50) NULL,
	[xingbie] [varchar](2) NULL,
	[QQ] [varchar](50) NULL,
	[youxiang] [varchar](50) NULL,
	[dianhua] [varchar](50) NULL,
	[neirong] [varchar](500) NULL,
	[addtime] [datetime] NULL,
	[huifuneirong] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[liuyanban] ON
INSERT [dbo].[liuyanban] ([ID], [cheng], [xingbie], [QQ], [youxiang], [dianhua], [neirong], [addtime], [huifuneirong]) VALUES (1, N'阿萨德', N'1', N'啊阿萨德', N'阿萨德', N'阿萨德', N'阿萨德', CAST(0x0000A891015D0CA4 AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[liuyanban] OFF
/****** Object:  Table [dbo].[gouwuche]    Script Date: 03/19/2018 16:19:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[gouwuche](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[shangpinbianhao] [varchar](50) NULL,
	[shangpinmingcheng] [varchar](50) NULL,
	[shangpinleibie] [varchar](50) NULL,
	[xinjiuchengdu] [varchar](50) NULL,
	[jiage] [varchar](50) NULL,
	[kucunshuliang] [varchar](50) NULL,
	[faburen] [varchar](50) NULL,
	[goumaishuliang] [varchar](50) NULL,
	[goumairen] [varchar](50) NULL,
	[jine] [varchar](50) NULL,
	[issh] [varchar](2) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[gouwuche] ON
INSERT [dbo].[gouwuche] ([ID], [shangpinbianhao], [shangpinmingcheng], [shangpinleibie], [xinjiuchengdu], [jiage], [kucunshuliang], [faburen], [goumaishuliang], [goumairen], [jine], [issh], [addtime]) VALUES (1, N'04270406591234', N'面包树上的女人', N'A类', N'7成新', N'16', N'100', N'555', N'1', N'666', N'16.0', N'是', CAST(0x0000A8910045090C AS DateTime))
INSERT [dbo].[gouwuche] ([ID], [shangpinbianhao], [shangpinmingcheng], [shangpinleibie], [xinjiuchengdu], [jiage], [kucunshuliang], [faburen], [goumaishuliang], [goumairen], [jine], [issh], [addtime]) VALUES (2, N'04270406591234', N'面包树上的女人', N'A类', N'7成新', N'16', N'99', N'555', N'1', N'777', N'16.0', N'是', CAST(0x0000A89100481B60 AS DateTime))
INSERT [dbo].[gouwuche] ([ID], [shangpinbianhao], [shangpinmingcheng], [shangpinleibie], [xinjiuchengdu], [jiage], [kucunshuliang], [faburen], [goumaishuliang], [goumairen], [jine], [issh], [addtime]) VALUES (3, N'04270406591234', N'面包树上的女人', N'A类', N'7成新', N'16', N'98', N'555', N'10', N'555', N'160.0', N'是', CAST(0x0000A891014F1540 AS DateTime))
INSERT [dbo].[gouwuche] ([ID], [shangpinbianhao], [shangpinmingcheng], [shangpinleibie], [xinjiuchengdu], [jiage], [kucunshuliang], [faburen], [goumaishuliang], [goumairen], [jine], [issh], [addtime]) VALUES (4, N'04270406591234', N'面包树上的女人', N'A类', N'7成新', N'16', N'88', N'555', N'10', N'555', N'160.0', N'是', CAST(0x0000A891015C456C AS DateTime))
SET IDENTITY_INSERT [dbo].[gouwuche] OFF
/****** Object:  Table [dbo].[dx]    Script Date: 03/19/2018 16:19:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dx](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[leibie] [varchar](50) NULL,
	[content] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[dx] ON
INSERT [dbo].[dx] ([ID], [leibie], [content]) VALUES (1, N'系统公告', N'<P>&nbsp;&nbsp;&nbsp; 欢迎大家登陆我站，我站主要是为广大朋友精心制作的一个系统，希望大家能够在我站获得一个好心情，谢谢！</P>
<P>&nbsp;&nbsp;&nbsp; 自强不息，海纳百川，努力学习！</P>')
INSERT [dbo].[dx] ([ID], [leibie], [content]) VALUES (2, N'系统简介', N'系统简介')
SET IDENTITY_INSERT [dbo].[dx] OFF
/****** Object:  Table [dbo].[dingdan]    Script Date: 03/19/2018 16:19:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dingdan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[dingdanhao] [varchar](50) NULL,
	[jine] [varchar](50) NULL,
	[goumairen] [varchar](50) NULL,
	[shouhuodizhi] [varchar](50) NULL,
	[youbian] [varchar](50) NULL,
	[lianxishouji] [varchar](50) NULL,
	[dingdanneirong] [varchar](500) NULL,
	[issh] [varchar](2) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[dingdan] ON
INSERT [dbo].[dingdan] ([ID], [dingdanhao], [jine], [goumairen], [shouhuodizhi], [youbian], [lianxishouji], [dingdanneirong], [issh], [addtime]) VALUES (1, N'04270416021840', N'16.0', N'666', N'A地址', N'325800', N'15265236524', N'', N'是', CAST(0x0000A89100465960 AS DateTime))
INSERT [dbo].[dingdan] ([ID], [dingdanhao], [jine], [goumairen], [shouhuodizhi], [youbian], [lianxishouji], [dingdanneirong], [issh], [addtime]) VALUES (2, N'04270417261451', N'0.0', N'666', N'A地址', N'325800', N'15265236524', N'1321235461322', N'是', CAST(0x0000A8910046BBD0 AS DateTime))
INSERT [dbo].[dingdan] ([ID], [dingdanhao], [jine], [goumairen], [shouhuodizhi], [youbian], [lianxishouji], [dingdanneirong], [issh], [addtime]) VALUES (3, N'04270422481156', N'16.0', N'777', N'A地址', N'325800', N'15265236524', N'商品名称：面包树上的女人, 购买数量：1;', N'是', CAST(0x0000A89100483654 AS DateTime))
INSERT [dbo].[dingdan] ([ID], [dingdanhao], [jine], [goumairen], [shouhuodizhi], [youbian], [lianxishouji], [dingdanneirong], [issh], [addtime]) VALUES (4, N'02242108531513', N'320.0', N'555', N'asdasd', N'123456', N'13513513510', N'商品名称：面包树上的女人, 购买数量：10;商品名称：面包树上的女人, 购买数量：10;', N'否', CAST(0x0000A891015C99CC AS DateTime))
SET IDENTITY_INSERT [dbo].[dingdan] OFF
/****** Object:  Table [dbo].[allusers]    Script Date: 03/19/2018 16:19:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[allusers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[pwd] [varchar](50) NULL,
	[cx] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[allusers] ON
INSERT [dbo].[allusers] ([ID], [username], [pwd], [cx], [addtime]) VALUES (1, N'hsg', N'hsg', N'超级管理员', CAST(0x0000A8910017B074 AS DateTime))
SET IDENTITY_INSERT [dbo].[allusers] OFF
/****** Object:  Default [DF__youqingli__addti__07020F21]    Script Date: 03/19/2018 16:19:11 ******/
ALTER TABLE [dbo].[youqinglianjie] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__yonghuzhu__addti__07F6335A]    Script Date: 03/19/2018 16:19:11 ******/
ALTER TABLE [dbo].[yonghuzhuce] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__yonghuzhuc__issh__08EA5793]    Script Date: 03/19/2018 16:19:11 ******/
ALTER TABLE [dbo].[yonghuzhuce] ADD  DEFAULT ('否') FOR [issh]
GO
/****** Object:  Default [DF__xinwenton__tianj__09DE7BCC]    Script Date: 03/19/2018 16:19:11 ******/
ALTER TABLE [dbo].[xinwentongzhi] ADD  DEFAULT ('hsg') FOR [tianjiaren]
GO
/****** Object:  Default [DF__xinwenton__addti__0AD2A005]    Script Date: 03/19/2018 16:19:11 ******/
ALTER TABLE [dbo].[xinwentongzhi] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__shangpinx__addti__0BC6C43E]    Script Date: 03/19/2018 16:19:11 ******/
ALTER TABLE [dbo].[shangpinxinxi] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__shangpinl__addti__0CBAE877]    Script Date: 03/19/2018 16:19:11 ******/
ALTER TABLE [dbo].[shangpinleibie] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__liuyanban__addti__0DAF0CB0]    Script Date: 03/19/2018 16:19:11 ******/
ALTER TABLE [dbo].[liuyanban] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__gouwuche__issh__0EA330E9]    Script Date: 03/19/2018 16:19:11 ******/
ALTER TABLE [dbo].[gouwuche] ADD  DEFAULT ('否') FOR [issh]
GO
/****** Object:  Default [DF__gouwuche__addtim__0F975522]    Script Date: 03/19/2018 16:19:11 ******/
ALTER TABLE [dbo].[gouwuche] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__dingdan__issh__108B795B]    Script Date: 03/19/2018 16:19:11 ******/
ALTER TABLE [dbo].[dingdan] ADD  DEFAULT ('否') FOR [issh]
GO
/****** Object:  Default [DF__dingdan__addtime__117F9D94]    Script Date: 03/19/2018 16:19:11 ******/
ALTER TABLE [dbo].[dingdan] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__allusers__cx__1273C1CD]    Script Date: 03/19/2018 16:19:11 ******/
ALTER TABLE [dbo].[allusers] ADD  DEFAULT ('普通管理员') FOR [cx]
GO
/****** Object:  Default [DF__allusers__addtim__1367E606]    Script Date: 03/19/2018 16:19:11 ******/
ALTER TABLE [dbo].[allusers] ADD  DEFAULT (getdate()) FOR [addtime]
GO
