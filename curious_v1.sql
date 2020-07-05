/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : curious_v1

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 30/06/2020 22:07:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer`  (
  `id` bigint(255) NOT NULL AUTO_INCREMENT COMMENT '回答id（递增自动生成）',
  `idq` bigint(255) NULL DEFAULT NULL COMMENT '问题id',
  `idu` bigint(255) NULL DEFAULT NULL COMMENT '用户id',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '回答内容',
  `upvote` int(255) NULL DEFAULT NULL COMMENT '点赞数',
  `gmt_create` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '创建时间（创建时自动生成）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_ans_idq`(`idq`) USING BTREE,
  INDEX `fk_ans_idu`(`idu`) USING BTREE,
  CONSTRAINT `fk_ans_idq` FOREIGN KEY (`idq`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_ans_idu` FOREIGN KEY (`idu`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES (1, 16, 5, '上小学 老师叫我回答问题 我当时很害羞就把头伸进桌子里 结果拔不出来了 后来消防队都来了。。。', 3, '2020-06-19 13:29:35.798');
INSERT INTO `answer` VALUES (2, 16, 6, '高中改编《六国论》写了篇《拖堂论》，因为数学老师特别爱拖堂，特别出名。完了写完发贴吧，被副校长看见了，然后就把数学老师教育了一顿...后来语文老师还在我班读了一遍我的“大作”...妈蛋，这么三年就这么一次读老子的作文，不知道该开心还是该哭...不过还好，语文老师没找我事（班主任，事儿多），估计因为没说她拖堂，倒是数学老师每次见我都很幽怨...\n拖堂论\n课间时尽，非时不足，表不快，弊在拖堂。拖堂而时亏，课尽之道也。或曰：六科互拖，止数学耶？曰：不拖者以拖者丧，盖有榜样，不能独完。故曰：弊在拖堂也。启斌以数学之外，小则课间，大则自习。较启斌之数学，与拖堂而得者，其实百倍；憋尿之所亡，与考试而亡者，其实亦百倍。则启斌之所大欲，学生之所大患，固不在考矣。思厥华保健，找重枝，说启斌，以有体育之时。高玲视之不甚惜，举以予人，如弃草芥。今日拖五分，明日拖十分，然后得一节安寝。起视四境，而启斌又至矣。然则下课时间有限，启斌之欲无厌，增之弥繁，拖之愈久。故不拖而下课时间已定矣。至于颠覆，理固宜然。古人云：“以自习事启斌，犹抱薪救火，薪不尽，火不灭。”此言得之。高玲未尝拖堂，终继少文迁灭，何哉？与斌而不助少文也。少文既丧，玲亦不免矣。保健沙涛，始有远略，能守其课，义不拖堂。是故体育虽副科而后亡，斯用兵之效也。至保健以高玲为计，始速祸焉。保健尝五战于重枝，未败而连胜。后启斌击沙涛者再，华保健却之。洎华以谗诛，活动为物，惜其用武而不终也。且保健沙涛处启斌革灭殆尽之际，可谓智力孤危，战败而亡，诚不得已。向使各人各爱其课，高玲勿附于斌，自习不行，课间犹在，则胜负之数，存亡之理，当与启斌相较，或未易量。呜呼！以拖堂之力，抓数学之时间，以偷自习之心，备下节之功课，并力向上，则吾恐启斌食之不得下咽也。悲夫！有如此之势，而为启斌积威之所劫，日拖月拖，以趋于亡。为师者无使为积威之所劫哉！夫六科与启斌皆老师，其势弱于斌，而犹有可以不拖而胜之之势。苟以天下之大，而从六科破亡之故事，是又在六科下矣。', 5, '2020-06-19 13:29:39.073');
INSERT INTO `answer` VALUES (3, 16, 7, '当了学生会主席，\n\n一年后解散了学生会…\n\nI was on fire back there man.', 4, '2020-06-19 15:03:14.832');
INSERT INTO `answer` VALUES (4, 13, 7, '如果有一天，我和马云走在大街上。然后马云他突然就在大街上摇起了花手。而且他告诉我他摇花手是因为他想要通过摇花手来支持失足妇女。这不我正愁怎么搭话才能一鸣惊人让他认我当干儿子呢。虽然我心里在想失足妇女跟我没啥关系，马云你特么快送老子两个亿啊。但我也很清楚我说出来肯定像个憨批，没有人这么说话的。于是我也摇花手。摇的特别带劲。虽然跟我没啥关系，但我总觉得我摇的香汗淋漓说不定就能认个干爹呢。', 2, '2020-06-30 15:55:01.157');
INSERT INTO `answer` VALUES (6, 1, 7, '“今天网络公司刚升级到了5g网络，听说下载速度有1g每秒呢。”\n\n“是啊是啊，上网速度是真的快，比浏览本地的东西都快，看小视频再也没卡过了呢。”\n\n“咱下个大游戏感受下速度到底有多快吧！”\n\n“好啊，朋友前几天给我分享了个世界ol，有200g大呢，就拿它试了。”\n(点开了朋友发的链接，网页提示要有某云盘才能下载）\n\n“诶，这个东西是下载器吗，那就先下载它吧。”\n(点击了下载某云盘，网速真的很快，刚点下去下载，就已经下载并安装好了，整个过程也就是眨眼那一瞬间）\n\n“啧啧啧，科技日新月异啊，这5g是真tm的快。”\n\n——连接资源中——\n\n——连接成功，正在下载——\n\n——下载速度4b\\s,预计在1年零8个月零16天后下载完成——\n\n“这是怎么回事？电脑网线被老鼠咬坏了么？还是电脑坏了？”\n\n“没道理啊，网线好好的，这可是刚买的新电脑呢，用的最尖端的cpu  i15—99999k。”\n\n“有个点击加速，试试看。”\n\n——正在体验会员下载加速，当前下载速度1.5g/s——\n\n——体验结束，您的下载速度提升了4e倍，您购买会员后可享受该加速服务——\n\n“朋友说这游戏可好玩了，为了享受一下游戏，我就破费一下吧”\n\n——支付成功，正在享受会员加速——\n\n——当前下载速度1mb/s——\n\n——系统提示，购买超级会员后可享受极致加速哦——\n\n“...嗨，麻烦死了，买了买了，快点下载。”\n\n——支付成功，正在享受超级会员专属加速——\n\n——当前下载速度2mb\\s——\n\n“见了鬼了，还要下载一天多。没办法，让它慢慢下吧。”\n\n第二天(经过一天一夜的不断下载，下载进度已经到了95%)\n\n(激动地盯着屏幕上的下载进度，缓缓前进的进度条像是一条贪吃蛇，贪婪的吞噬着最后的耐心）\n\n(进度条到99.9的那一瞬间，心情激动到了顶点，正当他准备进行下一步时，屏幕上弹出来一行字，这行字犹如死神的宣判一般，砸在了他头上)\n\n——资源验证失败，请重新下载——\n\nps:笑笑就好，博君一乐。', 0, '2020-06-10 02:19:37.186');
INSERT INTO `answer` VALUES (7, 3, 5, '寻找新梅西，就像在一片蓝色的海洋球池里，寻找一个红色的球，只要有这样一个红色的球存在，那他就一定会被发现，寻找新C罗，就像在一片蓝色海洋球池里寻找一个同样颜色的实心球，你必须耐心寻找，即使他确实存在，即使你已经看到他了，如果你不去了解他，他就会被埋没', 0, '2020-06-13 16:26:32.612');
INSERT INTO `answer` VALUES (8, 37, 5, '因为资本如果不能继续保持增值，它就会被更能增殖的资本淘汰、吞噬，活的比较开心的大资本家就是因为他们在经济结构找到了一个可以使资本相对稳定增殖的地位，至于中产小资、工人贵族们就没这么幸运了，每时每刻无不在担心自己的跌落。', 0, '2020-06-13 16:29:43.305');
INSERT INTO `answer` VALUES (9, 4, 5, '你让他打三号位，把水花配给他做队友\n\n你看他出手选择是不是不一样了\n\n专心想赢的人都一样，都在专注于最靠谱的得分方式，\n\n科比又不是刷子，他自己出手的原因是且只会是他觉得自己出手最靠谱\n\n詹姆斯怎么不让欧文组织？詹姆斯觉得自己组织更靠谱\n\n东部决赛为什么小卡去顶字母哥？小卡觉得队友顶不住了\n\n明明大家都一样何必乌鸦站在猪身上\n\n克莱手感好的时候，勇士全队都盯着他的跑位，有机会立马就传，\n\n谁关心他出手是不是合理了？合理？连进13球的人还好意思谈出手选择合理？\n\n不就是信心嘛\n\n所有球员的出手选择都来自于信心\n\n他觉得这是个机会，他才投\n\n你看看追梦格林前面放两米的大空位愣是传球了\n\n还要美其名曰在线发牌\n\n不就是没信心嘛\n\n人家库里，克莱，杜兰特都是颜射也算好机会\n\n论合理，海啸三兄弟有一个出手合理的吗？\n\n他们都合理了，詹姆斯就三连冠了\n\n科比要是失去信心，他会比原来的自己更强吗？\n\n不会\n\n他会在欧洲打球\n\n你都不会知道他', 0, '2020-06-13 16:34:22.278');
INSERT INTO `answer` VALUES (10, 5, 6, '因为动物没钱，买不到盐。\n\n上学时去农场实习，临了教授和农场主决定给牛 助教们发点奖金，于是拿来了好几块砖头大的盐块。\n\n牛 看到盐块时都跟粉丝见到偶像，马见了胡萝卜，猫见到猫薄荷似的，全冲到盐块周围疯狂的舔，牛眼睛瞪得都快掉下来了，完全没有平时吃草的悠然自得。', 0, '2020-06-13 16:40:21.282');
INSERT INTO `answer` VALUES (11, 12, 6, '改裤脚，换拉锁，缝补衣服。。。[doge]', 0, '2020-06-13 17:40:58.766');
INSERT INTO `answer` VALUES (13, 5, 8, '怎么都那么学术啊。。。不是因为好吃吗？？？', 0, '2020-06-19 11:32:27.450');
INSERT INTO `answer` VALUES (14, 1, 8, '你的网速和实际应用是两码事，实际应用是服务器那端给你开放了多少速度。就好比你买了辆轻松跑500公里每小时的车，单位距离你家50公里，开它去上班并不代表你能用6分钟到单位，实际的结果可能是俩小时，哈哈哈哈哈哈哈哈哈哈原谅我绷不住笑了。', 0, '2020-06-19 11:33:06.424');
INSERT INTO `answer` VALUES (15, 7, 8, '1. 5G车路协同：厦门、湖北；  \n2. 5G工业物联网：湖南华菱湘钢、三一重工、新凤鸣、中国商飞等；', 0, '2020-06-19 11:34:15.391');
INSERT INTO `answer` VALUES (16, 27, 9, '古巨基说：“网上人称李健为`猫系`理工男。”（猫系男和犬系男的梗）旨在说李健闷骚高冷的性格，李健听到“猫系”一词，立刻纠正：“猫科！”“大概因为我属虎吧！”\n\n李健的本科毕业论文题目是:\n《在Unix操作系统下的数据库访问》', 1, '2020-06-19 13:27:09.872');
INSERT INTO `answer` VALUES (17, 25, 9, '文化输出一定要靠流行文化。国家京剧团，孔子学院一类的东西当然也应该有，但文化输出真正的主力却不应该是他们。要知道，无论国内外，最多的乃是俗人，真正愿意以非娱乐的态度去了解异文化的人有几个？想想在座的各位自己是怎么接触和了解到日本文化的？是街头的艺伎表演？是日方组织的能剧团？还是陆家嘴的桃太郎闪客cos？福泽谕吉学院？真正能输出出去走向大众的文化产品你得保证它好吃、好玩、好看，能和普通人的生活娱乐需求结合到一起，也就是所谓的通俗文化产品才行。日本文化输出的主力是什么？动画、漫画、游戏、电影（早期）、特摄片。我们熟悉的一些如和服、艺伎、茶道、武士、忍者、寿司一类的日本传统文化实际上是随着上述流行文化的载体作为其中的元素传播到外界的。早年香港把中国功夫推广到世界也靠的是已经发展起来的电影工业。而不是组织一堆“大师”跑到美国时代广场耍大刀来输出。最后，文化产品首先要满足本国人民的精神娱乐要求，我们耳熟能详的日本文化产品有几个不是在本国受到广泛欢迎和优秀成绩后再输出的？人性都是共通的，你不能指望一个连本国年轻人都不感兴趣的东西还能让别国人民接受', 1, '2020-06-19 13:27:15.147');
INSERT INTO `answer` VALUES (18, 18, 9, '第一，找到工作才是真正的上岸，读研期间好好规划一下这方面。\n\n第二，有一个健康的身体和心态。\n\n第三，参考前两条。', 2, '2020-06-19 11:56:26.663');
INSERT INTO `answer` VALUES (22, 13, 11, '有外媒记者问“为什么中国没人抗议支持”，华春莹回应法新社记者：世界范围内抗议美国警方暴力执法和种族歧视的活动还在继续，但迄今在中国未看到有任何抗议活动。你对此有何评论？如果中国人民想通过抗议活动来表达支持，中方是否会鼓励？华春莹：你在中国常驻，应该能观察到，中国国内很多民众也高度关注在美国由于弗洛伊德之死引发的大规模抗议活动。中方也表达了反对任何形式种族歧视的立场。希望美方认真倾听人民的呼声。', 0, '2020-06-19 11:56:15.264');
INSERT INTO `answer` VALUES (23, 8, 11, '在商店里写着UWP标题的，安装了是Win32桌面版。\n\n真正的UWP版反而要从网络上到处找包下载安装，还得禁止自动更新。\n\n有意思。\n\n已卸载。', 0, '2020-06-19 13:24:13.513');
INSERT INTO `answer` VALUES (24, 38, 12, '1、大多数人都希望成为资本家，通过非劳动（剥削）获得物质保障生活。知乎投资理财相关动不动就拿出来用的“财富自由”就是利用这种心理。损他利己是人类本能。2、无论资本家，或者无产阶级，在资本游戏中唯一不同的就是资本多少。就像资本论中说的，产出价值的唯一方式是劳动，但劳动产出的价值是一定的。所以分配方式决定了谁占可以获得更多的资本。其实所谓资本家剥削无产阶级只是一种表现，本质上来说，是为了攫取更多的利润。3、资本家和无产阶级，具有天然的利益冲突。4、很多“剥削”已经通过法律、道德、习惯等固定下来。5、资产具有自我增值的内生性。6、不仅可以通过生产端进行剥夺剩余价值，通过消费主义洗脑，资产阶级、小布尔乔亚等等都要接受剥削。7、这是一场零和博弈。', 0, '2020-06-19 13:25:38.443');
INSERT INTO `answer` VALUES (25, 12, 12, '从A摊买，然后再卖给B摊。。\n\n发现价值洼地，增加市场有效性，实现地摊市场价格发现功能。\n\n不好意思我的专业只会干这个。。。', 0, '2020-06-19 13:26:40.058');
INSERT INTO `answer` VALUES (26, 43, 13, '中国父母在教育上存在的最大问题是——不愿等待。', 0, '2020-06-19 13:28:33.487');
INSERT INTO `answer` VALUES (27, 45, 13, '站在教育信息化的角度，只谈一点：行业自诩的壁垒和门槛，被真正的互联网企业全方位吊打。每年教育装备展，做直录播的企业多吧。但真的开始需要大面积使用直录播课的时候，主线战场能打的只有两个：QQ，钉钉。“三通两平台”，各地已基本建成，也都有相应的配套应用。但真的到了具体的常态化场景，比如疫情上报，绝大部分教育局和学校还是会选择钉钉。原因也很简单。教育信息化推动早期，传统的教育厂商确实具备一定的信息、渠道、产品优势。而这种微弱的优势带来的幻觉，就是所谓的行业壁垒与门槛。另一方面，阿里腾讯这些真正的掠食者，当时的重心也并没在这个方向。这次疫情，将教育行业“产品优势、技术优势、渠道优势”的美梦彻底惊醒——吃你的肉，与你何干！教育厂商还想生存，得尽快找到自己的方向。要么跨界转型、要么深耕自己的区域、要么专注某一业务领域、要么抱大佬大腿。如果还想躺着蹭红利，估计没什么戏了。', 0, '2020-06-19 13:29:24.251');
INSERT INTO `answer` VALUES (28, 6, 5, '测试回答', 0, '2020-06-19 15:04:45.073');

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection`  (
  `id` bigint(255) NOT NULL AUTO_INCREMENT COMMENT '收藏id（递增自动生成）',
  `idu` bigint(255) NULL DEFAULT NULL COMMENT '用户id',
  `idq` bigint(255) NULL DEFAULT NULL COMMENT '问题id',
  `gmt_create` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '创建时间（创建时自动生成）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_col_idq`(`idq`) USING BTREE,
  INDEX `fk_col_idu`(`idu`) USING BTREE,
  CONSTRAINT `fk_col_idq` FOREIGN KEY (`idq`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_col_idu` FOREIGN KEY (`idu`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collection
-- ----------------------------
INSERT INTO `collection` VALUES (1, 5, 19, '2020-06-13 16:36:14.844');
INSERT INTO `collection` VALUES (2, 5, 18, '2020-06-13 16:36:19.286');
INSERT INTO `collection` VALUES (3, 6, 17, '2020-06-13 16:40:47.531');
INSERT INTO `collection` VALUES (4, 6, 15, '2020-06-13 16:40:49.102');
INSERT INTO `collection` VALUES (5, 6, 18, '2020-06-13 17:25:09.512');
INSERT INTO `collection` VALUES (6, 6, 12, '2020-06-13 17:37:38.891');
INSERT INTO `collection` VALUES (9, 9, 18, '2020-06-19 11:46:42.707');
INSERT INTO `collection` VALUES (11, 11, 13, '2020-06-19 11:55:29.123');
INSERT INTO `collection` VALUES (12, 13, 15, '2020-06-19 13:29:55.983');
INSERT INTO `collection` VALUES (13, 5, 16, '2020-06-19 15:02:59.719');
INSERT INTO `collection` VALUES (14, 6, 16, '2020-06-30 15:53:51.971');

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `id` bigint(255) NOT NULL AUTO_INCREMENT COMMENT '历史记录id（递增自动生成）',
  `idu` bigint(255) NULL DEFAULT NULL COMMENT '用户id',
  `idq` bigint(255) NULL DEFAULT NULL COMMENT '问题id',
  `gmt_create` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '创建时间（创建时自动生成）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_his_idq`(`idq`) USING BTREE,
  INDEX `fk_his_idu`(`idu`) USING BTREE,
  CONSTRAINT `fk_his_idq` FOREIGN KEY (`idq`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_his_idu` FOREIGN KEY (`idu`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 138 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES (1, 5, 3, '2020-06-13 16:25:26.235');
INSERT INTO `history` VALUES (2, 5, 7, '2020-06-13 16:25:37.769');
INSERT INTO `history` VALUES (3, 5, 3, '2020-06-13 16:26:29.135');
INSERT INTO `history` VALUES (4, 5, 3, '2020-06-13 16:26:39.636');
INSERT INTO `history` VALUES (5, 5, 3, '2020-06-13 16:26:45.915');
INSERT INTO `history` VALUES (6, 5, 16, '2020-06-13 16:28:26.220');
INSERT INTO `history` VALUES (7, 5, 37, '2020-06-13 16:29:16.111');
INSERT INTO `history` VALUES (8, 5, 4, '2020-06-13 16:30:45.324');
INSERT INTO `history` VALUES (9, 5, 4, '2020-06-13 16:34:33.587');
INSERT INTO `history` VALUES (10, 5, 16, '2020-06-13 16:36:25.280');
INSERT INTO `history` VALUES (11, 6, 5, '2020-06-13 16:39:54.744');
INSERT INTO `history` VALUES (12, 6, 5, '2020-06-13 16:40:32.037');
INSERT INTO `history` VALUES (13, 6, 16, '2020-06-13 16:41:28.330');
INSERT INTO `history` VALUES (14, 6, 12, '2020-06-13 17:37:53.426');
INSERT INTO `history` VALUES (15, 6, 12, '2020-06-13 17:39:37.131');
INSERT INTO `history` VALUES (16, 5, 16, '2020-06-14 16:37:57.355');
INSERT INTO `history` VALUES (17, 5, 16, '2020-06-14 16:44:01.178');
INSERT INTO `history` VALUES (18, 5, 16, '2020-06-14 16:52:10.311');
INSERT INTO `history` VALUES (19, 5, 16, '2020-06-14 17:43:23.563');
INSERT INTO `history` VALUES (20, 5, 16, '2020-06-14 21:17:26.660');
INSERT INTO `history` VALUES (21, 5, 17, '2020-06-14 21:21:45.800');
INSERT INTO `history` VALUES (22, 5, 19, '2020-06-14 21:25:59.404');
INSERT INTO `history` VALUES (23, 5, 19, '2020-06-14 21:26:20.356');
INSERT INTO `history` VALUES (24, 5, 19, '2020-06-14 21:29:00.328');
INSERT INTO `history` VALUES (25, 5, 19, '2020-06-14 21:29:53.067');
INSERT INTO `history` VALUES (26, 5, 18, '2020-06-14 21:30:09.607');
INSERT INTO `history` VALUES (27, 5, 18, '2020-06-14 21:30:34.132');
INSERT INTO `history` VALUES (28, 7, 7, '2020-06-14 23:45:20.557');
INSERT INTO `history` VALUES (70, 5, 16, '2020-06-19 01:06:38.580');
INSERT INTO `history` VALUES (71, 5, 19, '2020-06-19 01:06:42.527');
INSERT INTO `history` VALUES (72, 8, 5, '2020-06-19 11:31:05.475');
INSERT INTO `history` VALUES (73, 8, 5, '2020-06-19 11:31:18.559');
INSERT INTO `history` VALUES (74, 8, 1, '2020-06-19 11:32:32.941');
INSERT INTO `history` VALUES (75, 8, 7, '2020-06-19 11:33:13.711');
INSERT INTO `history` VALUES (76, 8, 7, '2020-06-19 11:34:19.162');
INSERT INTO `history` VALUES (77, 9, 27, '2020-06-19 11:35:16.345');
INSERT INTO `history` VALUES (78, 9, 25, '2020-06-19 11:36:05.606');
INSERT INTO `history` VALUES (79, 9, 25, '2020-06-19 11:36:47.580');
INSERT INTO `history` VALUES (80, 9, 27, '2020-06-19 11:37:27.428');
INSERT INTO `history` VALUES (81, 9, 27, '2020-06-19 11:37:35.392');
INSERT INTO `history` VALUES (82, 9, 27, '2020-06-19 11:37:38.350');
INSERT INTO `history` VALUES (83, 9, 25, '2020-06-19 11:45:13.712');
INSERT INTO `history` VALUES (84, 9, 16, '2020-06-19 11:45:28.250');
INSERT INTO `history` VALUES (85, 9, 19, '2020-06-19 11:45:39.884');
INSERT INTO `history` VALUES (86, 9, 17, '2020-06-19 11:45:43.871');
INSERT INTO `history` VALUES (87, 9, 18, '2020-06-19 11:45:53.113');
INSERT INTO `history` VALUES (88, 9, 18, '2020-06-19 11:46:25.818');
INSERT INTO `history` VALUES (89, 9, 18, '2020-06-19 11:46:40.426');
INSERT INTO `history` VALUES (101, 11, 13, '2020-06-19 11:55:03.485');
INSERT INTO `history` VALUES (102, 11, 18, '2020-06-19 11:56:25.062');
INSERT INTO `history` VALUES (103, 5, 16, '2020-06-19 12:09:37.215');
INSERT INTO `history` VALUES (104, 5, 18, '2020-06-19 12:09:51.860');
INSERT INTO `history` VALUES (105, 5, 15, '2020-06-19 12:09:55.466');
INSERT INTO `history` VALUES (106, 5, 15, '2020-06-19 12:10:00.690');
INSERT INTO `history` VALUES (107, 11, 16, '2020-06-19 12:18:06.989');
INSERT INTO `history` VALUES (108, 11, 37, '2020-06-19 12:18:12.478');
INSERT INTO `history` VALUES (109, 11, 36, '2020-06-19 12:18:30.450');
INSERT INTO `history` VALUES (110, 11, 40, '2020-06-19 12:18:42.574');
INSERT INTO `history` VALUES (112, 11, 8, '2020-06-19 13:23:06.475');
INSERT INTO `history` VALUES (113, 12, 38, '2020-06-19 13:24:44.328');
INSERT INTO `history` VALUES (114, 12, 38, '2020-06-19 13:24:51.296');
INSERT INTO `history` VALUES (115, 12, 38, '2020-06-19 13:25:41.458');
INSERT INTO `history` VALUES (116, 12, 12, '2020-06-19 13:25:47.481');
INSERT INTO `history` VALUES (117, 12, 12, '2020-06-19 13:25:53.822');
INSERT INTO `history` VALUES (118, 12, 27, '2020-06-19 13:27:06.681');
INSERT INTO `history` VALUES (119, 12, 25, '2020-06-19 13:27:13.119');
INSERT INTO `history` VALUES (120, 12, 24, '2020-06-19 13:27:18.310');
INSERT INTO `history` VALUES (121, 12, 43, '2020-06-19 13:27:29.602');
INSERT INTO `history` VALUES (122, 13, 43, '2020-06-19 13:27:56.691');
INSERT INTO `history` VALUES (123, 13, 45, '2020-06-19 13:28:41.285');
INSERT INTO `history` VALUES (124, 13, 16, '2020-06-19 13:29:34.336');
INSERT INTO `history` VALUES (125, 13, 19, '2020-06-19 13:29:43.767');
INSERT INTO `history` VALUES (126, 13, 15, '2020-06-19 13:29:53.464');
INSERT INTO `history` VALUES (127, 5, 16, '2020-06-19 15:02:51.406');
INSERT INTO `history` VALUES (128, 5, 16, '2020-06-19 15:03:07.867');
INSERT INTO `history` VALUES (129, 5, 6, '2020-06-19 15:04:38.432');
INSERT INTO `history` VALUES (130, 5, 6, '2020-06-19 15:04:51.812');
INSERT INTO `history` VALUES (131, 5, 24, '2020-06-19 15:06:44.071');
INSERT INTO `history` VALUES (132, 5, 16, '2020-06-19 15:16:15.898');
INSERT INTO `history` VALUES (133, 5, 16, '2020-06-30 10:39:32.836');
INSERT INTO `history` VALUES (134, 5, 16, '2020-06-30 10:43:27.337');
INSERT INTO `history` VALUES (135, 5, 2, '2020-06-30 10:43:38.642');
INSERT INTO `history` VALUES (136, 6, 15, '2020-06-30 15:54:51.747');
INSERT INTO `history` VALUES (137, 6, 13, '2020-06-30 15:54:58.368');

-- ----------------------------
-- Table structure for notification
-- ----------------------------
DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification`  (
  `id` bigint(255) NOT NULL AUTO_INCREMENT COMMENT '通知id（递增自动生成）',
  `idu` bigint(255) NULL DEFAULT NULL COMMENT '用户id',
  `read` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否已读',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '通知内容',
  `gmt_create` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '创建时间（创建时自动生成）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_noti_idu`(`idu`) USING BTREE,
  CONSTRAINT `fk_noti_idu` FOREIGN KEY (`idu`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notification
-- ----------------------------
INSERT INTO `notification` VALUES (1, 5, 'n', '您的问题\'你在学校期间因何事一举成名全校皆知？\'有新的回答了，快去看看吧。', '2020-06-30 10:27:38.468');
INSERT INTO `notification` VALUES (2, 6, 'y', '一船风点赞了您关于问题\'你在学校期间因何事一举成名全校皆知？\'的回答。', '2020-06-13 16:39:35.916');
INSERT INTO `notification` VALUES (4, 5, 'n', '两盏茶点赞了您关于问题\'你在学校期间因何事一举成名全校皆知？\'的回答。', '2020-06-30 10:27:43.362');
INSERT INTO `notification` VALUES (5, 7, 'y', '两盏茶点赞了您关于问题\'你在学校期间因何事一举成名全校皆知？\'的回答。', '2020-06-14 23:45:29.927');
INSERT INTO `notification` VALUES (6, 6, 'y', '两盏茶点赞了您关于问题\'你在学校期间因何事一举成名全校皆知？\'的回答。', '2020-06-13 17:37:27.598');
INSERT INTO `notification` VALUES (7, 7, 'n', '一船风点赞了您关于问题\'如何评价你的研究生同学们？\'的回答。', '2020-06-14 21:29:58.915');
INSERT INTO `notification` VALUES (11, 0, 'y', ' \'333333@fake.com\' 的言论 [我师兄给我讲，每个实验室都会招一个这么一个人，他外形不好看，没有对象；做理论，数学基础差；做实验，一进实验室，就有东西坏；干啥啥不行，师门聚餐第一名的学生，存在的意义是安慰其他学生，他那么菜，都不慌，你们慌什么，你们能力是有长处的，将来有饭吃的，对课题组的进步有积极意义的。但是我环顾了一圈，我们实验室似乎没有这样的学生，A学长能力强，理论实验都有一套，B学长外形贼帅气，对象特别漂亮，C学长做实验特别厉害，好多我都要去问他，和我同级的D理论和代码也特别好。学长可能说的是别的实验室吧，我们实验室每个学生都有一技之长，我们前途都是光明的，不说了，庆祝学长发论文，导师让我们讨论聚餐去哪里，我去研究下周围还有什么好吃的没吃过。] 涉嫌 [故事造假] ，请查阅处理。', '2020-06-19 15:52:18.807');
INSERT INTO `notification` VALUES (12, 5, 'n', '五色云点赞了您关于问题\'你在学校期间因何事一举成名全校皆知？\'的回答。', '2020-06-30 10:27:46.950');
INSERT INTO `notification` VALUES (13, 7, 'n', '五色云点赞了您关于问题\'你在学校期间因何事一举成名全校皆知？\'的回答。', '2020-06-19 11:45:33.786');
INSERT INTO `notification` VALUES (14, 6, 'n', '五色云点赞了您关于问题\'你在学校期间因何事一举成名全校皆知？\'的回答。', '2020-06-19 11:45:35.553');
INSERT INTO `notification` VALUES (15, 7, 'n', '五色云点赞了您关于问题\'如何评价你的研究生同学们？\'的回答。', '2020-06-19 11:45:41.436');
INSERT INTO `notification` VALUES (16, 9, 'n', '六道轮点赞了您关于问题\'27岁，今年研究生上岸，有什么忠告可以给我的？\'的回答。', '2020-06-19 11:47:20.187');
INSERT INTO `notification` VALUES (17, 9, 'n', '六道轮点赞了您关于问题\'27岁，今年研究生上岸，有什么忠告可以给我的？\'的回答。', '2020-06-19 11:52:03.905');
INSERT INTO `notification` VALUES (18, 7, 'n', '七巧板点赞了您关于问题\'如何看待韩国爆发抗议活动，抗议种族歧视？\'的回答。', '2020-06-19 11:55:33.026');
INSERT INTO `notification` VALUES (19, 9, 'n', '七巧板点赞了您关于问题\'27岁，今年研究生上岸，有什么忠告可以给我的？\'的回答。', '2020-06-19 11:56:26.390');
INSERT INTO `notification` VALUES (22, 9, 'n', '八方雨点赞了您关于问题\'都说李健有文化，但到底多有文化呢？\'的回答。', '2020-06-19 13:27:09.675');
INSERT INTO `notification` VALUES (23, 9, 'n', '八方雨点赞了您关于问题\'与日本文化输出相比，中国文化输出差在哪里？\'的回答。', '2020-06-19 13:27:15.075');
INSERT INTO `notification` VALUES (24, 5, 'y', '九天外点赞了您关于问题\'你在学校期间因何事一举成名全校皆知？\'的回答。', '2020-06-19 15:06:05.512');
INSERT INTO `notification` VALUES (25, 7, 'n', '九天外点赞了您关于问题\'你在学校期间因何事一举成名全校皆知？\'的回答。', '2020-06-19 13:29:36.857');
INSERT INTO `notification` VALUES (26, 6, 'n', '九天外点赞了您关于问题\'你在学校期间因何事一举成名全校皆知？\'的回答。', '2020-06-19 13:29:38.959');
INSERT INTO `notification` VALUES (27, 7, 'n', '九天外点赞了您关于问题\'如何评价你的研究生同学们？\'的回答。', '2020-06-19 13:29:45.563');
INSERT INTO `notification` VALUES (28, 7, 'n', '一船风点赞了您关于问题\'你在学校期间因何事一举成名全校皆知？\'的回答。', '2020-06-19 15:03:14.693');
INSERT INTO `notification` VALUES (29, 0, 'n', ' \'333333@fake.com\' 的言论 [当了学生会主席，\n\n一年后解散了学生会…\n\nI was on fire back there man.] 涉嫌 [我就试试] ，请查阅处理。', '2020-06-19 15:52:14.351');
INSERT INTO `notification` VALUES (30, 7, 'n', '两盏茶点赞了您关于问题\'如何看待韩国爆发抗议活动，抗议种族歧视？\'的回答。', '2020-06-30 15:55:01.012');
INSERT INTO `notification` VALUES (31, 7, 'n', '两盏茶点赞了您关于问题\'如何看待韩国爆发抗议活动，抗议种族歧视？\'的回答。', '2020-06-30 15:55:02.045');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` bigint(255) NOT NULL AUTO_INCREMENT COMMENT '问题id（递增自动生成）',
  `idu` bigint(255) NULL DEFAULT NULL COMMENT '用户id',
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '问题标题',
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类别',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '问题描述',
  `view_count` int(255) NULL DEFAULT NULL COMMENT '浏览量',
  `answer_count` int(255) NULL DEFAULT NULL COMMENT '回答数',
  `collect_count` int(255) NULL DEFAULT NULL COMMENT '收藏数',
  `gmt_create` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '创建时间（创建时自动生成）',
  `gmt_modify` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '更新时间（更新时自动生成）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_ques_idu`(`idu`) USING BTREE,
  CONSTRAINT `fk_ques_idu` FOREIGN KEY (`idu`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (1, 5, '1GB/s的网速是什么体验？', 'technology', '1GB/s的上网速度（或仅下载速度）在个人实际应用上是一种什么体验？', 2, 2, 0, '2020-06-19 11:33:06.003', '2020-06-19 11:33:06.003');
INSERT INTO `question` VALUES (2, 5, '为什么现在的手机都设计成不可换电池？', 'technology', '现在的手机大部份都设计成一体式，电池不可更换，这样真的好么？我还是比较喜欢可拆卸电池随时更换没电了就换块有电的开机就能用。', 5, 0, 0, '2020-06-30 10:43:38.505', '2020-06-30 10:43:38.505');
INSERT INTO `question` VALUES (3, 6, 'C 罗和梅西这两种运动员哪个更难找？', 'sports', '有人说想找个梅西这样最有天赋的运动员简直大海捞针，而C罗这种以靠自己努力成功的运动员在足球界一抓一大把。到底两类运动员那种更难找？', 4, 1, 0, '2020-06-13 16:26:45.851', '2020-06-13 16:26:45.851');
INSERT INTO `question` VALUES (4, 6, '科比如果优化自己的出手选择，他会比原来的自己更强吗？', 'sports', '科比如果优化自己的出手选择，他会比原来的自己更强吗？', 4, 2, 0, '2020-06-19 11:54:17.099', '2020-06-19 11:54:17.099');
INSERT INTO `question` VALUES (5, 7, '为什么只有人类在吃东西的时候需要另外加盐？', 'technology', '人类烹饪食物需要另外加盐，那么动物摄取所需盐份的主要途径是什么呢？', 4, 2, 0, '2020-06-19 11:32:27.335', '2020-06-19 11:32:27.335');
INSERT INTO `question` VALUES (6, 7, '看过这么多剧，最让你无法接受的大结局是什么?', 'entertain', '可以聊剧情向，也可以吐槽。', 2, 1, 0, '2020-06-19 15:04:51.704', '2020-06-19 15:04:51.704');
INSERT INTO `question` VALUES (7, 7, '2020 年，5G 技术和应用有了哪些新发展？', 'technology', '5G 商用牌照发放已经一年了，相比去年，你了解/参与的 5G 技术和应用有了哪些新的变化和发展？这一年你感受到了 5G 生活吗？对 5G 的应用有哪些期待？', 4, 1, 0, '2020-06-19 11:34:19.041', '2020-06-19 11:34:19.041');
INSERT INTO `question` VALUES (8, 7, '如何看待网易云音乐转制UWP更新？', 'technology', '如题', 1, 1, 0, '2020-06-19 13:24:13.443', '2020-06-19 13:24:13.443');
INSERT INTO `question` VALUES (9, 7, '如何看待上交大卢策吾团队最新开源的 AlphaPose？', 'technology', '目前已有的 OpenPose 和 AlphaPose 各自的优劣在哪？是否有更轻量的替代算法？以及很好奇抖音的关键点识别是怎么做的？', 1, 0, 0, '2020-06-12 11:58:41.717', '2020-06-12 11:58:41.717');
INSERT INTO `question` VALUES (10, 7, '能否对卷积神经网络工作原理做一个直观的解释？', 'technology', '我目前大四，在用CNN做手写识别毕业设计，已经接触机器学习4个月了。但CNN是目前最让我困惑的，其简直就像黑匣子，只有输入输出，然后看看准确率，完全不清楚其内部如何由初始状态一步步走向结果，还请能指点我几个问题，万分感谢！', 0, 0, 0, '2020-06-08 15:14:27.965', '2020-06-08 15:14:27.965');
INSERT INTO `question` VALUES (11, 7, '深度学习在电影特效制作上有哪些应用？', 'technology', 'CNN在图像上的应用很多，但是目前还没听说哪家电影特效公司使用了非常牛逼的深度学习方法来做特效的，感觉人工智能如果与电影结合，将是一块非常大的市场。', 0, 0, 0, '2020-06-08 15:14:30.082', '2020-06-08 15:14:30.082');
INSERT INTO `question` VALUES (12, 8, '如果你去摆摊，卖什么商品最合适？', 'finance', '探讨地摊经济学', 5, 2, 1, '2020-06-19 13:26:39.896', '2020-06-19 13:26:39.896');
INSERT INTO `question` VALUES (13, 5, '如何看待韩国爆发抗议活动，抗议种族歧视？', 'focus', '6日，在韩国首都首尔，数百人走上街头举行抗议活动，抗议美国警察暴力执法致黑人死亡和种族歧视。有抗议者手持标语“希望乔治弗洛伊德安息”、“黑人的命也是命”，还有人下跪表达抗议。连日来，美国警察暴力执法致非洲裔男子死亡引发的抗议示威活动在全球不断升级，已蔓延至加拿大、英国等多国。', 9, 2, 1, '2020-06-30 15:54:58.299', '2020-06-30 15:54:58.299');
INSERT INTO `question` VALUES (14, 5, '如何看待有媒体报道称用 MIUI 12 揭秘 APP 偷窥用户隐私：偷看手机照片文件 25000 次？', 'technology', '近日，一款新的手机操作系统上线，该操作系统增加了APP隐私记录功能，这项功能可以记录手机上安装的APP访问个人信息的过程，而这些被公开的数据让人触目惊心。', 0, 0, 0, '2020-06-09 20:48:17.769', '2020-06-09 20:48:17.769');
INSERT INTO `question` VALUES (15, 5, '如何看待中北大学大二学生补考作弊被抓后坠亡一事？暴露了哪些问题？', 'campus', '什么原因导致了悲剧发生？', 6, 0, 2, '2020-06-30 15:54:51.332', '2020-06-30 15:54:51.332');
INSERT INTO `question` VALUES (16, 5, '你在学校期间因何事一举成名全校皆知？', 'campus', '可能大家都知道有这么回事但不知道是谁？', 80, 5, 2, '2020-06-30 15:53:51.825', '2020-06-30 15:53:51.825');
INSERT INTO `question` VALUES (17, 9, '请问如何看待中国矿业大学关于暑期安排的调查问卷？', 'campus', '6月8日，中国矿业大学对学生发布关于暑期安排的问卷中，提到暑期放短假（不准离校），秋季学期提前开学，以此避开客流高峰期。\n在我国目前疫情状况，学校的安排是否过度紧张。\nps.从4月份开学至今，学校还未允许学生自由出入校门。', 6, 0, 2, '2020-06-19 11:45:43.786', '2020-06-19 11:45:43.786');
INSERT INTO `question` VALUES (18, 9, '27岁，今年研究生上岸，有什么忠告可以给我的？', 'campus', '研究生阶段的思想', 12, 1, 4, '2020-06-19 12:09:51.681', '2020-06-19 12:09:51.681');
INSERT INTO `question` VALUES (19, 9, '如何评价你的研究生同学们？', 'campus', '个个都是人才，说话又好听，超喜欢在学校里面？', 30, 1, 2, '2020-06-19 13:29:43.663', '2020-06-19 13:29:43.663');
INSERT INTO `question` VALUES (20, 9, '从来没有实习经历的大学生如何找实习？', 'campus', '本人是西南某TOP3高校的大三学生，专业是工商管理，马上大四就要找工作了，但我从来没有过实习经历，现在很纠结要不要找个实习，不知道实习对于找工作有帮助吗？如果要找实习又该怎么找，因为西南地区的实习机会非常小，我也不知道该通过什么渠道找实习，请问我该怎么办？', 0, 0, 0, '2020-06-09 20:52:30.795', '2020-06-09 20:52:30.795');
INSERT INTO `question` VALUES (21, 9, '如何看待中南大学等「多所高校退住宿费」这件事情？作为大学来说，该不该退费？', 'campus', '最近不少大学都出了公告，退宿舍费？你们觉得作为大学来说，该不该退费？', 0, 0, 0, '2020-06-09 20:52:58.324', '2020-06-09 20:52:58.324');
INSERT INTO `question` VALUES (22, 9, '李子柒在 YouTube 上火爆是一种文化输出吗？', 'culture', '李子柒靠油管订阅每年都能赚几百万美元，而且视频内容和我们看的一样，没有英文字幕！为何她在外国也那么受欢迎？老外也羡慕李子柒的世外桃源吗？是文化输出吗？PS：取妻当如李子柒？她的成功可以复制么？', 0, 0, 0, '2020-06-09 20:53:53.479', '2020-06-09 20:53:53.479');
INSERT INTO `question` VALUES (23, 9, '如何评价“李子柒在全球的文化输出强于孔子学院”这一言论？', 'culture', '她的视频主题明确，内容丰富，制作精良，给观众提供了以宁静为基调，以人物美、风景美、食物美、事物美、文化美为中心的视频。但是这种言论是否失偏颇？', 0, 0, 0, '2020-06-09 20:55:35.014', '2020-06-09 20:55:35.014');
INSERT INTO `question` VALUES (24, 9, '抖音真的算文化输出吗，它输出了什么？', 'culture', '那请问抖音的内核真的是中国文化吗？\n是不是X国如果搞一个抖乐（指同类软件）也算中国文化？\n如果是文化＝产品，那么我一个朋友去美国旅游，看到的都是中国制造的东西，为什么还有人诟病中国文化输出不行呢？', 2, 0, 0, '2020-06-19 15:06:43.915', '2020-06-19 15:06:43.915');
INSERT INTO `question` VALUES (25, 9, '与日本文化输出相比，中国文化输出差在哪里？', 'culture', '我是一名交换生，在国外交换的几个月里，我感觉老外对中国文化了解甚少，普及度不高而且在有些方面还存在着误区。这与他们对日本文化的了解形成了鲜明的对比。我想这可能与文化输出有关。\n请问，和日本文化输出相比，我国文化输出差在哪里？如何做到强有力的文化输出？', 4, 1, 0, '2020-06-19 13:27:13.037', '2020-06-19 13:27:13.037');
INSERT INTO `question` VALUES (27, 9, '都说李健有文化，但到底多有文化呢？', 'culture', '我非常喜欢《贝加尔湖畔》，但对于李健并没有多了解，直到无意间看到了今年的《中国好声音》。弹幕都说他有文化，通过他的言谈举止，我也能感受得到。但我想知道，他有文化，但有文化到了一个什么样的程度，请举例说明。', 6, 2, 1, '2020-06-19 13:27:06.512', '2020-06-19 13:27:06.512');
INSERT INTO `question` VALUES (29, 9, '为什么俄语流行文化现在很少进入到中国？', 'culture', '突然对俄罗斯等以俄语为母语的国家产生了兴趣，上网查询的时候缺发现与欧美国家的资讯相比，以俄语为母语的国家的资讯真是少的可怜', 0, 0, 0, '2020-06-09 21:01:25.679', '2020-06-09 21:01:25.679');
INSERT INTO `question` VALUES (35, 11, '为什么有的人年纪轻轻却思想深度远高于常人？', 'depth', '尼采说过“当你凝视深渊的时候，深渊也在凝视你”。那些很多思想极其有深度的人，思想带给他们的，往往是一面阳光一面悲伤。但不管是哪一面，我们往往没看到，他们更早之前在深渊边缘摸爬滚打的样子。白天的风轻云淡，或许深夜就会掩涕长叹。没有什么是不需要代价的，一切人格都来自于过往的经历，更何况是有深度的思想，这种无形却重于泰山的东西，怕是要看过千山万水世间百态罢。\n你身边有什么灵魂年轻人吗？', 2, 0, 0, '2020-06-19 11:52:45.603', '2020-06-19 11:52:45.603');
INSERT INTO `question` VALUES (36, 11, '“富不过三代”与“马太效应”，哪个更正确？', 'depth', '有句俗语“富不过三代”，也有一句话“富者越富，穷者越穷”，究竟哪句话更正确，请帮忙分析！', 3, 1, 0, '2020-06-19 12:18:30.278', '2020-06-19 12:18:30.278');
INSERT INTO `question` VALUES (37, 11, '资本家已经拥有大量资产了，为什么还要剥削无产阶级？', 'depth', '应该看问题的另外一面：资本家已经拥有大量资产了，为什么不采取措施回馈他的客户，无产阶级，普罗大众？', 6, 2, 0, '2020-06-19 12:18:12.385', '2020-06-19 12:18:12.385');
INSERT INTO `question` VALUES (38, 11, '资本家已经拥有大量资产了，为什么还要剥削无产阶级？', 'finance', '应该看问题的另外一面：资本家已经拥有大量资产了，为什么不采取措施回馈他的客户，无产阶级，普罗大众？', 4, 1, 0, '2020-06-19 13:25:41.285', '2020-06-19 13:25:41.285');
INSERT INTO `question` VALUES (39, 11, '美国的暴乱有可能演变为社会主义革命吗？', 'depth', '答案挺多了，我来补充一下：当前美国的暴乱什么条件下有可能演变为社会主义革命？建议把问题改为：美国的这次暴乱有可能演变为革命吗？', 1, 0, 0, '2020-06-19 11:52:34.720', '2020-06-19 11:52:34.720');
INSERT INTO `question` VALUES (40, 11, '为什么人会出现“不患寡而患不均”的思想？', 'depth', '在文明的发展过程中，“嫉妒”这种心理很明显是与“更好更快更强”背道而驰的，然而它又是如何能在人类社会中延续到现在，成为七宗罪之一呢？站在文明的高度上，傲慢、暴怒是双刃剑，要么强大即正义，要么夜郎自大咎由自取，懒惰最多只能使文明发展缓慢，有时候还是很多发明创造的原动力，贪婪、暴食和色欲则是人的进化本能。只有嫉妒，看不得别人比你优秀，会在无外界威胁的情况下，从内部把一个文明由顶端拉入深渊，不觉得这很奇怪吗？', 1, 0, 0, '2020-06-19 12:18:42.413', '2020-06-19 12:18:42.413');
INSERT INTO `question` VALUES (41, 11, '上帝悖论是否有解？', 'depth', '上帝悖论：万能的上帝能否造出一块他举不起来的石头呢？\n我不是很懂这为什么是个悖论，分析内容，如果上帝可以造出来，但是他举不动，那么他便不是万能的；如果不能造出，那么他也不是万能的；所以上帝不是万能的。', 0, 0, 0, '2020-06-09 21:19:02.984', '2020-06-09 21:19:02.984');
INSERT INTO `question` VALUES (42, 11, '既然所有的生命都要死亡，那么生命的意义是什么？', 'depth', '“意义”这个词语需要解释', 0, 0, 0, '2020-06-09 21:19:27.566', '2020-06-09 21:19:27.566');
INSERT INTO `question` VALUES (43, 11, '中国父母在教育上普遍存在哪些问题？', 'education', '为什么中国父母家暴不断？', 2, 1, 0, '2020-06-19 13:28:33.318', '2020-06-19 13:28:33.318');
INSERT INTO `question` VALUES (44, 11, '为什么我们反感长辈的「教育」？', 'education', '如题', 0, 0, 0, '2020-06-09 21:21:05.450', '2020-06-09 21:21:05.450');
INSERT INTO `question` VALUES (45, 11, '这次疫情引发了教育行业的哪些思考？', 'education', '比如线上教育，平板班', 1, 1, 0, '2020-06-19 13:29:24.089', '2020-06-19 13:29:24.089');
INSERT INTO `question` VALUES (46, 5, '《西游记》中狮驼岭为何没被拍成大片？', 'culture', '《西游记》中的狮驼岭这个故事是很多好的电影题材，场面雄伟，情节连贯，扣人心弦，妖怪众多，寓意深奥。', 0, 0, 0, '2020-06-09 21:50:13.625', '2020-06-09 21:50:13.625');

-- ----------------------------
-- Table structure for upvote
-- ----------------------------
DROP TABLE IF EXISTS `upvote`;
CREATE TABLE `upvote`  (
  `id` bigint(255) NOT NULL AUTO_INCREMENT COMMENT '点赞id（递增自动生成）',
  `idu` bigint(255) NULL DEFAULT NULL COMMENT '用户id',
  `ida` bigint(255) NULL DEFAULT NULL COMMENT '回答id',
  `gmt_create` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '创建时间（创建时自动生成）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_upv_ida`(`ida`) USING BTREE,
  INDEX `fk_upv_idu`(`idu`) USING BTREE,
  CONSTRAINT `fk_upv_ida` FOREIGN KEY (`ida`) REFERENCES `answer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_upv_idu` FOREIGN KEY (`idu`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of upvote
-- ----------------------------
INSERT INTO `upvote` VALUES (1, 5, 2, '2020-06-13 16:28:30.901');
INSERT INTO `upvote` VALUES (3, 6, 1, '2020-06-13 16:41:31.152');
INSERT INTO `upvote` VALUES (4, 6, 3, '2020-06-13 16:41:33.604');
INSERT INTO `upvote` VALUES (5, 6, 2, '2020-06-13 16:41:36.118');
INSERT INTO `upvote` VALUES (7, 9, 1, '2020-06-19 11:45:29.700');
INSERT INTO `upvote` VALUES (8, 9, 3, '2020-06-19 11:45:33.782');
INSERT INTO `upvote` VALUES (9, 9, 2, '2020-06-19 11:45:35.546');
INSERT INTO `upvote` VALUES (12, 11, 4, '2020-06-19 11:55:33.018');
INSERT INTO `upvote` VALUES (13, 11, 18, '2020-06-19 11:56:26.382');
INSERT INTO `upvote` VALUES (16, 12, 16, '2020-06-19 13:27:09.666');
INSERT INTO `upvote` VALUES (17, 12, 17, '2020-06-19 13:27:15.066');
INSERT INTO `upvote` VALUES (18, 13, 1, '2020-06-19 13:29:35.730');
INSERT INTO `upvote` VALUES (19, 13, 3, '2020-06-19 13:29:36.852');
INSERT INTO `upvote` VALUES (20, 13, 2, '2020-06-19 13:29:38.953');
INSERT INTO `upvote` VALUES (22, 5, 3, '2020-06-19 15:03:14.682');
INSERT INTO `upvote` VALUES (23, 6, 4, '2020-06-30 15:55:01.002');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(255) NOT NULL AUTO_INCREMENT COMMENT '用户id（递增自动生成）',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名，邮箱',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '昵称',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像路径',
  `banned` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否被封禁',
  `gmt_create` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '创建时间（创建时自动生成）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (0, 'admin', '管理员', 'admin', '1.png', '正常', '2020-06-19 16:24:13.899');
INSERT INTO `user` VALUES (5, '111111@fake.com', '一船风', '96e79218965eb72c92a549dd5a330112', '3.png', '正常', '2020-06-13 12:07:27.757');
INSERT INTO `user` VALUES (6, '222222@fake.com', '两盏茶', 'e3ceb5881a0a1fdaad01296d7554868d', '8.png', '正常', '2020-06-13 18:09:51.996');
INSERT INTO `user` VALUES (7, '333333@fake.com', '三更雨', '1a100d2c0dab19c4430e7d73762b3423', '8.png', '已封禁', '2020-06-19 15:03:58.966');
INSERT INTO `user` VALUES (8, '444444@fake.com', '四野暮', '73882ab1fa529d7273da0db6b49cc4f3', '7.png', '正常', '2020-06-14 18:09:58.655');
INSERT INTO `user` VALUES (9, '555555@fake.com', '五色云', '5b1b68a9abf4d2cd155c81a9225fd158', '13.png', '正常', '2020-06-15 11:29:01.954');
INSERT INTO `user` VALUES (11, '777777@fake.com', '七巧板', 'f63f4fbc9f8c85d409f2f59f2b9e12d5', '4.png', '正常', '2020-06-15 18:10:11.520');
INSERT INTO `user` VALUES (12, '888888@fake.com', '八方雨', '21218cca77804d2ba1922c33e0151105', '1.png', '正常', '2020-06-15 18:10:12.807');
INSERT INTO `user` VALUES (13, '999999@fake.com', '九天外', '52c69e3a57331081823331c4e69d3f2e', '12.png', '正常', '2020-06-15 18:10:14.001');
INSERT INTO `user` VALUES (16, '000000@fake.com', '零零七', '670b14728ad9902aecba32e22fa4f6bd', '2.png', '正常', '2020-06-18 18:10:17.712');
INSERT INTO `user` VALUES (20, 'newone@fake.com', '主键自增测试', '111111', '1.png', '正常', '2020-06-30 11:19:06.396');
INSERT INTO `user` VALUES (21, '2513105294@qq.com', '想飞的猫', '96e79218965eb72c92a549dd5a330112', '12.png', '正常', '2020-06-30 15:46:33.965');

-- ----------------------------
-- Triggers structure for table notification
-- ----------------------------
DROP TRIGGER IF EXISTS `generate_idn`;
delimiter ;;
CREATE TRIGGER `generate_idn` BEFORE INSERT ON `notification` FOR EACH ROW BEGIN
IF new.id is NULL THEN
	SET new.id = UUID();
END IF;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
