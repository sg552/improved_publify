-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: yuqiong_blog
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articles_tags`
--

DROP TABLE IF EXISTS `articles_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles_tags` (
  `article_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles_tags`
--

LOCK TABLES `articles_tags` WRITE;
/*!40000 ALTER TABLE `articles_tags` DISABLE KEYS */;
INSERT INTO `articles_tags` VALUES (16,23),(18,25),(23,30),(27,36),(27,37),(27,38),(27,39),(30,44),(31,49),(41,58),(41,59),(42,61);
/*!40000 ALTER TABLE `articles_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8_unicode_ci,
  `base_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'---\nblog_name: 张誉琼的个人网站\nblog_subtitle: 这里我会每天写一点儿东西。欢迎大家来看～\nlang: zh_CN\nallow_signup: 0\nemail_from: shensiwei@sina.com\nadmin_display_elements: 20\ntheme: typographic\nlimit_article_display: 15\nstatuses_in_timeline: false\ndate_format: ! \'%Y/%m/%d\'\ntime_format: ! \'%H:%M\'\ncustom_url_shortener: \'\'\nlimit_rss_display: 10\nhide_extended_on_rss: false\nfeedburner_url: \'\'\ndefault_allow_comments: true\ndefault_moderate_comments: false\ndefault_allow_pings: false\nglobal_pings_disable: false\ncomment_text_filter: markdown smartypants\nplugin_avatar: \'\'\nsp_global: false\nsp_akismet_key: \'\'\nsp_article_auto_close: 0\nsp_url_limit: 2\nuse_recaptcha: false\nuse_meta_keyword: true\nmeta_keywords: 微信, 张誉琼, 定制, 运营, 讲师\nmeta_description: 微信, 张誉琼, 定制, 运营, 讲师\nrss_description: false\nrss_description_text: <hr /><p><small>Original article written by %author% and published\n  on <a href=\'%blog_url%\'>%blog_name%</a> | <a href=\'%permalink_url%\'>direct link\n  to this article</a> | If you are reading this article anywhere other than on <a\n  href=\'%blog_url%\'>%blog_name%</a>, it has been illegally reproduced and without\n  proper authorization.</small></p>\nunindex_tags: false\nrobots: ! \"User-agent: *\\r\\nAllow: /\\r\\nDisallow: /admin\\r\\n\"\ndofollowify: false\nuse_canonical_url: false\ngoogle_analytics: \'\'\ngoogle_verification: \'\'\ncustom_tracking_field: \'\'\n','http://yuqiong.me');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `extended` text COLLATE utf8_unicode_ci,
  `excerpt` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_filter_id` int(11) DEFAULT NULL,
  `whiteboard` text COLLATE utf8_unicode_ci,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `allow_pings` tinyint(1) DEFAULT NULL,
  `allow_comments` tinyint(1) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `post_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'read',
  PRIMARY KEY (`id`),
  KEY `index_contents_on_published` (`published`),
  KEY `index_contents_on_text_filter_id` (`text_filter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents`
--

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
INSERT INTO `contents` VALUES (16,'Article','如何利用好微信的公众平台？','yuqiong','随着微信不可阻挡的流行，企业在微信平台上建立官方账号已经势在必行，那么如何利用好微信的公众平台呢，这里列举了几类企业官方微信可以提供的服务. \r\n   　　一、自助问答类 \r\n　　对于企业来说，首先可以通过一些自助类的问题设置来引导客户加强对自身的了解，也可以解决一些常见的问题的回复。节省人工回复成本。 \r\n　　比如，在我们的一个客户中，他设置了一些这样的自助问答类题目 \r\n　　1.欢迎语 \r\n　　欢迎语是在企业微信账号被关注后发送出来的消息，这条消息是给用户传达的第一印象。最好能包括所有大类的指南。 \r\n　　亲，太高兴你总算等到你来了。 \r\n　　1、想买什么东西请直接将产品名称回复给我(如“保温杯”) \r\n　　2、想知道已经上线了哪些产品请回复“品类”或直接点击链接进入商城。 \r\n　　3、如需按价格区间搜索产品，请以“XX到XX”的格式回复(如“50到100”)。 \r\n　　4、如需帮助或了解请回复“帮助”。 \r\n　　5、参加寻宝游戏请回复“寻宝”。 \r\n　　它的这个欢迎语做得很不错，把产品搜索类及帮助系统类这两大核心功能都做了一个引导，便于用户再次查询获得详细信息。 \r\n　　2.帮助系统 \r\n　　对于这类系统，可以同时设置多个关键字，让其搜索到同一结果 \r\n　　比如在积分宝贝中回复“帮助”、“介绍”、“干什么”、“？”、“help”、“sos”、“操作”等关键词，都统一回复下列信息。 \r\n　　如有以下问题请回复该问题中带“”的关键字或序号字母(如Q1)： \r\n　　Q1、如何“搜索”产品？ \r\n　　Q2、如何搜“价格”“区间”？ \r\n　　Q3、如何“购买”，“支付”、“快递”？ \r\n　　Q4、“积分宝贝”是什么？ \r\n　　Q5、“售后”“服务” \r\n　　Q6、如何“联系”？ \r\n　　Q7、如何“关注”积分宝贝 \r\n　　Q8、如何“分享”“朋友圈”？ \r\n　　Q9、“寻宝”“游戏”怎么玩？ \r\n　　帮助系统要将所有可能的功能都列出来，由用户自行来检索相应的信息，并且随时可以查询。 \r\n　　3、其他引导性关键词 \r\n　　这类引导性关键词主要有售后，服务，联系，电话，或者其他与企业关注比较密切的词。主要实现对其他类别的查询。 \r\n　　二、会员服务 \r\n　　很多企业是以会员为根基并由此赢利的，在将用户引导到微信公众平台上的时候，希望能延续这一关系并且得到加强，那么将让会员与微信绑定以便更好的互动就成了一个新的需要了。 \r\n　　1. 绑定会员 \r\n　　微信公众平台对每一个用户都有一个唯一固定不变的微信ID，这是一个加密了的身份ID，但是却是唯一的，我们可以在让用户信息绑定在这一微信账号上，这样便于集成现有网站会员的功能，而且可以通过移动端与会员互动。 \r\n　　2. 会员信息查询 \r\n　　微信用户与原有会员身份进行绑定之后，可以进行一些查询，比如用户自身信息，积分状态等的查询。 \r\n　　3. 会员提问 \r\n　　进行了绑定了会员，可以通过微信账号向企业提问，这一提问在微信后台被保存5天，如果需要，可以将这些问题设置成星标，以便企业在后台查找并且一对一的人工回复。 \r\n　 北京燕之庐网络科技公司-微信公众平台建设公司有大量实际开发案例文档，需要请查看网站的联系我们。 \r\n\r\n　　四、活动类服务 \r\n　　1.地理位置类的活动 \r\n　　寻宝是一种基于地理位置与用户互动的活动，当用户提交自己的地理位置后，将返回与它最近的宝贝距离，而这一宝贝被存放在商家某连锁店中，只有用户找到这一连锁店，就能得么宝贝。 \r\n　　2.用户互动类活动 \r\n　　抽奖是另一常见的活动了，发起这一活动后，当用户发送某个指令的时候，抽奖后台随机生成某种抽奖号码并且与数据库奖品匹配，来得出用户获将与否。同时可以考虑将奖品分级发出，比如前15天产生三等奖，再10天用来产生二等奖，再5天产生一等奖，最后一天产生特等奖。 \r\n　　另一种可行的方式是吸引用户关注，新用户通过发送由***推荐关注，来得知推荐最给力的用户，从而给他发奖品。 \r\n　　五、其他特色类 \r\n　　1. 图片处理 \r\n　　微信公众平台提供了图片接口，基于方倍工作室的微信公众平台上的图片识别技术中的人脸识别，一家眼镜店将用这一技术为用户匹配眼镜，当用户发送自己的正面清晰照的时候，后台能自动找出最适合用户脸型的眼镜框架并且返回。从来实现微信上的选镜架。 \r\n　　2. 音乐服务(KTV) \r\n　　一家KTV希望给用户提供音乐收听功能，基于在线音乐点播技术，可以提供现场音乐制作导入微信平台。用户只需要输入演出的歌手的名称，就能听到该歌手在当天唱到的歌曲。 \r\n　　3. 语音服务 \r\n　　微信还推出了语音识别的功能，不过这一功能暂未向公众开放，现在开发者只能接入第三方语音识别来制作相关功能，可以想象这一功能也有着广阔的应用空间，通过它，我们甚至可以做出基于微信公众平台的Siri来。 \r\n关键词： 微信公众平台建设公司 \r\n\r\n','',NULL,'2014-02-26 10:47:48','2014-02-26 10:47:48',2,'如何利用好微信的公众平台','2ce3dbac-6465-4690-b038-b25672f899b0',4,NULL,NULL,1,0,1,'2014-02-26 10:46:54','published',NULL,'--- {}\n','read'),(18,'Article','微信公众账号运营七大要素','yuqiong','2013年10月底，据媒体报道微信用户数已经突破6亿!相信在不久的将来微信必将成为重要营销渠道，很多企业都开通了微信号微信公众账户开发公司，但是99%微信号都没有专人负责运营。如何有效运营微信公众号，为企业服务，笔者认为有以下几点： \r\n\r\n1、践行理解订阅号和服务号的区别 \r\n\r\n企业订阅号可以每天发一条信息，服务号只能一个月发一条信息，对于一般小企业来讲，用服务号一般不现实，因为你一个月发一次信息，客户可能早把你忘记了，当然也要看你具体需求，因为服务号提供的功能比订阅号更强大，如服务号可以申请自定义菜单。 \r\n\r\n2、深刻理解微信公众号对于企业的核心价值 \r\n\r\n微信营销本质是互动，传递价值，维护老客户，影响新客户，很多企业把微信当成宣传工具，每天广告准时发送，这样微信号是没有生命力的，需要将当成品牌展示窗口和客户服务窗口。 \r\n\r\n3、利用好信息中“阅读原文”，展现更多服务 \r\n\r\n这个是很容易很忽略掉细节，大家都知道微信信息中没有办法放超链接，只有在“阅读原文”可以放上超链接，微信公众账户开发公司通过“阅读原文”可以给企业手机网站增加客户，也可以链接以前发送微信信息。 \r\n\r\n4、微信公众平台日常推送的帮助菜单推送 \r\n\r\n把每次发送的文章都加一个图文，作为日常的帮助菜单，方便客户每次收到微信图文消息的时候，可以直接了解到微信平台给客户的核心价值 \r\n\r\n5、微信二次开发和利用 \r\n\r\n想通过微信给客户提供更多便利功能，只能通过二次开发来实现，如实现企业更多的展示，产品销售以及在线客服等功能微信公众账户开发公司，需要借助微信的开放接口进行二次开发。 \r\n\r\n6、每次推送微信时不要超过3条图文消息 \r\n\r\n如果推送的信息过多，就会没有了重点，如果你重点要告诉客户一件事，请只发一条信息。切记信息中图片不能过多，3张以内比较合适，图片大小要控制在50K以下，图文信息打开速度影响用户阅读率。 \r\n\r\n7、推送内容的标题和内容的精选 \r\n\r\n微信营销关键在内容的质量。高质量的内容会得到众多人的分享，会形成病毒营销。标题的命名要简明扼要，内容要突出自己平台对于粉丝的价值。 \r\n\r\n','',NULL,'2014-02-26 10:49:47','2014-02-26 10:49:47',2,'微信公众账号运营七大要素','511e5ec5-bfaa-41db-a01b-625bc79fa2bb',4,NULL,NULL,1,0,1,'2014-02-26 10:49:02','published',NULL,'--- {}\n','read'),(23,'Article','理解并同意的微信公众平台的法律责任','yuqiong','法律责任 \r\n1 如果腾讯发现或收到他人举报或投诉用户违反本协议约定的，腾讯有权不经通知随时对相关内容进行删除，并视行为情节对违规帐号处以包括但不限于警告、删除部 分或全部订阅用户、限制或禁止使用全部或部分功能、帐号封禁直至注销的处罚，并公告处理结果。微信认证帐号除上述处罚措施外，腾讯有权取消其帐号认证身 份，并视情节决定临时或永久封禁相关帐号认证资质。 \r\n2 你理解并同意，腾讯有权依合理判断对违反有关法律法规或本协议规定的行为进行处罚，对违法违规的任何人士采取适当的法律行动，并依据法律法规保存有关信息向有关部门报告等，用户应独自承担由此而产生的一切法律责任。 \r\n3 你理解并同意，因你违反本协议或相关的服务条款的规定，导致或产生的任何第三方主张的任何索赔、要求或损失，包括合理的律师费，你应当赔偿腾讯与合作公司、关联公司，并使之免受损害。 \r\n\r\n微信公众账号开发公司注意微信公众平台知识产权声明\r\n知识产权声明 \r\n1、腾讯在本服务中提供的内容（包括但不限于网页、文字、图片、音频、视频、图表等）的知识产权归腾讯所有，用户在使用本服务中所产生的内容的知识产权归用户或相关权利人所有。 \r\n2、除另有特别声明外，腾讯提供本服务时所依托软件的著作权、专利权及其他知识产权均归腾讯所有。 \r\n3、腾讯在本服务中所使用的“QQ”、“腾讯”、“TENCENT”及企鹅形象等商业标识，其著作权或商标权归腾讯所有。 \r\n4、上述及其他任何本服务包含的内容的知识产权均受到法律保护，未经腾讯、用户或相关权利人书面许可，任何人不得以任何形式进行使用或创造相关衍生作品。 \r\n','',NULL,'2014-02-26 10:56:46','2014-02-26 10:58:01',2,'理解并同意的微信公众平台的法律责任','c65a0476-8333-4c7c-864a-44ec80c876c7',4,'--- \n...\n',NULL,1,0,1,'2014-02-26 10:55:53','published',NULL,'--- {}\n','read'),(27,'Article','很喜欢的两个故事：《改变》和《上路》','yuqiong','《改变》\r\n猴子想变成人，它知道要变成人就要砍掉尾巴，猴子决定砍掉尾巴。动手前猴子被三件事困住了：\r\n1、	砍尾巴的时候会不会很疼？【改变时有一定痛苦的】\r\n2、	砍了后身体还能不能保持灵活性？【改变会有一定风险】\r\n3、	活了这么久，一直以来就和它一起了，跟了很多年，不忍抛弃它\r\n【改变在情感上会有些许难受】\r\n所以，今天的猴子也没有变成人！\r\n要成就一些事就必须舍弃另一些事！\r\n舍不得你所拥有的，就得不到更好的！\r\n改变，也许会痛苦一阵子！\r\n不改变，就可能痛苦一辈子！\r\n不要想到不劳而获，要想改变命运就得先改变自己。\r\n《上路》\r\n一和尚要云游参学。师傅问：“什么时候动身？”下个星期。路途远，我托人打了几双草鞋，取货后就动身。师父沉吟一会说：”不如这样，我来请信众捐赠“。\r\n师父不知道告诉了多少人，当天竟有好几十名信众送来草鞋，堆满了禅房的一角。隔天一早，又有人带来一把伞要送给和尚。和尚问：“你为何要送伞？”“你的师父说你要远行，路上恐遇大雨，问我能不能送你把伞。”但这天不只一人来送伞，到了晚上，禅房里堆了近50把伞。晚课过后，师父步入和尚的禅房说：“草鞋和伞够了吗？”“够了，够了”！和尚指着堆在房间里小山似的鞋和伞，“太多了，我不可能全部带着。“”这怎么行呢？“师父说：”天有不测风云，谁能料到你会走多少路，淋多少雨？万一草鞋走穿了，伞丢了怎么办？“师父又说：”你一定还会遇到不少溪流，明天我请信众捐舟，你也带着吧……“\r\n和尚这下明白了师父的用心，他跪下来说：“弟子现在就触发，什么也不带！“\r\n做一件事情，重要的不是身外之物是否完备，而是有没有决心！有决心，拟定目标了，一切都不是问题！\r\n请带上自己的心上路吧，目标在远方，路在自己脚下！每迈出一步，都是一点点收获！带心上路，一切外物自然具足！\r\n尊敬的企业家，请您带上我们的目标走进我们的课堂，来共同感受《改变》的必要性和坚定《上路》的决心吧！\r\n\r\n','',NULL,'2014-02-27 08:07:26','2014-02-27 08:07:57',2,'很喜欢的两个故事-改变-和-上路','ed5052be-904b-40b8-b28f-396af6b78338',4,'--- \n...\n',NULL,1,0,1,'2014-02-27 08:07:05','published',NULL,'--- {}\n','read'),(30,'Article','身为管理者，必须要清晰地意识到','yuqiong','1，要像导师一样不厌其烦地重复目标。\r\n2,内部沟通比外部沟通要重要。\r\n3，激励比批评重要。\r\n4，培训比身先士卒重要。\r\n5，让每个人都要知道他的支出和营收无比重要。\r\n6，搭建服务平台比行政命令重要。\r\n\r\n１，已经发生的事情既不要留恋，更无需后悔。\r\n2，理智上能接受的事情，情感上必须接受。\r\n3，时间并不是运动的，它停留在当下。我们唯一能做的，就是珍惜当下。\r\n4，永远没有救世主。我们唯一能依赖的就是自己。\r\n5，必须让自己回到简单、纯净、谦卑的状态。\r\n6，必须让自己知道你要成为一个什么样的人。\r\n\r\n转自和朋友交流的心得：\r\n1，不能善始善终，不要善始恶终。\r\n2，解决问题，不要发泄情绪。\r\n3，就算是绿灯，迎面来了卡车，你也不能走。\r\n3，不要拿做互联网的思路做移动互联，会死的很惨。\r\n4，不要指望行政命令。\r\n5，不要把命运寄托在任何人身上。\r\n6，即便只是个小头头，也要知你上级目标；要培养人；要知投入产出比\r\n\r\n负责任是职场中最重要的美德之一。\r\n它包括，1,一定学会做决定。\r\n2，要敢于犯错并承担错误。\r\n3，甚至有时候要敢于违反老板的决定，某些繁文缛节或者万年不遇的制度风险。\r\n4，要记住你的目标，实践它。\r\n所谓负责任就是对结果负责。  \r\n\r\n','',NULL,'2014-09-09 08:03:54','2014-09-09 08:06:03',2,'身为管理者-必须要清晰地意识到','a3f3bc13-7f82-49c6-8dba-33c04b67953c',4,'--- \n...\n',NULL,1,0,1,'2014-09-09 08:03:16','published',NULL,'--- {}\n','read'),(31,'Article','雕爷牛腩：用互联网思维玩转餐饮','yuqiong','雕爷牛腩，用互联网思维做餐饮的企业，开业两个月，仅凭两家店就获得6000万的投资，风投给出的估值高达4亿元，创造了餐饮行业的神话。今天来体验下：用互联网思维玩转餐饮的雕爷牛腩怎一个“吊”字了得  \r\n1、只有12道菜品，颠覆传统餐饮一二百道菜的做法，保障后厨快速出品的同时，每一道都是精品。\r\n2、用餐过程没有“等”的环节，让你一直在“吃”的过程中，享受下一道菜出现的变换和神秘感。\r\n3、不接待12岁以下儿童，针对逛商场的人群不恋战餐厅，精准的客户定位提高翻台率。\r\n4、克制售卖酒水，只单杯卖，整瓶不卖。避免“酒鬼”们因喝酒一晚霸占一张桌子的消费场景。\r\n5、上菜顺序标准、规范、讲究。分餐制上菜，下一道菜上来时，上一道就撤，吃完甜品你就该走了。\r\n6、餐厅整体营业面积300平左右，可以很好的保证客人用餐节奏，掌握服务频率。前厅和后厨及时沟通，避免上菜混乱。\r\n7、服务员全部黑衣，蒙着黑面纱，会介绍每道菜，包括餐具的特色，让你感觉很有仪式感。\r\n8、注重细节，把产品做到极致。从茶水菜品、米饭、牛腩锅到牛腩碗，甚至你临走时，给你带回家的筷子都是用“缅甸”的鸡翅木，口碑传播的素材有木有啊有木有？\r\n看来，互联网时代，颠覆，创新，找痛点，极致，无处不在……  \r\n\r\n','',NULL,'2014-09-09 08:10:26','2014-09-09 08:12:45',2,'雕爷牛腩-用互联网思维玩转餐饮','5398bc3f-c417-4ee3-bd31-729106cf88f3',4,'--- \n...\n',NULL,1,0,1,'2014-09-09 08:08:11','published',NULL,'--- {}\n','read'),(33,'Article','销库存的16搬武艺','yuqiong','1）重视连带销售（吊牌价销售，但有满减、满送等变相打折手段）。\r\n2）通级别资源共享（同级但不同区域的代理商之间进行产品互换）。\r\n3）让利给导购，员工额外奖励（卖出一件给导购增加现金奖励，适合高价位产品或普通价位产品）\r\n4）有准备地做特卖（商场大型特卖会，超值大礼包，以旧换新等）\r\n5）让货转起来（货品相对丰富的代理商可以以一定的条件交换经销商的滞销款或死款）\r\n6）代卖双赢促销（代理商几种大量货品，下到加盟商要求代卖，并负担加盟商的促销费用，加盟商卖掉一定量后，代理商增加其退换货率）。\r\n7）星级酒店特卖（定位高端的品牌库存，放在星级酒店里进行特卖，客户定位精准，且不易损害品牌形象）。\r\n8）重视特卖的准备（场地的挑选、前期对人员的培训、专门的特卖方案，片区的负责人必须是卖货高手）。\r\n9）从消费群体出发，闭店回馈会员（某几天只针对会员展开特卖，赠送优惠券等促销活动）。\r\n10）专场福利销售（提前在店铺附近发放福利卡，只有持卡人才能享受专场优惠）。\r\n11）正品与特价品搭配销售\r\n12）调走卖场特卖（专门进行正品或库存特卖）。\r\n13）旺季促销（提前打折销售，不要等到季末）。\r\n14）VIP回馈（特定时间再高档次店铺对VIP客户进行促销）。\r\n15）店铺装修前特卖（以店铺为装修为宣传手段，将库存集中进行促销）。\r\n16）联合促销（代理商与库存，消化能力较强的经销商联合促销）。\r\n好了，今天就到这里了，希望能够对你有帮助哦~','',NULL,'2014-09-09 08:40:03','2014-09-09 08:52:53',2,'销库存的16搬武艺','ae43cdd3-997a-4ed8-97a0-28ce5704a947',4,'--- \n...\n',NULL,1,0,1,'2014-09-09 08:39:52','published',NULL,'--- {}\n','read'),(35,'Article','网站运营必备攻略','yuqiong','第一，网站策划\r\n包含：网站的功能，产品特点、特色服务\r\n\r\n第二，网站定位\r\n包含：内容细分（品牌名称、突出主题内容、风格形象、系统架构、突出客户诉求点、\r\n            产品与市场的匹配定位、交易型的盈利模式）\r\n\r\n第三，其它对手网站分析\r\n包含:进入网站主页的菜单栏目设置、与对手网站区隔的地方、包装和美化自己最优势的点（最多1-2个）\r\n         对手网站分析包括：对手的市场切入点、针对的目标客户、同行业竞争中突出自己的优势点、\r\n         整个网站对手的战略定位信息透露多少，它的攻击与防御点在哪里？等。\r\n          \r\n第四，网站盈利点设置\r\n包含：交易型网站内商品的包装、上架、促销、折扣、单买和套餐，会员价格等，\r\n           要突出产品、广告和服务的主营业务及附加值的盈利点设计。\r\n\r\n第五，网站运营操作\r\n包含：网站运营、网站整体ＵＩ设计、网站程序开发、模块设置、网站运营团队建设、客户服务提供、\r\n           产品销售渠道、 网站系统架构、软硬件配套等。\r\n\r\n第六，网站整合营销\r\n包含：网站版块内容编辑、图片设计、色调渲染、图文信息的可阅读性、方便浏览及娱乐性、趣味性；\r\n           事件营销（突发热门话题、公益性事件、节假日主题事件、坊间趣闻等）。\r\n           口碑营销（注册奖励机制、实用性工具软件、电子书、免费资源礼品、网友自发转载、媒体报道）\r\n           网站推广（线上线下推广、email营销、资源合作、病毒性营销、SEO）\r\n\r\n第七，营销效果管理测评\r\n包含：SEM（SEO、PPC、分类目录）\r\n           信息发布（常报道信息、软文营销）\r\n           网络广告（分类广告、视频媒体、网络络广告、在线会员）\r\n           线下推广（线下活动、传统媒体、行业展会、产品推介会）\r\n           电台广播、媒体公关、产品展示中心、DM广告\r\n          \r\n第八，分析与总结\r\n        网站运营的范畴可大、可小，小范围里讲网站上线前期的策划、技术开发、网站测试、营销推广\r\n        网站改版、内容添加、产品包装、数据分析、市场调查、网站盈利、安全管理等诸多方面。\r\n        要将网站运营好最主要的应从网站内容、网站推广、网站策划、运营管理等核心点多下工夫，一个 好的网站必能提高企业的核心竞争力，它所带来的价值也是不可估量的。\r\n        \r\n\r\n','',NULL,'2014-09-09 08:56:46','2014-09-10 02:38:05',2,'网站运营必备攻略','d22513a9-a309-4386-a583-254edcbee3bf',4,'--- \n...\n',NULL,1,0,1,'2014-09-09 08:55:36','published',NULL,'--- {}\n','read'),(37,'Article','了解ＢＡＴ三巨头坐拥的数据金矿','yuqiong','Ｂ，代表百度：拥有用户搜索的需求数据，以及爬虫和阿拉丁获取公共ｗｅｂ数据；\r\n一直在做通用的需求挖掘和分 发，但是社交需求和商务需求领域完败给 腾讯阿里。从最初的百度搜索、到贴吧、 百科、文库等衍生产品，一直在满足特定 人群、特定领域的需求，再到后来阿拉 丁、轻应用战略，百度在做的仅仅是收集 用户的需求，然后做分析，并把用户带到 指定的互联网空间（这个空间可能是一个）\r\n（对于搜索领域，360紧随百度其后，各有所长。\r\n百度很全面，但360搜索精准度更高，网络搜索体验也更给力。通过700多余条热词搜索发现，360搜索前三页准确率为86%，而百度只有73%，原因是百度“竞价排名”广告太多，而360搜索的广告与内容则是区分明显。）\r\n\r\nＡ，代表阿里：拥有交易数据和信用数据，尝试做面向未来的数据集市。\r\n一直在做商务，从B2B，到 C2C，B2C，再到大淘宝、于现在发力的大物流、金融，还有即将发 力的大数据，从最初的简单的商务信息发 布扩张到个人卖家、企业卖家交易流程， 再扩大到 买家买卖需求导入、大交易平 台、物流服务、金融服务、数据分析服 务，是一条完整清晰的商务链。\r\n\r\n\r\nＴ，代表腾讯：拥有用户关系数据和基于此产生的社交数据；\r\n腾讯：从出生开始就是做社交，十五 年过去了，最核心业务、最强大的业务只 有两个：QQ、微信，换言之，这十五年 来腾讯一直在做社交。\r\n有游戏，是腾讯的主要收入来源。没错腾 讯是国内游戏行业的老大，但腾讯游戏是 捆绑了QQ和微信的社交平台，依赖海量 用户和流量才会成功的。\r\n\r\n因为数据与数据的价值不一样，所以BAT各家对于数据的思路也各有不同。\r\n百度在大数据方面让人印象深刻的有百度迁徙这样的公益项目，应用在民生和新闻等领域。最新动态是，百度网盟利用基于大数据的CTR（广告内容匹配）数据，站长的平均收入提升70％。\r\n\r\n   \r\n     腾讯广点通平台不乏亮点应用，例如美丽说借助广点通在移动端取得丰收，小米手机与QQ空间合作更是基于社交数据营销的经典。\r\n移动互联网浪潮下，现实世界正在加速数字化，每个人，每个物体、每件事情、每一个时间节点，都在向网上映射。空间和时间两个维度的联网，使得数字世界正在接近一步步模拟现实世界。历史、现在和未来都会映射到网上。对大数据的挖掘正是对世界的二次发现和感知。BAT三巨头已经出发。\r\n\r\n','',NULL,'2014-09-09 09:32:19','2014-09-09 09:37:44',2,'互联网三大巨头bat坐拥的数据金矿','6dd1fa86-b556-4360-b0c7-1eeadff08d78',4,'--- \n...\n',NULL,1,0,1,'2014-09-09 09:32:02','published',NULL,'--- {}\n','read'),(41,'Article','学习电子商务从口诀开始','yuqiong','B2B：企业对企业              模式：（企业、中介、沟通好）\r\nB2C：企业对个人              模式： （品牌、渠道、销售好）\r\nC2C：个人对个人              模式： （你开、我买、支付宝）\r\nO2O：网上与网下结合       模式：（线上 、线下、一起搞）\r\n\r\nB2F：企业对家挺\r\nF2F：面对面\r\nB2G：政府采购\r\nG2B：政府抛售\r\nM2C：生产厂对消费者\r\n\r\nB2M：面向市场营销的电商企业\r\nSOLOMO：社交+本地化+移动\r\nABC：代理商—商家—消费者\r\nBAB：企业—联盟—企业\r\nP2C：生活服务平台\r\nP2P：点对点、渠道对渠道\r\nSNS-EC：社会化网络电子商务\r\nB2S：分享式商务或体验式商务\r\n\r\n\r\nLBS：签到、优惠、位置找\r\nNFC：近场、支付、安全好\r\nSEO：内容、外链、权重找\r\nEDM：内容、受众、分析好\r\nCPA：行动、转化、站长恼\r\nCPS：佣金、销量、效果好\r\nCPC：点击、引导、作弊少\r\nCPM：展示、个人、不可靠\r\nPHP：开放、搞笑、成本少\r\n','',NULL,'2014-09-10 02:40:02','2014-09-10 03:05:24',2,'了解电子商务从口诀开始','6687d771-acd2-4102-b4d9-a5c853f17cef',4,'--- \n...\n',NULL,0,0,1,NULL,'draft',NULL,'--- {}\n','read'),(42,'Article','O2O与电商热点问答','yuqiong','O2O更侧重服务性消费（包括餐饮、电影、旅游、健身、租房）等，库存是服务；\r\nB2C更侧重实物购物，库存是商品；\r\nO2O的消费者到现场获得服务，涉及客流（服务强调本地化）；\r\nB2C的消费者待在办公室或家里等货上门，涉及物流是全网络。\r\n\r\nO2O与电商的热点问答：\r\n问：你在淘宝上下单买东西，然后通过快递送到你家，这个算不算O2O？\r\n答：不算，这叫电商。\r\n问：怎样区分是电商还是O2O？\r\n答：凡是包在盒子里送到家里的都是电商，凡是在网上下单到门店消费的都是O2O。\r\n       O2O强调的是体验，线上互动线下服务，消费、体验。\r\n问：O2O是线上到线下呢？还是线下到线上？\r\n答：无所谓。你可以理解成为O+O，就是线上加线下，之于哪个到哪个，无所谓。\r\n问：O2O最适合什么样的行业？\r\n答：最适合生活服务、消费领域。每年的生活用品、吃喝玩乐的花费中，把你买产品的前扣掉，剩下的就都是O2O。\r\n问：O2O与电商的市场相比，哪个更大？\r\n答：如，你一年花了10万块钱在淘宝上买东西，其中的五万都是O2O的市场，所以O2O的市场比电商的大。你生活中的大部分消费，真正用来买吃的、消费的、洗车、住宿、机票、酒店、旅游等，只要能用来体验的就都是O2O。\r\n问：O2O的概念用一句话概况的话，是什么？\r\n答：O2O的概念可以总结为线上营销，线下体验。\r\n问：O2O的成功取决于哪几个关键的技术？\r\n答：电子支付技术、二维码扫描支付、客户管理数据分析、O2O运营中的单渠道和多渠道引流方法\r\n 问：O2O运营有哪几种模式可以参考？\r\n1、线上购买优惠券，线下消费（团购，大众点评网）\r\n2、	线上线下销售，不同产品。\r\n3、	线上线下销售，统一产品和报价（苏宁云商）\r\n4、	线下体验，扫描二维码后线下下单购买，线上给线下提成。\r\n5、	线上展示引流，线下消费（宜家）\r\n总结建议：\r\n调节好线上线下的利益分配，才能online和offline共生的真正开始。\r\n\r\n','',NULL,'2014-09-10 03:05:43','2014-09-10 03:42:55',2,'o2o与电商热点问答','cd337abc-c612-4134-beef-79bb6c19e590',4,'--- \n...\n',NULL,0,0,1,NULL,'draft',NULL,'--- {}\n','read'),(43,'Article','初创公司如何分配股份期权？','yuqiong','按照硅谷一般原则：\r\n1、外聘CEO：5%-8%\r\n2、副总：0.8-1.3%\r\n3、一线管理人员：0.25%\r\n4、普通员工：0.1%\r\n5、外聘董事会董事：0.25%\r\n其中：期权共占15%-20%公司股份（期权工作1年后开始兑换，4年兑换完毕）。\r\n\r\n角色太重，股份太少，一定会崩溃。有恒产者有恒心，股份是恒产，公司需要谁的恒心，就该给谁相应的恒产。\r\n股权究竟应该如何分配呢？\r\n1、谁是公司除创始人之外最重要的人？谁最重要，谁就拿股份最多。\r\n分析：\r\n（1）如果公司是依靠产品技术开发，软件工程师、产品经理、技术负责人应该拿最多\r\n（2）如果是业务型的，销售合伙人拿最多\r\n（3）商业模式型，需要前期烧钱、会融资的拿最多\r\n','',NULL,'2014-09-10 03:49:14','2014-09-10 03:57:22',2,'初创公司如何分配股份期权','7bda01df-e6ae-44b7-8867-3bd8605411c3',4,'--- \n...\n',NULL,1,0,1,'2014-09-10 03:43:05','published',NULL,'--- {}\n','read'),(47,'Article','商超王者大润发的营销传播策略','yuqiong','\r\n<img src=\"http://yuqiong.me/files/resource/3/QQ__20140901151910.png\" alt=\"\" />\r\n\r\n\r\n关于管理运营策略\r\n（1）服务流程标准化\r\n消费者进入卖场前——停车指引——引导进店——购物开始——服务员随时提供咨询——购物完成——出店——乘坐大润发班车回家\r\n（2）管理培训标准化\r\n（3）运营管理流程标准化（整个供应商供货体系——入库——出库）流程规范\r\n（4）采购标准化\r\n（5）做到极致5S管理法（整理、整顿、清扫、清洁、素养）不断把流程拆细，然后反复实践改进。\r\n\r\n关于低价的奥秘\r\n低价因素一：包养\r\n 与欧尚合作后的全球采购网络为支撑；\r\n 直接找到生产肉、米、瓜果（采用期货锁定制），提前在生产终端控制价格。如，为了获得优质 猪  肉价格，会买下整座猪场。\r\n低价因素二：买断\r\n买断与适时动态价格变动保证，一“低”到底。对于需求量大的产品，直接找厂家大规模批量付款，全款买断，配备全职市场价格监察员的公司。\r\n低价因素三：防损坏\r\n完善的防损坏制度，防损率与个人业绩挂钩原则\r\n\r\n关于供应商策略：拿钱快、少盘剥、够专业\r\n零售：供应链与营运支撑体系较量\r\n大润发里行业少有和供应商关系良好的公司，而大润发遵循三少一多原则：少盘剥、少促销费、少卡拿\r\n、快速结款。\r\n另一原因，内部运营体系建立的类似买手制、采购制度，每个品类有专门采购队伍，采购队伍由专业人士担任，对行业很了解。\r\n\r\n强大而有效的布局体系：群狼、突破、到农村去\r\n策略一：群狼策略\r\n一点巩固，快速突破（一个地区巩固后会四散扩张，不断向周边掘金）\r\n策略二：突破\r\n在三、四线城市甚至五线城市大步前进，不断深耕渠道；\r\n策略三：到农村去\r\n一线城市增长乏力，三四线会成为中国未来零售主战场。\r\n\r\n成功的营销策略：土办法、扫街、免费车\r\n选址策略：布局，非核心商业区次于中心甚至非中心区，更重要保证每个大润发都要有停车场；\r\n                   多位于非核心商业区的居民聚集区 \r\n内部价格：不做单一卖场，周围一定有其可以互补商业形式；参与娱乐多业态并举。\r\n促销策略：内部陈列，卖场音乐烘托购物氛围\r\n广告媒介推广：\r\n只做两件事（开店前海量电视、媒体推广、印刷品大量纸质购物券挨家发放）\r\n独家运营着基本等于当地公交线的购物免费车，对三、四线城市居民非常受用\r\n注：这三个土方式在小城市依然有效\r\n公交线路推广很关键：免费班车、车体LOGO广告传播，看中这种最有效的移动广告\r\n\r\n\r\n\r\n\r\n\r\n','',NULL,'2014-09-10 03:59:34','2014-09-27 01:31:02',2,'商超王者大润发的营销传播策略','98dfea04-f440-4316-8da2-8f3b74e0ef03',4,'--- \n...\n',NULL,0,0,1,NULL,'draft',NULL,'--- {}\n','read'),(48,'Page','关于我',NULL,'你好，我是张誉琼。\r\n\r\n<img src=\"http://yuqiong.me/files/resource/2/thumb_webwxgetmsgimg.jpg\" alt=\"张誉琼\" />\r\n\r\n新媒体运营者、整合营销实践者，热衷移动互联网创业，飞达微信营销平台创始人。2013年从事微信营销和运营方面的研究与实践，在微信运营操作方法、营销手段和众多案例基础上进行经验总结，从实战中积累了丰富经验，为企业在落地实施中起到良好的指导作用。\r\n\r\n曾于画报社从事记者工作，后跨界互联网领域。擅长活动营销、活动策划及整合营销，受聘于多家机构担任整合营销顾问及培训工作，为企业提供整合营销方面的策划、咨询和培训。',NULL,NULL,'2014-09-27 00:50:58','2014-09-27 00:56:11',2,NULL,NULL,4,'--- \n...\n','me',1,NULL,NULL,'2014-09-27 00:50:58',NULL,NULL,'--- {}\n','read'),(49,'Article','今天天气没有雾霾～','yuqiong','秋高气爽的日子来了～\r\n.。。','',NULL,'2014-09-27 01:36:27','2014-09-27 01:40:25',2,'今天天气没有雾霾','d50fb4b2-727c-42c3-8663-b1b60feaae71',4,'--- \n...\n',NULL,1,0,1,'2014-09-27 01:36:15','published',NULL,'--- {}\n','市场');
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `excerpt` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `guid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_filter_id` int(11) DEFAULT NULL,
  `whiteboard` text COLLATE utf8_unicode_ci,
  `article_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blog_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `published_at` datetime DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_confirmed` tinyint(1) DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_feedback_on_article_id` (`article_id`),
  KEY `index_feedback_on_text_filter_id` (`text_filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_caches`
--

DROP TABLE IF EXISTS `page_caches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_caches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_page_caches_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_caches`
--

LOCK TABLES `page_caches` WRITE;
/*!40000 ALTER TABLE `page_caches` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_caches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pings`
--

DROP TABLE IF EXISTS `pings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_pings_on_article_id` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pings`
--

LOCK TABLES `pings` WRITE;
/*!40000 ALTER TABLE `pings` DISABLE KEYS */;
/*!40000 ALTER TABLE `pings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_types`
--

DROP TABLE IF EXISTS `post_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_types`
--

LOCK TABLES `post_types` WRITE;
/*!40000 ALTER TABLE `post_types` DISABLE KEYS */;
INSERT INTO `post_types` VALUES (1,'市场','市场',''),(2,'营销','营销','');
/*!40000 ALTER TABLE `post_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nicename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modules` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'admin','Publify administrator','---\n- :dashboard\n- :articles\n- :notes\n- :pages\n- :feedback\n- :media\n- :themes\n- :sidebar\n- :profile\n- :users\n- :settings\n- :seo\n'),(2,'publisher','Blog publisher','---\n- :dashboard\n- :articles\n- :notes\n- :pages\n- :feedback\n- :media\n- :profile\n'),(3,'contributor','Contributor','---\n- :dashboard\n- :profile\n');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_rights`
--

DROP TABLE IF EXISTS `profiles_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_rights` (
  `profile_id` int(11) DEFAULT NULL,
  `right_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_rights`
--

LOCK TABLES `profiles_rights` WRITE;
/*!40000 ALTER TABLE `profiles_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redirections`
--

DROP TABLE IF EXISTS `redirections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `redirections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) DEFAULT NULL,
  `redirect_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redirections`
--

LOCK TABLES `redirections` WRITE;
/*!40000 ALTER TABLE `redirections` DISABLE KEYS */;
INSERT INTO `redirections` VALUES (14,16,14),(16,18,16),(21,23,21),(25,27,25),(27,30,27),(28,31,28),(29,33,29),(31,35,31),(33,37,33),(34,43,34),(35,47,35),(36,48,36),(37,49,37);
/*!40000 ALTER TABLE `redirections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redirects`
--

DROP TABLE IF EXISTS `redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `redirects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `origin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redirects`
--

LOCK TABLES `redirects` WRITE;
/*!40000 ALTER TABLE `redirects` DISABLE KEYS */;
INSERT INTO `redirects` VALUES (1,'juharr','http://yuqiong.me:3900/2014/01/22/hello-world',NULL,'2014-01-22 22:57:46','2014-01-22 22:57:46'),(2,'gqKJmF','http://yuqiong.me/2014/01/22/%E7%AC%AC%E4%B8%80%E6%97%A5-%E6%A6%82%E8%BF%B0',NULL,'2014-01-22 23:44:04','2014-01-22 23:44:04'),(3,'fuSZVg','http://yuqiong.me/2014/01/23/%E7%AC%AC%E4%BA%8C%E4%B8%AA%E6%96%87%E7%AB%A0',NULL,'2014-01-23 10:57:16','2014-01-23 10:57:16'),(4,'2z6WvQ','http://yuqiong.me/2014/01/25/%E4%BB%8A%E5%A4%A9%E5%AF%B9%E8%BF%87%E5%8E%BB%E7%9A%84%E5%87%A0%E5%AE%B6%E5%85%AC%E5%8F%B8%E5%81%9A%E4%BA%86%E4%B8%80%E5%B0%8F%E7%82%B9%E6%80%BB%E7%BB%93',NULL,'2014-01-25 08:14:09','2014-01-25 08:14:09'),(5,'xUv0kM','http://yuqiong.me/2014/02/24/2013%E5%B9%B4%E7%9A%84%E5%B0%8F%E7%BB%93',NULL,'2014-02-24 12:33:48','2014-02-24 12:33:48'),(6,'DTaQwW','http://yuqiong.me/2014/02/24/%E4%BB%8A%E5%A4%A9%E5%A5%BD%E5%86%B7%E5%95%8A',NULL,'2014-02-24 12:43:08','2014-02-24 12:43:08'),(7,'4OdlEn','http://yuqiong.me/2014/02/26/%E6%89%93%E6%AD%BB%E4%B9%9F%E4%B8%8D%E4%BC%9A%E8%AF%B4%E7%9A%8434%E6%9D%A1%E5%BE%AE%E4%BF%A1%E5%85%AC%E4%BC%97%E5%8F%B7%E8%BF%90%E8%90%A5%E7%BB%8F%E9%AA%8C',NULL,'2014-02-26 10:36:29','2014-02-26 10:36:29'),(8,'386ehQ','http://yuqiong.me/2014/02/26/%E5%BE%AE%E4%BF%A1%E5%85%AC%E4%BC%97%E8%B4%A6%E5%8F%B7%E5%B1%95%E7%A4%BA%E6%96%B0%E7%8E%A9%E6%B3%95',NULL,'2014-02-26 10:38:33','2014-02-26 10:38:33'),(9,'CYcXQV','http://yuqiong.me/2014/02/26/%E4%B8%AA%E4%BA%BA%E5%BE%AE%E4%BF%A1%E8%B4%A6%E5%8F%B7%E8%90%A5%E9%94%80%E6%B3%A8%E6%84%8F%E4%BA%8B%E9%A1%B9',NULL,'2014-02-26 10:41:53','2014-02-26 10:41:53'),(10,'7Aksem','http://yuqiong.me/2014/02/26/%E9%A9%AC%E5%8C%96%E8%85%BE-%E5%BE%AE%E4%BF%A1%E8%90%A5%E9%94%80%E4%B8%83%E4%B8%AA%E8%B7%AF%E6%A0%87',NULL,'2014-02-26 10:43:05','2014-02-26 10:43:05'),(11,'Tiguue','http://yuqiong.me/2014/02/26/%E4%BC%81%E4%B8%9A%E4%B8%BA%E4%BB%80%E4%B9%88%E8%A6%81%E5%BC%80%E9%80%9A%E5%BE%AE%E4%BF%A1%E5%85%AC%E4%BC%97%E5%B9%B3%E5%8F%B0',NULL,'2014-02-26 10:44:20','2014-02-26 10:44:20'),(12,'F3GtgE','http://yuqiong.me/2014/02/26/%E5%BE%AE%E4%BF%A1%E5%85%AC%E4%BC%97%E8%B4%A6%E5%8F%B7%E7%9A%84%E5%88%9B%E5%BB%BA%E5%8F%8A%E6%B5%81%E7%A8%8B',NULL,'2014-02-26 10:45:23','2014-02-26 10:45:23'),(13,'wWwrVM','http://yuqiong.me/2014/02/26/%E4%BC%81%E4%B8%9A%E5%BE%AE%E4%BF%A1%E5%85%AC%E4%BC%97%E5%B9%B3%E5%8F%B0%E5%BB%BA%E8%AE%BE%E6%8C%87%E5%8D%97',NULL,'2014-02-26 10:46:47','2014-02-26 10:46:47'),(14,'eygMnY','http://yuqiong.me/2014/02/26/%E5%A6%82%E4%BD%95%E5%88%A9%E7%94%A8%E5%A5%BD%E5%BE%AE%E4%BF%A1%E7%9A%84%E5%85%AC%E4%BC%97%E5%B9%B3%E5%8F%B0',NULL,'2014-02-26 10:47:48','2014-02-26 10:47:48'),(15,'QLff0j','http://yuqiong.me/2014/02/26/%E5%BE%AE%E4%BF%A1%E5%85%AC%E4%BC%97%E5%B9%B3%E5%8F%B0%E7%BB%99%E4%BC%A0%E7%BB%9F%E4%BC%81%E4%B8%9A%E5%B8%A6%E6%9D%A5%E4%BA%86%E4%BB%80%E4%B9%88',NULL,'2014-02-26 10:48:56','2014-02-26 10:48:56'),(16,'R8pKgn','http://yuqiong.me/2014/02/26/%E5%BE%AE%E4%BF%A1%E5%85%AC%E4%BC%97%E8%B4%A6%E5%8F%B7%E8%BF%90%E8%90%A5%E4%B8%83%E5%A4%A7%E8%A6%81%E7%B4%A0',NULL,'2014-02-26 10:49:47','2014-02-26 10:49:47'),(17,'zX8Ilq','http://yuqiong.me/2014/02/26/%E5%BE%AE%E4%BF%A1%E5%BC%80%E5%8F%91%E6%89%93%E9%80%A0%E4%BC%81%E4%B8%9A%E5%93%81%E7%89%8C%E6%96%B0%E5%BD%A2%E8%B1%A1',NULL,'2014-02-26 10:50:44','2014-02-26 10:50:44'),(18,'bfcVth','http://yuqiong.me/2014/02/26/%E5%B0%8F%E7%B1%B3%E5%BE%AE%E4%BF%A1%E7%99%BE%E4%B8%87%E7%B2%89%E4%B8%9D%E7%A7%98%E7%AC%88',NULL,'2014-02-26 10:51:45','2014-02-26 10:51:45'),(19,'SpW0Tj','http://yuqiong.me/2014/02/26/%E5%BE%AE%E4%BF%A1%E5%85%AC%E4%BC%97%E5%B9%B3%E5%8F%B0%E7%94%A8%E6%88%B7%E4%B8%AA%E4%BA%BA%E4%BF%A1%E6%81%AF%E4%BF%9D%E6%8A%A4',NULL,'2014-02-26 10:54:48','2014-02-26 10:54:48'),(20,'3tu3jn','http://yuqiong.me/2014/02/26/%E5%BE%AE%E4%BF%A1%E5%85%AC%E4%BC%97%E5%B9%B3%E5%8F%B0%E4%BD%BF%E7%94%A8%E8%A7%84%E5%88%99',NULL,'2014-02-26 10:55:49','2014-02-26 10:55:49'),(21,'gXkIGv','http://yuqiong.me/2014/02/26/%E7%90%86%E8%A7%A3%E5%B9%B6%E5%90%8C%E6%84%8F%E7%9A%84%E5%BE%AE%E4%BF%A1%E5%85%AC%E4%BC%97%E5%B9%B3%E5%8F%B0%E7%9A%84%E6%B3%95%E5%BE%8B%E8%B4%A3%E4%BB%BB',NULL,'2014-02-26 10:58:01','2014-02-26 10:58:01'),(22,'mfpHi4','http://yuqiong.me/2014/02/26/%E5%BE%AE%E4%BF%A1%E7%9A%84%E5%BE%88%E5%A4%9A%E6%B3%A1%E6%B3%A1%E8%A2%AB%E5%90%B9%E7%A0%B4%E4%BA%86-%E5%98%80%E5%98%80%E6%89%93%E8%BD%A6%E7%AE%97%E7%A5%9E%E9%A9%AC',NULL,'2014-02-26 11:00:25','2014-02-26 11:00:25'),(23,'t4NbEi','http://yuqiong.me/2014/02/27/%E6%82%A8%E6%98%AF%E5%90%A6%E4%B9%9F%E9%9D%A2%E4%B8%B4%E7%9D%80%E5%BE%AE%E4%BF%A1%E5%BA%94%E7%94%A8%E7%9A%84%E4%B8%89%E4%B8%AA%E8%AF%AF%E5%8C%BA',NULL,'2014-02-27 08:04:55','2014-02-27 08:04:55'),(24,'9i86E1','http://yuqiong.me/2014/02/27/%E7%96%AF%E7%8B%82%E7%9A%84%E5%BE%AE%E4%BF%A1-%E7%96%AF%E7%8B%82%E7%9A%84%E6%97%B6%E4%BB%A3',NULL,'2014-02-27 08:05:53','2014-02-27 08:05:53'),(25,'lXt4g2','http://yuqiong.me/2014/02/27/%E5%BE%88%E5%96%9C%E6%AC%A2%E7%9A%84%E4%B8%A4%E4%B8%AA%E6%95%85%E4%BA%8B-%E6%94%B9%E5%8F%98-%E5%92%8C-%E4%B8%8A%E8%B7%AF',NULL,'2014-02-27 08:07:57','2014-02-27 08:07:57'),(26,'9NUDcB','http://yuqiong.me/2014/02/27/%E4%BB%A5%E5%BE%AE%E4%BF%A1%E4%B8%BA%E4%BB%A3%E8%A1%A8%E7%9A%84%E7%A7%BB%E5%8A%A8%E4%BA%92%E8%81%94%E7%BD%91%E4%B8%BA%E4%BB%80%E4%B9%88%E5%8F%AF%E4%BB%A5%E8%B7%A8%E7%95%8C%E9%A2%A0%E8%A6%86',NULL,'2014-02-27 08:09:03','2014-02-27 08:09:03'),(27,'kiPHcY','http://yuqiong.me/2014/09/09/%E8%BA%AB%E4%B8%BA%E7%AE%A1%E7%90%86%E8%80%85-%E5%BF%85%E9%A1%BB%E8%A6%81%E6%B8%85%E6%99%B0%E5%9C%B0%E6%84%8F%E8%AF%86%E5%88%B0',NULL,'2014-09-09 08:06:03','2014-09-09 08:06:03'),(28,'35fFLC','http://yuqiong.me/2014/09/09/%E9%9B%95%E7%88%B7%E7%89%9B%E8%85%A9-%E7%94%A8%E4%BA%92%E8%81%94%E7%BD%91%E6%80%9D%E7%BB%B4%E7%8E%A9%E8%BD%AC%E9%A4%90%E9%A5%AE',NULL,'2014-09-09 08:12:45','2014-09-09 08:12:45'),(29,'5QrYT1','http://yuqiong.me/2014/09/09/%E9%94%80%E5%BA%93%E5%AD%98%E7%9A%8416%E6%90%AC%E6%AD%A6%E8%89%BA',NULL,'2014-09-09 08:52:26','2014-09-09 08:52:26'),(30,'BnGzgX','http://yuqiong.me/2014/09/09/%E9%94%80%E5%BA%93%E5%AD%98%E7%9A%8416%E6%8B%9B%E7%A7%98%E7%B1%8D',NULL,'2014-09-09 08:54:28','2014-09-09 08:54:28'),(31,'7w2N8d','http://yuqiong.me/2014/09/09/%E7%BD%91%E7%AB%99%E8%BF%90%E8%90%A5%E5%BF%85%E5%A4%87%E6%94%BB%E7%95%A5',NULL,'2014-09-09 09:00:20','2014-09-09 09:00:20'),(32,'ofrkED','http://yuqiong.me/2014/09/09/%E4%BA%86%E8%A7%A3%EF%BC%A2%EF%BC%A1%EF%BC%B4%E4%B8%89%E5%B7%A8%E5%A4%B4%E5%9D%90%E6%8B%A5%E7%9A%84%E6%95%B0%E6%8D%AE%E9%87%91%E7%9F%BF',NULL,'2014-09-09 09:31:22','2014-09-09 09:31:22'),(33,'7ehcf1','http://yuqiong.me/2014/09/09/%E4%BA%92%E8%81%94%E7%BD%91%E4%B8%89%E5%A4%A7%E5%B7%A8%E5%A4%B4bat%E5%9D%90%E6%8B%A5%E7%9A%84%E6%95%B0%E6%8D%AE%E9%87%91%E7%9F%BF',NULL,'2014-09-09 09:33:11','2014-09-09 09:33:11'),(34,'9zxcwA','http://yuqiong.me/2014/09/10/%E5%88%9D%E5%88%9B%E5%85%AC%E5%8F%B8%E5%A6%82%E4%BD%95%E5%88%86%E9%85%8D%E8%82%A1%E4%BB%BD%E6%9C%9F%E6%9D%83',NULL,'2014-09-10 03:57:22','2014-09-10 03:57:22'),(35,'LtGYI9','http://yuqiong.me/2014/09/10/%E5%95%86%E8%B6%85%E7%8E%8B%E8%80%85%E5%A4%A7%E6%B6%A6%E5%8F%91%E7%9A%84%E8%90%A5%E9%94%80%E4%BC%A0%E6%92%AD%E7%AD%96%E7%95%A5',NULL,'2014-09-10 04:38:25','2014-09-10 04:38:25'),(36,'p3hvz6','http://yuqiong.me/pages/me',NULL,'2014-09-27 00:52:20','2014-09-27 00:52:20'),(37,'fxkxfK','http://yuqiong.me/2014/09/27/%E4%BB%8A%E5%A4%A9%E5%A4%A9%E6%B0%94%E6%B2%A1%E6%9C%89%E9%9B%BE%E9%9C%BE',NULL,'2014-09-27 01:37:28','2014-09-27 01:37:28'),(38,'pyolfF','http://yuqiong.me/2014/10/13/%E4%BC%97%E7%AD%B9-%E6%83%85%E6%8A%95%E6%84%8F%E5%90%88%E7%9A%84%E5%8F%82%E4%B8%8E-%E4%BD%A0%E7%9A%84%E4%BC%97%E7%AD%B9%E5%BF%85%E5%A4%87%E6%8C%87%E5%8D%97',NULL,'2014-10-13 04:59:14','2014-10-13 04:59:14');
/*!40000 ALTER TABLE `redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resources`
--

DROP TABLE IF EXISTS `resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `size` int(11) DEFAULT NULL,
  `upload` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `itunes_metadata` tinyint(1) DEFAULT NULL,
  `itunes_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itunes_subtitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itunes_duration` int(11) DEFAULT NULL,
  `itunes_summary` text COLLATE utf8_unicode_ci,
  `itunes_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itunes_category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itunes_explicit` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resources`
--

LOCK TABLES `resources` WRITE;
/*!40000 ALTER TABLE `resources` DISABLE KEYS */;
INSERT INTO `resources` VALUES (1,NULL,'T2LVF0Xa8dXXXXXXXX___199306918.jpg','image/jpeg','2014-02-24 12:40:06','2014-02-24 12:40:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,'webwxgetmsgimg.jpg','image/jpeg','2014-02-27 08:10:21','2014-02-27 08:10:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,NULL,'QQ__20140901151910.png','image/png','2014-09-02 06:02:39','2014-09-02 06:02:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,'QQ__20141012213255.png','image/png','2014-10-13 05:00:03','2014-10-13 05:00:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,NULL,'QQ__20141012152421.png','image/png','2014-10-13 05:01:01','2014-10-13 05:01:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,NULL,'IMG_20141009_104212_mh1412828326295.jpg','image/jpeg','2014-10-13 05:01:22','2014-10-13 05:01:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,NULL,'IMG_20141009_122132.JPG','image/jpeg','2014-10-13 05:01:34','2014-10-13 05:01:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,NULL,'QQ__20141012152247.png','image/png','2014-10-13 05:02:00','2014-10-13 05:02:01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,NULL,'QQ__20141012152522.png','image/png','2014-10-13 05:02:11','2014-10-13 05:02:12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,NULL,'image002.jpg','image/jpeg','2014-10-13 05:02:33','2014-10-13 05:02:34',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,NULL,'004dHq3Wgy6DSzhwEZw36_690.jpg','image/jpeg','2014-10-13 05:03:15','2014-10-13 05:03:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,NULL,'QQ__20141012151257.jpg','image/jpeg','2014-10-13 05:03:41','2014-10-13 05:03:42',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('100'),('101'),('102'),('103'),('104'),('105'),('106'),('107'),('108'),('109'),('110'),('111'),('112'),('113'),('114'),('115'),('92'),('93'),('94'),('95'),('96'),('97'),('98'),('99');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sidebars`
--

DROP TABLE IF EXISTS `sidebars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sidebars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active_position` int(11) DEFAULT NULL,
  `config` text COLLATE utf8_unicode_ci,
  `staged_position` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sidebars`
--

LOCK TABLES `sidebars` WRITE;
/*!40000 ALTER TABLE `sidebars` DISABLE KEYS */;
INSERT INTO `sidebars` VALUES (1,0,'---\nmaximum_pages: 10\n',0,'PageSidebar'),(2,1,'---\nmaximum_tags: 20\n',NULL,'TagSidebar'),(3,2,'---\ntitle: Archives\nshow_count: true\ncount: 10\n',NULL,'ArchivesSidebar'),(4,3,'---\ntitle: Links\nbody: ! \"\\n<ul>\\n  <li><a href=\\\"http://www.publify.co\\\" title=\\\"Publify\\\">Publify</a></li>\\n\n  \\ <li><a href=\\\"http://t37.net\\\" title=\\\"Le Rayon UX\\\">Frédéric</a></li>\\n  <li><a\n  href=\\\"http://www.matijs.net/\\\" title=\\\"Matijs\\\">Matijs</a></li>\\n  <li><a href=\\\"http://elsif.fr\\\"\n  title=\\\"Yannick\\\">Yannick</a></li>\\n  <li><a href=\\\"http://blog.ookook.fr\\\" title=\\\"Thomas\\\">Thomas</a></li>\\n\n  \\ <li><a href=\\\"/admin\\\">Admin</a></li>\\n</ul>\\n\"\n',NULL,'StaticSidebar'),(5,4,'---\ntitle: Meta\n',NULL,'MetaSidebar');
/*!40000 ALTER TABLE `sidebars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sitealizer`
--

DROP TABLE IF EXISTS `sitealizer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sitealizer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sitealizer`
--

LOCK TABLES `sitealizer` WRITE;
/*!40000 ALTER TABLE `sitealizer` DISABLE KEYS */;
/*!40000 ALTER TABLE `sitealizer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'general','2014-01-22 22:57:25','2014-01-22 22:57:25','General'),(2,'写作','2014-01-22 23:41:31','2014-01-22 23:41:31','写作'),(3,'闲聊','2014-01-23 10:57:13','2014-01-23 10:57:13','闲聊'),(4,'日记','2014-01-23 10:57:15','2014-01-23 10:57:15','日记'),(5,'运营','2014-01-25 08:13:30','2014-01-25 08:13:30','运营'),(6,'2013年小jie','2014-01-27 04:01:23','2014-01-27 04:01:23','2013年小jie'),(7,'2013年小结','2014-01-27 04:01:30','2014-01-27 04:01:30','2013年小结'),(8,'wei','2014-01-27 04:01:30','2014-01-27 04:01:30','wei'),(9,'未完','2014-01-27 04:01:33','2014-01-27 04:01:33','未完'),(10,'2','2014-01-27 04:01:59','2014-01-27 04:01:59','2'),(11,'2013','2014-01-27 04:02:01','2014-01-27 04:02:01','2013'),(12,'2013xiao','2014-01-27 04:02:04','2014-01-27 04:02:04','2013xiao'),(13,'2013小结','2014-01-27 04:02:07','2014-01-27 04:02:07','2013小结'),(14,'xiaxue','2014-02-24 12:43:06','2014-02-24 12:43:06','xiaxue'),(15,'打死也不会说的34条微信公众号运营经验','2014-02-26 10:36:29','2014-02-26 10:36:29','打死也不会说的34条微信公众号运营经验'),(16,'微信公众账号展示新玩法','2014-02-26 10:38:32','2014-02-26 10:38:32','微信公众账号展示新玩法'),(17,'个人微信账号营销注意事项','2014-02-26 10:41:53','2014-02-26 10:41:53','个人微信账号营销注意事项'),(18,'马化腾','2014-02-26 10:43:05','2014-02-26 10:43:05','马化腾'),(19,'微信营销七个路标','2014-02-26 10:43:05','2014-02-26 10:43:05','微信营销七个路标'),(20,'企业为什么要开通微信公众平台','2014-02-26 10:44:20','2014-02-26 10:44:20','企业为什么要开通微信公众平台'),(21,'微信公众账号的创建及流程','2014-02-26 10:45:23','2014-02-26 10:45:23','微信公众账号的创建及流程'),(22,'企业微信公众平台建设指南','2014-02-26 10:46:47','2014-02-26 10:46:47','企业微信公众平台建设指南'),(23,'如何利用好微信的公众平台','2014-02-26 10:47:48','2014-02-26 10:47:48','如何利用好微信的公众平台'),(24,'微信公众平台给传统企业带来了什么','2014-02-26 10:48:56','2014-02-26 10:48:56','微信公众平台给传统企业带来了什么'),(25,'微信公众账号运营七大要素','2014-02-26 10:49:47','2014-02-26 10:49:47','微信公众账号运营七大要素'),(26,'微信开发打造企业品牌新形象','2014-02-26 10:50:44','2014-02-26 10:50:44','微信开发打造企业品牌新形象'),(27,'小米微信百万粉丝秘笈','2014-02-26 10:51:45','2014-02-26 10:51:45','小米微信百万粉丝秘笈'),(28,'微信公众平台用户个人信息保护','2014-02-26 10:54:48','2014-02-26 10:54:48','微信公众平台用户个人信息保护'),(29,'微信公众平台使用规则','2014-02-26 10:55:49','2014-02-26 10:55:49','微信公众平台使用规则'),(30,'理解并同意的微信公众平台的法律责任','2014-02-26 10:58:01','2014-02-26 10:58:01','理解并同意的微信公众平台的法律责任'),(31,'微信的很多泡泡被吹破了','2014-02-26 11:00:25','2014-02-26 11:00:25','微信的很多泡泡被吹破了'),(32,'嘀嘀打车算神马','2014-02-26 11:00:25','2014-02-26 11:00:25','嘀嘀打车算神马'),(33,'您是否也面临着微信应用的三个误区','2014-02-27 08:04:54','2014-02-27 08:04:54','您是否也面临着微信应用的三个误区'),(34,'疯狂的微信','2014-02-27 08:05:53','2014-02-27 08:05:53','疯狂的微信'),(35,'疯狂的时代','2014-02-27 08:05:53','2014-02-27 08:05:53','疯狂的时代'),(36,'很喜欢的两个故事','2014-02-27 08:07:57','2014-02-27 08:07:57','很喜欢的两个故事'),(37,'改变','2014-02-27 08:07:57','2014-02-27 08:07:57','改变'),(38,'和','2014-02-27 08:07:57','2014-02-27 08:07:57','和'),(39,'上路','2014-02-27 08:07:57','2014-02-27 08:07:57','上路'),(40,'以微信为代表的移动互联网为什么可以跨界颠覆','2014-02-27 08:09:03','2014-02-27 08:09:03','以微信为代表的移动互联网为什么可以跨界颠覆'),(41,'身为管理','2014-09-09 08:05:50','2014-09-09 08:05:50','身为管理'),(42,'身为管理者','2014-09-09 08:05:54','2014-09-09 08:05:54','身为管理者'),(43,'中国式管理的','2014-09-09 08:06:00','2014-09-09 08:06:00','中国式管理的'),(44,'中国式管理的智慧','2014-09-09 08:06:01','2014-09-09 08:06:01','中国式管理的智慧'),(45,'用','2014-09-09 08:12:33','2014-09-09 08:12:33','用'),(46,'用互联网思维','2014-09-09 08:12:37','2014-09-09 08:12:37','用互联网思维'),(47,'用互联网思维玩转餐饮','2014-09-09 08:12:40','2014-09-09 08:12:40','用互联网思维玩转餐饮'),(48,'用互联网思维玩转餐饮的','2014-09-09 08:12:41','2014-09-09 08:12:41','用互联网思维玩转餐饮的'),(49,'用互联网思维玩转餐饮的雕爷牛腩','2014-09-09 08:12:44','2014-09-09 08:12:44','用互联网思维玩转餐饮的雕爷牛腩'),(50,'销售','2014-09-09 08:51:33','2014-09-09 08:51:33','销售'),(51,'销售库存的','2014-09-09 08:51:52','2014-09-09 08:51:52','销售库存的'),(52,'销售库存的秘籍16','2014-09-09 08:51:58','2014-09-09 08:51:58','销售库存的秘籍16'),(53,'销售库存的16','2014-09-09 08:52:09','2014-09-09 08:52:09','销售库存的16'),(54,'销售库存的十六','2014-09-09 08:52:14','2014-09-09 08:52:14','销售库存的十六'),(55,'销售库存的16种','2014-09-09 08:52:19','2014-09-09 08:52:19','销售库存的16种'),(56,'销售库存的16种招式','2014-09-09 08:52:26','2014-09-09 08:52:26','销售库存的16种招式'),(57,'学习电子','2014-09-10 03:03:17','2014-09-10 03:03:17','学习电子'),(58,'学习电子商务','2014-09-10 03:03:19','2014-09-10 03:03:19','学习电子商务'),(59,'从口诀开始','2014-09-10 03:03:24','2014-09-10 03:03:24','从口诀开始'),(60,'o2o与电商','2014-09-10 03:41:49','2014-09-10 03:41:49','O2O与电商'),(61,'o2o与电商热点问答','2014-09-10 03:41:51','2014-09-10 03:41:51','O2O与电商热点问答'),(62,'o2o与电商热点问答','2014-09-10 03:41:51','2014-09-10 03:41:51','O2O与电商热点问答'),(63,'初创公司','2014-09-10 03:57:48','2014-09-10 03:57:48','初创公司'),(64,'初创公司如何分配','2014-09-10 03:57:51','2014-09-10 03:57:51','初创公司如何分配'),(65,'初创公司如何分配股份期权','2014-09-10 03:57:56','2014-09-10 03:57:56','初创公司如何分配股份期权');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `text_filters`
--

DROP TABLE IF EXISTS `text_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `text_filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `markup` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filters` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `text_filters`
--

LOCK TABLES `text_filters` WRITE;
/*!40000 ALTER TABLE `text_filters` DISABLE KEYS */;
INSERT INTO `text_filters` VALUES (1,'none','None','none','--- []\n','--- {}\n'),(2,'markdown','Markdown','markdown','--- []\n','--- {}\n'),(3,'smartypants','SmartyPants','none','---\n- :smartypants\n','--- {}\n'),(4,'markdown smartypants','Markdown with SmartyPants','markdown','---\n- :smartypants\n','--- {}\n'),(5,'textile','Textile','textile','--- []\n','--- {}\n');
/*!40000 ALTER TABLE `text_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `triggers`
--

DROP TABLE IF EXISTS `triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `triggers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pending_item_id` int(11) DEFAULT NULL,
  `pending_item_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `due_at` datetime DEFAULT NULL,
  `trigger_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `triggers`
--

LOCK TABLES `triggers` WRITE;
/*!40000 ALTER TABLE `triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8_unicode_ci,
  `name` text COLLATE utf8_unicode_ci,
  `notify_via_email` tinyint(1) DEFAULT NULL,
  `notify_on_new_articles` tinyint(1) DEFAULT NULL,
  `notify_on_comments` tinyint(1) DEFAULT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token_expires_at` datetime DEFAULT NULL,
  `text_filter_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT '1',
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'active',
  `last_connection` datetime DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `resource_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'sg552','cad70833f47a03de196c01c4e855c83d19ed0376','shensiwei@sina.com','sg552',0,0,0,1,NULL,NULL,'1','active','2014-01-22 23:02:43','---\nnickname: Publify Admin\nfirstname: \'\'\nlastname: \'\'\ntwitter_account: \'\'\ntwitter_oauth_token: \'\'\ntwitter_oauth_token_secret: \'\'\ndescription: \'\'\nurl: \'\'\nmsn: \'\'\nyahoo: \'\'\njabber: \'\'\naim: \'\'\ntwitter: \'\'\n',NULL),(2,'yuqiong','a504bd01f97690c13a88b01d9c5ca101cfcfe81d','378212866@qq.com','yuqiong',0,0,0,1,'5689aa8ed4583ead69c7b537cf444a0dec8cb123','2014-02-05 23:35:13','4','active','2014-10-13 05:18:06','---\nfirstname: \'\'\nlastname: \'\'\nnickname: \'\'\ntwitter_account: \'\'\ntwitter_oauth_token: \'\'\ntwitter_oauth_token_secret: \'\'\ndescription: 你好，我是张誉琼。\nurl: yuqiong.me\nmsn: \'\'\nyahoo: \'\'\njabber: \'\'\naim: \'\'\ntwitter: \'\'\n',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-13 13:35:09
