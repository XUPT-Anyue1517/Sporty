/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : sporty

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 30/05/2022 10:51:41
*/
use sporty;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`  (
      `id` bigint(30) NOT NULL COMMENT '主键',
      `logo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车标',
      `chinese_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '中文名',
      `english_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '英文名',
      `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '品牌国别',
      `intro` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '品牌介绍',
      `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
      `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
      PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brand
INSERT INTO `brand` VALUES (1397849417888346113, 'http://localhost:8080/cars/hongqi.png', '红旗', 'Hong Qi', '中国', '红旗品牌是中国自主的高端品牌，成立于1958年5月12日，由一汽集团直接运营。红旗牌轿车自诞生以来就成为国家领导人和国家重大活动的国事用车。在六、七十年代，红旗轿车成为中国汽车工业的一面旗帜。改革开放之后，红旗在继续承担“国车”重任的同时，开始不断向市场化、商业化的方向冲击。\r\n', '2022-06-02 09:33:17', '2022-06-02 09:33:20');
INSERT INTO `brand` VALUES (1397849739297861633, 'http://localhost:8080/cars/geely.png', '吉利', 'GEELY', '中国', '吉利汽车集团以“自主突破创新，融合全球智慧，掌握核心技术”为研发理念，实施“产品平台化”、“安全第一”、“能源多元化”、“智能化技术”战略。\r\n', '2022-06-02 09:33:22', '2022-06-02 09:33:25');
INSERT INTO `brand` VALUES (1397849739323027458, 'http://localhost:8080/cars/byd.png', '比亚迪', 'BYD', '中国', '比亚迪是自主品牌中最成功的汽车品牌之一，代表车型包括F0、F3、F3-R两厢、F6、S6、M6等，及王朝系列秦、汉、唐、宋、元，如果算上已停售的车型系列，比亚迪总共发布过39款车型， 产品线非常丰富。\r\n', '2022-06-02 09:33:28', '2022-06-02 09:33:30');
INSERT INTO `brand` VALUES (1397849936421761025, 'http://localhost:8080/cars/greatwall.png', '长城', 'Great Wall', '中国', '长城汽车主要的系列车型有风骏系列、长城炮、H1、H2、H4、H6、H8、H9、F7、M6等系列，风骏系列作为长城汽车股份有限公司推出的经典力作，连续14年全国销量第一，市场保有量70万，出口并热销100个国家和地区，连续10年中国汽车出口额第一。风骏皮卡外形与国际接轨，威猛大气，做工精细，线条饱满，特立独行，是引领皮卡发展的时尚先锋；舒适丰富的配置，更是全面提升了驾乘者的感受，是皮卡行业的绝对标杆。\r\n', '2022-06-02 09:33:44', '2022-06-02 09:33:47');
INSERT INTO `brand` VALUES (1397849936438538241, 'http://localhost:8080/cars/trumpchi.png', '广汽传祺', 'Trumpchi', '中国', '广汽传祺是广汽集团为提升核心竞争力，实现可持续发展而打造的国产品牌。广汽传祺在技术、配置、品质各个方面都具备了与合资品牌及同级别进口品牌相抗衡的实力，作为自主品牌的先锋，继续冲击中高端市场。广汽传祺已在科威特、阿联酋、智利、柬埔寨、尼日利亚等14个国家布局了销售和服务渠道营销网络。坚持以\"为亲人造好车 让世界充满爱\"的品牌理念，整合广汽集团资源与经验，坚持自主创新，致力于开发适合国人驾驶习惯与道路特点的车型。 2019年12月，广汽传祺入选2019中国品牌强国盛典榜样100品牌。\r\n', '2022-06-02 09:33:50', '2022-06-02 09:33:53');
INSERT INTO `brand` VALUES (1397850141015715841, 'http://localhost:8080/cars/haval.png', '哈弗', 'HAVAL', '中国', '哈弗是长城汽车旗下子品牌，成立于2013年3月29日，以SUV车型为主的哈弗品牌与长城品牌并行运营，使用独立的标识，独立的产品研发、生产、服务等体系，主营SUV生产及销售业务 。旗下包含H系、M系、F系三个系列。在长城品牌SUV的销量，哈弗占大部分比例。截止2019年9月，旗下主打车型哈弗H6取得累计九十多个月SUV销量第一成绩。哈弗作为长城赛弗的继任者，在长城SUV产品当中起到了衔接作用。\r\n', '2022-06-02 09:33:55', '2022-06-02 09:33:57');
INSERT INTO `brand` VALUES (1397850141040881665, 'http://localhost:8080/cars/chery.png', '奇瑞', 'Chery Automobile', '中国', '奇瑞汽车股份有限公司，是一家从事汽车生产的国有控股企业，1997年1月8日注册成立，总部位于安徽省芜湖市。公司产品覆盖乘用车、商用车、微型车等领域，奇瑞汽车9年蝉联中国自主品牌销量冠军，成为中国自主品牌中的代表。\r\n', '2022-06-02 09:33:59', '2022-06-02 09:34:02');
INSERT INTO `brand` VALUES (1397850392120307713, 'http://localhost:8080/cars/roewe.png', '荣威', 'Roewe', '中国', '荣威(ROEWE)是上海汽车工业(集团)总公司旗下的一款汽车品牌，于2006年10月推出。该品牌下的汽车技术来源于上海汽车之前收购的罗孚，但上海汽车并未收购\"罗孚\"品牌。2006年10月12日，上海汽车(集团)股份有限公司(以下简称\"上海汽车股份\")正式对外宣布，其自主品牌定名为\"荣威(ROEWE)\"，取意\"创新殊荣、威仪四海\"。荣威的品牌在4年时间里面发展迅速，其产品已经覆盖中级车与中高级车市场，\"科技化\"已经成为荣威汽车的品牌标签。荣威品牌口号为\"品位，科技，实现\"。\r\n', '2022-06-02 09:34:05', '2022-06-02 09:34:08');
INSERT INTO `brand` VALUES (1397850392137084929, 'http://localhost:8080/cars/ford.png', '福特', 'Ford', '美国', ' 福特（Ford）是世界著名的汽车品牌，为美国福特汽车公司（Ford Motor Company）旗下的众多品牌之一，公司及品牌名“福特”来源于创始人亨利·福特（Henry Ford）的姓氏。福特汽车公司是世界上最大的汽车生产商之一，成立于1903年，旗下拥有福特（Ford）和林肯（Lincoln）汽车品牌，总部位于密歇根州 迪尔伯恩市（Dearborn）。\r\n', '2022-06-02 09:34:10', '2022-06-02 09:34:13');
INSERT INTO `brand` VALUES (1397850630734262274, 'http://localhost:8080/cars/toyota.png', '丰田', 'TOYOTA', '日本', '丰田汽车作为全世界排行第一位的汽车生产厂商，其旗下生产的经典车型不计其数，比如家喻户晓的有雅力士、卡罗拉、凯美瑞、普拉多、皇冠等等车型。其中亚洲龙是丰田汽车公司于上世纪90年代在美国市场推出的旗舰车型,是丰田旗下最大的轿车车型 ，2018年丰田汽车公司在底特律车展发布全新一代丰田亚洲龙,第五代丰田亚洲龙是基于丰田最新TNGA平台打造 ,提供混动版和燃油版两种车型 。\r\n', '2022-06-02 09:34:16', '2022-06-02 09:34:19');
INSERT INTO `brand` VALUES (1397850630755233794, 'http://localhost:8080/cars/volkswagen.png', '大众', 'Volkswagen', '德国', '大众汽车（德语：Volkswagen，缩写VW），是一家总部位于德国沃尔夫斯堡的汽车制造公司，为大众集团的核心企业及原始品牌，也是该集团最畅销品牌及全球第一大汽车制造商。在德语中，Volks为人民之意，Wagen为汽车之意，因此，其全名之意即是“人民的汽车”。中国大陆意译为大众汽车、台湾音译为福斯汽車、香港音译为福士汽車、新加坡音译全名为福士伟根。\r\n', '2022-06-02 09:34:22', '2022-06-02 09:34:24');
INSERT INTO `brand` VALUES (1397850851274960898, 'http://localhost:8080/cars/honda.png', '本田', 'Honda', '日本', '本田公司是世界上最大的摩托车生产厂家，汽车产量和规模也名列世界十大汽车厂家之列。本田于1948年以生产自行车助力发动机起步的Honda，一直以“梦想”作为原动力，以“商品”的形式不断为个人和社会提供更广泛的移动文化。“尊重个性”、重视每一个人个性的观念，使Honda形成了推崇员工创造性、自由豁达的企业文化。现在，Honda已经发展成为从小型通用发动机、踏板摩托车乃至跑车等各个领域都拥有独创技术，并不断研发、生产新产品的企业。\r\n', '2022-06-02 09:34:27', '2022-06-02 09:34:28');
INSERT INTO `brand` VALUES (1397850851283349505, 'http://localhost:8080/cars/peugeot.png', '标致', 'Peugeot', '法国', '标致是法国、意大利及美国合资的Stellantis集团（Stellantis N.V.）旗下子品牌，又称宝獅或普狮，是一间历史久远且对汽车工业的发展有重大贡献的汽车厂。旗下的汽车、机车、自行车品牌，总部位于法国索绍。标致汽车主要生产中小型家用房车，但也有生产一些像运动或竞技用跑车、军用越野车或大型豪华轿车之类。其标志为雄性狮子。\r\n', '2022-06-02 09:34:30', '2022-06-02 09:34:34');
INSERT INTO `brand` VALUES (1397851099523231745, 'http://localhost:8080/cars/bavarian.png', '宝马', 'Bavarian Motor Work', '德国', '宝马也被译为（巴依尔），是指宝马汽车公司(Bayerische Motoren Werke AG，简称BMW)生产的汽车，正式全称为巴伐利亚机械制造厂股份公司，（德文：Bayerische Motoren Werhe AG），是驰名世界的汽车企业，也被认为是高档汽车生产业的先导。宝马公司创建于1916年，前身公司的名字叫BFW，公司创始人为吉斯坦—奥托（Gustan Otto）。1917年7月，BFW公司开始重组，正式更名为BMW，总部设在德国幕尼黑。它由最初的一家飞机引擎生产厂发展成为今天以高级轿车为主导，并生产享誉全球的飞机引擎、越野车和摩托车的企业集团，名列世界汽车公司前列。\r\n', '2022-06-02 09:34:36', '2022-06-02 09:34:38');
INSERT INTO `brand` VALUES (1397851099527426050, 'http://localhost:8080/cars/fiat.png', '菲亚特', 'FIAT', '意大利', '菲亚特由陆军退役军官乔瓦尼·阿涅利（Giovanni Agnelli）与合伙人买下一家小车辆段Ceirano&C和其原型车于1899年创立，公司名称“FIAT”是“Fabbrica Italiana Automobili Torino”首字母的缩写，意为意大利都灵汽车工厂。菲亚特作为超过百年历史的经典品牌一直被视为完美汽车的缔造者，旗下的著名品牌包括：菲亚特、克莱斯克、Jeep、道奇、玛莎拉蒂、阿尔法罗密欧、蓝旗亚、道奇RAM、SRT、ABARTH、纽荷兰、FIAT PROFESSIONAL等。\r\n', '2022-06-02 09:34:41', '2022-06-02 09:34:43');
INSERT INTO `brand` VALUES (1397851370483658754, 'http://localhost:8080/cars/audi.png', '奥迪', 'Audi', '德国', '奥迪（德语：Audi AG，英语：Audi）是一家德国跨国汽车制造商，主要从事高性能汽车制造业。总部位于德国巴伐利亚州的英戈尔施塔特，是大众集团旗下的品牌。奥迪与德国品牌宝马和梅赛德斯奔驰一起，是世界上最畅销的豪华汽车品牌之一。\r\n', '2022-06-02 09:34:47', '2022-06-02 09:34:49');
INSERT INTO `brand` VALUES (1397851370483658755, 'http://localhost:8080/cars/aston.png', '阿斯顿·马丁', 'Aston Martin', '英国', '阿斯顿·马丁·拉宫达有限公司（英语：Aston Martin Lagonda Limited），简称阿斯顿·马丁，是一家英国的豪华跑车及大型旅行车制造商。该公司在1913年以班福德和马丁有限公司（英语：Bamford & Martin Ltd.）由Lionel Martin与Robert Bamford创立。原是英国豪华轿车、跑车生产厂，以生产敞篷旅行车、赛车和限量生产的跑车而闻名世界。虽然带有保守和固执的绅士风格，但阿斯顿马丁的每一种款式却总是久负盛名，毫无过时之感 。其品牌一直是造型别致、精工细作、性能卓越的运动跑车的代名词，它在汽车市场上和车主的心中始终占有特殊的位置。\r\n', '2022-06-02 09:34:52', '2022-06-02 09:34:54');
INSERT INTO `brand` VALUES (1397851370483658756, 'http://localhost:8080/cars/alfa.png', '阿尔法·罗密欧', 'Alfa Romeo', '意大利', '阿尔法·罗密欧(Alfa Romeo)是意大利著名的轿车和跑车制造商，创建于1910年，总部设在米兰。公司原名ALFA(Anonima Lombarda Fabbrica Automobili，伦巴第汽车制造厂)，阿尔法·罗密欧以其强烈的运动气息以及独特外型，在车坛上一直有着其与众不同的定位。开始时，以专门生产运动车和赛车而闻名，这些车由意大利著名设计师设计，有浓烈的意大利风采、优雅的造型和超群的性能，在世界车坛上一直享有很高的声誉。\r\n', '2022-06-02 09:34:59', '2022-06-02 09:35:02');
INSERT INTO `brand` VALUES (1397851668283437058, 'http://localhost:8080/cars/benz.png', '奔驰', 'Mercedes-Benz', '德国', '梅赛德斯-奔驰（Mercedes-Benz），德国豪华汽车品牌，汽车的发明者，被认为是世界上最成功的高档汽车品牌之一，其完美的技术水平、过硬的质量标准、推陈出新的创新能力，以及一系列经典轿跑车款式令人称道。奔驰三叉星已成为世界上最著名的汽车及品牌标志之一。\r\n', '2022-06-02 09:35:04', '2022-06-02 09:35:06');
INSERT INTO `brand` VALUES (1397852391180120065, 'http://localhost:8080/cars/buick.png', '别克', 'BUICK', '美国', '别克BUICK品牌始于1900年。在美国密歇根州底特律市，苏格兰人David Dunbar Buick和他的总工程师Walter L.Marr.离开了他们朝夕相处的船机及农机修理行，开始着手制造第一辆试验汽车(当时马车是主要交通工具)。1903年，他们成立了别克BUICK汽车公司。1908年它的产量达到8820辆，居美国第一位，并以别克公司为中心成立了通用汽车公司。别克部是通用汽车公司的第二大部门。它是第一个真正成功的汽车品牌，带动了整个汽车工业水平的进步，并成为其他汽车公司追随的榜样，别克车具有大马力、个性化、实用性和成熟的特点。2008年别克正式开启了“全球平台，欧美科技”全球产品战略，并宣布“心静思远智行千里”的全新品牌主张。\r\n', '2022-06-02 09:35:09', '2022-06-02 09:35:10');
INSERT INTO `brand` VALUES (1397852391196897281, 'http://localhost:8080/cars/porsche.png', '保时捷', 'Porsche', '德国', '保时捷又称波尔舍，前者是香港人粤语的译音，后者是普通话的译音。可能是“保时捷”从字面上看更加贴切，因此，现在的Porsche公司的中文名称一般都称为保时捷公司。保时捷(Porsche)是世界著名的高端汽车企业，以开发、生产和营销豪华跑车和运动型越野车为主，其总部位于德国斯图加特市，由费迪南德·保时捷(Ferdinand Porsche)创办。保时捷一直努力将种种可能性与看似不太可能的东西相组合，而今对于跑车而言，“保时捷”无异于一个全球意义上的代名词。为了践履“造型完美时，性能就会伴随而至”的“纯种跑车”造车工艺精神，费迪南德·保时捷于五十五岁时离开了福斯，自立门户，却因此而造就了跑车的不朽巨人——保时捷\r\n', '2022-06-02 09:35:11', '2022-06-02 09:35:12');
INSERT INTO `brand` VALUES (1397853183307984898, 'http://localhost:8080/cars/bestume.png', '奔腾', 'BESTUNE', '中国', '奔腾品牌创立于2006年5月18日。创始车型奔腾B70作为国内第一款高起点、高品质、高性能的自主品牌中高级轿车，将中国自主乘用车事业拓展到一个新的高度，并由此开启了一汽奔腾自主发展的崭新篇章。2018年10月17日，一汽奔腾发布“新奔腾”品牌发展战略，并正式启用全新设计的奔腾新LOGO“世界之窗”。新奔腾品牌发展战略宣告了奔腾品牌的重生，开启了奔腾新进取时代！\r\n', '2022-06-02 09:35:13', '2022-06-02 09:35:14');
INSERT INTO `brand` VALUES (1397853423486414850, 'http://localhost:8080/cars/bentley.png', '宾利', 'Bentley', '英国', '宾利是世界优质汽车的制造商之一。一直被大家尊称“W.O.”的华特·欧文·宾利先生曾是英国北方铁路公司 (Great Northern Railways) 的一名学徒。随后在第一次世界大战期间，负责设计骆驼式飞机和狙击战斗机的发动机。对速度和性能的热爱，加之能通过赢得比赛实现汽车销售，让W.O.于1919年创建了宾利汽车公司。他的目标十分明确，来自那个简单到让人难以置信的理念：“要造一辆快的车，好的车，同级中最出类拔萃的车”。至今，宾利仍在不断提升其无与伦比的愉悦感和完全纯粹的舒适感。\r\n', '2022-06-02 09:35:16', '2022-06-02 09:35:17');
INSERT INTO `brand` VALUES (1397853709126905857, 'http://localhost:8080/cars/bugatti.png', '布加迪', 'Bugatti', '法国', '布加迪是世界著名的老牌运动车品牌，1909年意大利人埃多尔·布加迪（Ettore Bugatti）在法国创建布加迪公司，专门生产运动跑车和高级豪华轿车。布加迪创办人埃托里·布加迪出生于意大利，这个以他的姓氏为名的车厂坐落在Molsheim。布加迪是汽车大奖赛（F1的前身）的常胜军，它们是第一届摩纳哥大奖赛的冠军；布加迪也是利曼24小时耐久赛的常胜军，Jean-Pierre Wimille为其二度夺下冠军而Robert Benoist和Pierre Veyron（日后的Veyron车款就是为了纪念他）也各为布加迪拿下一冠。\r\n', '2022-06-02 09:35:19', '2022-06-02 09:35:19');
INSERT INTO `brand` VALUES (1397853890283089922, 'http://localhost:8080/cars/changan.png', '长安', 'Changan', '中国', '中国长安汽车集团股份有限公司（英語：China Changan Automobile Group Co., Ltd.），简称中国长安汽车集团、中国长安，是中国兵器装备集团、中国航空工业集团两大世界500强中国中央企业对旗下汽车产业进行战略重组、共同成立的一家特大型企业集团，是中国四大汽车集团之一，成立于2005年12月26日。中国长安现拥有长安汽车、江铃汽车、东安动力3家上市公司。2012年，中国长安以122万辆的自主品牌汽车销量，位列中国汽车企业第一、全球汽车企业第十四，连续七年蝉联中国第一自主品牌。其旗下核心上市公司重庆长安汽车股份有限公司，简称长安汽车、重庆长安，其历史可以追溯至1862年成立的上海洋炮局，经过多次改制后改为现名，1983年进入汽车领域，为中国汽车行业第一阵营、第一自主品牌、第一研发实力企业，现有资产1033亿元人民币，员工8万余人。长安汽车现生产微客、乘用车等产品。\r\n', '2022-06-02 09:35:21', '2022-06-02 09:35:22');
INSERT INTO `brand` VALUES (1397854133632413697, 'http://localhost:8080/cars/dodge.png', '道奇', 'Dodge', '美国', '1914年，道奇兄弟投资建成了美国第一条试车道，开创了汽车公司自己投资建立试车道的先河，为道奇汽车的质量提供了重要保证。同年，道奇兄弟设计出他们的第一辆车，将其戏称为\"Old Betsy\"，这就是现在道奇的雏形，真正完成了从两个轮子到四个轮子的飞跃。\r\n', '2022-06-02 09:35:25', '2022-06-02 09:35:27');
INSERT INTO `brand` VALUES (1397854652623007745, 'http://localhost:8080/cars/ferrari.png', '法拉利', 'Ferrari', '意大利', '法拉利（意大利语：Ferrari）是一家意大利跑车制造商，是世界第二大的跑车厂牌，仅次于保时捷，主要制造一级方程式赛车及高性能跑车。由恩佐·法拉利于意大利摩德纳附近的马拉内罗创立，当时是作为阿尔法·罗密欧的赛车部门分拆而来的阿维奥汽车（意大利语：Auto Avio Costruzioni），主要赞助赛车手及生产赛车，并早于1940年便已制作其首部赛车（阿维奥815，意大利语：Auto Avio Costruzioni 815）。但直至1947年第一辆正式镶嵌法拉利标志的汽车完成，这时它才被大众认定为独立的汽车制造商。法拉利的公路车款经常被视为速度、奢华、性感和财富的象征。\r\n', '2022-06-02 09:35:28', '2022-06-02 09:35:28');
INSERT INTO `brand` VALUES (1397854652635590658, 'http://localhost:8080/cars/qoros.png', '观致', 'QOROS', '中国', '观致汽车有限公司成立于2007年，当时中国汽车产业正处于“入世”后发展的高峰期，由内需扩大引起了汽车产销量的迅猛增长。观致汽车是一家创自中国、具备行业领先水准的中国汽车公司，汇集国际及中国汽车业高端团队，以卓越品质和精湛制造，为用户带来愉悦安全的驾乘体验。\r\n', '2022-06-02 09:35:31', '2022-06-02 09:35:32');
INSERT INTO `brand` VALUES (1397854865735593986, 'http://localhost:8080/cars/baojun.png', '宝骏', 'BAOJUN', '中国', '宝骏是上汽通用五菱2010年创建的自主汽车品牌，宝骏品牌源由“骏”的本义是良驹，宝骏即人们最心爱的良驹。宝骏汽车充分集成了上汽、通用、五菱三方优势资源，品牌定位为“可靠的伙伴”，以“乐观进取、稳健可靠、精明自信”为品牌精神，旨在为消费者提供“具有国际标准和高可靠性，拥有成本和使用成本低，使客户拥有价值最大化，以超越顾客期望”的汽车品牌。\r\n', '2022-06-02 09:35:33', '2022-06-02 09:35:34');
INSERT INTO `brand` VALUES (1397855742303186946, 'http://localhost:8080/cars/haima.png', '海马', 'FAW Haima Automobile', '中国', '海马汽车股份有限公司（简称海马汽车）创始于1988年，旗下拥有海马汽车有限公司、海马新能源汽车有限公司、一汽海马汽车有限公司等，已形成集研发、生产、销售、服务、物流、金融等为一体的 现代化汽车集团，致力于中国民族汽车工业的发展。2001年至今，已连续17年位列中国民营企业500强、中国制造企业500强。\r\n', '2022-06-02 09:35:35', '2022-06-02 09:35:36');
INSERT INTO `brand` VALUES (1397855906497605633, 'http://localhost:8080/cars/huatai.png', '华泰', 'HUATAI', '中国', '华泰汽车集团是以新能源汽车业务为核心，集整车和动力总成研发、设计、制造、销售以及汽车金融为一体，多元化发展的大型跨国集团。坚持“低碳产业链，全球精品车”的经营理念，华泰汽车以先进动力技术和先进制造技术为基础，已打造形成新能源汽车核心技术、AT自动变速器、清洁汽柴油发动机、乘用车（SUV、轿车、电动车）和商用车的低碳汽车产业链，致力于为全球用户提供节能、环保、动力强劲的精品汽车。\r\n', '2022-06-02 09:35:37', '2022-06-02 09:35:38');
INSERT INTO `brand` VALUES (1397856190573621250, 'http://localhost:8080/cars/higer.png', '海格', 'HIGER', '中国', '海格汽车主要产品海格新大海狮、欧式商务车、皮卡等三大类产品，海格汽车相对比较独立，其生产基地主要位于江苏省苏州工业园区。\r\n', '2022-06-02 09:35:39', '2022-06-02 09:35:41');
INSERT INTO `brand` VALUES (1397859056709316609, 'http://localhost:8080/cars/hummer.png', '悍马', 'HUMMER', '美国', '悍马是卡车和越野车的品牌，于1992年首次上市，民用悍马具有相同的结构和大多数机械组件，均采用汽车光泽漆完成，增加了乘用车的功能，例如空调，隔音，升级的内饰，立体声系统，木质装饰和便利套件。\r\n', '2022-06-02 09:35:43', '2022-06-02 09:35:44');
INSERT INTO `brand` VALUES (1397859277837217794, 'http://localhost:8080/cars/jaguar.png', '捷豹', 'Jaguar', '英国', '捷豹汽车有限公司（英语：Jaguar Cars Limited /ˈdʒæɡjuː.ər/ JAG-ew-ər）是英国的一家豪华汽车生产商，总部起初座落于英格兰考文垂的布朗兰，后迁至考文垂的惠特利。1922年成立之初制造摩托车的挂边车，名为Swallow Sidecar Company，简称SS汽车公司，后来改装汽车生产SS90与SS100车款，SS100有使用美洲豹Jaguar的副车名，但因纳粹党卫军的简称也是SS，所以1945年公司改名为Jaguar。\r\n\r\n早在1935年的捷豹SS100就以匹敌之前宾利的名车但价格不足一半，以“穷人的宾利”自居而在竞争上占了优位，而宾利Speed Six便是第一款被厂家自封为超跑的产品，所以第一代超跑杀手就是捷豹ss 100了。而在1992-1994年间生产的XJ 220更是当时世界最快的量产型汽车，也是一般人公认英国第一款超级跑车。\r\n\r\n二战后XK120等车在赛车场上的成功帮捷豹建立名声，1960年，捷豹收购戴姆勒汽车，并以此品牌作为XJ车系中最高阶的产品级距。1968年，英国政府发动整合英国汽车工业的计划，捷豹被并入英国汽车集团（即之后的英国礼兰汽车公司）。这个汽车工业整合计划并不成功，礼兰汽车旗下的许多品牌经过多次改组仍未能挽回颓势；但是相对的，拥有自主研发能力与丰富造车经验的捷豹，却仍能以稳定的步伐成长，生产轿车XJ与跑车E-Type后继车车种XJS十分成功。1984年捷豹脱离礼兰汽车独立，但随后在取代XJ系列的XJ40车系改款业务中，当时的董事长伊根爵士坦承评估错误，使得新车叫好不叫座，因品质问题造成经营困扰。于是在全球性的车厂整并风潮中，于1989年由美国福特汽车以40.7亿美元并购，总算解危。\r\n\r\n2008年3月26日福特汽车内部因经济情势不佳而改组旗下品牌，又以23亿美元把捷豹连同路虎售予印度塔塔汽车。\r\n', '2022-06-02 09:35:46', '2022-06-02 09:35:47');
INSERT INTO `brand` VALUES (1397859487502086146, 'http://localhost:8080/cars/jeep.png', '吉普', 'Jeep', '美国', '吉普（Jeep）是Stellantis集团旗下的一个汽车品牌、注册商标和全资子公司，和所有克莱斯勒旗下的汽车型号一样，于1998年成为戴姆勒奔驰公司和克莱斯勒公司合并后的戴姆勒克莱斯勒公司的一个下属品牌。由于Jeep汽车优越的越野性能，Jeep几乎已经成为了SUV越野汽车的代名词。于1941年在美国俄亥俄州托莱多诞生。原本称此种车为GP，意即多用途之意，后来由此变成“Jeep”，中文译为吉普或吉普车，由于“Jeep”在该类型汽车中知名度很高，因此吉普已与邦迪、施乐一样，成为了其所属商品类型的代名词。\r\n', '2022-06-02 09:35:48', '2022-06-02 09:35:49');
INSERT INTO `brand` VALUES (1397859757061615618, 'http://localhost:8080/cars/jinbei.png', '金杯', 'JINBEI', '中国', '金杯成立于1988年，前身是沈阳金杯客车制造有限公司，公司先后投入巨额资金进行了大规模的技术改造，初步建成了具有国内一流水平的现代化轻型客车生产基地。公司是融生产、经营、科研、开发、教育、房地产和贸易等为一体的大型企业集团，主要从事汽车整车、汽车零部件的设计、加工、制造和销售服务。\r\n', '2022-06-02 09:35:50', '2022-06-02 09:35:51');
INSERT INTO `brand` VALUES (1397860242086735874, 'http://localhost:8080/cars/jmc.png', '江铃', 'JMC', '中国', '江铃汽车股份有限公司(简称“江铃”，英文全称JianglingMotorsCo.,Ltd.，英文缩写JMC)，中国商用车行业最大的企业之一,连续四年位列中国上市公司百强。江铃于二十世纪八十年代中期在中国率先引进国际先进技术制造轻型卡车，成为中国主要的轻型卡车制造商。\r\n', '2022-06-02 09:35:53', '2022-06-02 09:35:54');
INSERT INTO `brand` VALUES (1397860963918065665, 'http://localhost:8080/cars/cadillac.png', '凯迪拉克', 'Cadillac', '美国', '凯迪拉克成立于1902年，位于密歇根州的底特律，是全球最受尊敬的豪华汽车制造商之一。凯迪拉克是美国通用汽车公司（General Motors）的子公司，在美国，中国，加拿大和其他34个国家/地区将汽车商业化。凯迪拉克拥有一个多世纪的历史，属于地球上最古老的汽车制造商之一。\r\n', '2022-06-02 09:35:54', '2022-06-02 09:35:55');
INSERT INTO `brand` VALUES (1397861135754506242, 'http://localhost:8080/cars/koenigsegg.png', '科尼塞克', 'Koenigsegg', '瑞典', 'Koenigsegg是一家来自瑞典的超级跑车制造商，1994年由Christian von Koenigsegg创立，致力于生产出世界级的跑车。Koenigsegg一词为“刀锋”的意思，作为略带瑞典皇家色彩的跑车，其标志同瑞典皇家空军相同，主图案为一幽灵造型，因此也有很多车友称它为“幽灵”跑车。作为一家世界级的超级跑车公司，Koenigsegg在中国的第一次亮相是在2005年的上海车展上，当时Koenigsegg公司的工作人员透露，他们将尽快进入中国市场。而2012年，这款猛兽将正式进驻。\r\n', '2022-06-02 09:35:56', '2022-06-02 09:35:57');
INSERT INTO `brand` VALUES (1397861370035744769, 'http://localhost:8080/cars/lynk.png', '领克', 'LYNK&CO', '中国', 'LYNK&CO(领克)是欧洲技术、欧洲设计、全球制造、全球销售的新时代高端品牌，秉持“生而全球，开放互联”的品牌理念，“个性、开放、互联”的品牌价值，具有与生俱来的全球化基因，为全球都市人群打造，它诞生于互联网时代，将互联网思维与传统汽车工业相融合，实现出行方式向个性、开放、互联的趋势变革。\r\n', '2022-06-02 09:35:58', '2022-06-02 09:35:59');
INSERT INTO `brand` VALUES (1397861683459305474, 'http://localhost:8080/cars/landrover.png', '路虎', 'Landrover', '英国', '路虎公司(Land Rover)以四驱车而举世闻名：自创始以来就始终致力于为其驾驶者提供不断完善的四驱车驾驶体验。在四驱车领域中，路虎公司不仅拥有先进的核心技术，而且充满了对四驱车的热情：他是举世公认的权威四驱车革新者。尽管路虎在不断改进产品，但它始终秉承其优良传统就是将公司价值与精益设计完美的结\r\n', '2022-06-02 09:36:01', '2022-06-02 09:36:02');
INSERT INTO `brand` VALUES (1397861898467717121, 'http://localhost:8080/cars/lexus.png', '雷克萨斯', 'Lexus', '日本', '雷克萨斯（日语：レクサス，英语：Lexus），是丰田集团旗下的豪华汽车品牌，于全球市场均有销售。雷克萨斯与丰田集团其他旗下车辆段不同，成立之初即是为制造豪华汽车的车辆段，和讴歌（讴歌）、英菲尼迪（Infiniti）并列为日本三大豪华汽车品牌。\r\n', '2022-06-02 09:36:03', '2022-06-02 09:36:04');
INSERT INTO `brand` VALUES (1397862198054268929, 'http://localhost:8080/cars/lincoln.png', '林肯', 'LINCOLN', '美国', '林肯汽车（Lincoln）是福特汽车旗下汽车品牌中的高级品牌，以宽底盘和诸多豪华内装和加长版闻名于世。1917年由亨利·M·利兰（Henry Martyn Leland）创立，1922年后被福特汽车收购。其品牌名称是以美国总统亚伯拉罕·林肯的名字命名。自1939年美国总统富兰克林·罗斯福以来，由于林肯车杰出的性能、高雅的造型和无与伦比的舒适一直被白宫选为总统专车。它最出名的一款车是肯尼迪总统乘用的检阅车。2014年林肯正式进入中国市场。\r\n', '2022-06-02 09:36:05', '2022-06-02 09:36:07');
INSERT INTO `brand` VALUES (1397862477835317250, 'http://localhost:8080/cars/renault.png', '雷诺', 'Renault', '法国', '雷诺，（Renault S.A.）是一家法国车辆制造商，生产的车辆种类有赛车、小型车、中型车、休旅车、大型车（包含卡车和工程用车及巴士）等。雷诺第一次进入美国市场销售是1950年代及1960年代之间，他们在美国市场确定的品牌发音方式是“Ren-ALT”，而这个发音方式是今日最为广泛接受的。然而雷诺正确的发音是“Rhen-oh”（就如同英国常见的发音方式）。\r\n', '2022-06-02 09:36:06', '2022-06-02 09:36:08');
INSERT INTO `brand` VALUES (1398089545865015297, 'http://localhost:8080/cars/rollsroyce.png', '劳斯莱斯', 'Rolls-Royce', '英国', '劳斯莱斯（Rolls-Royce），英国豪华汽车品牌，1906年成立于英国，公司创始人为Frederick Henry Royce（亨利·莱斯）和Charles Stewart Rolls（查理·劳斯）。Rolls-Royce出产的轿车是顶级汽车的杰出代表，以其豪华而享誉全球，是欧美汽车的主要代表之一。次年推出的Silver Ghost（银魅）轿车，不久便被誉为“世界上最好的汽车”。除了制造汽车，劳斯莱斯还涉足航空发动机制造的领域，也是一家优秀的发动机制造商，空客飞机部分型号用的就是劳斯莱斯的发动机。\r\n', '2022-06-02 09:36:09', '2022-06-02 09:36:11');
INSERT INTO `brand` VALUES (1398089782323097601, 'http://localhost:8080/cars/lamborghini.png', '兰博基尼', 'Lamborghini', '意大利', '兰博基尼（Automobili Lamborghini S.p.A.）是一家意大利汽车生产商，全球顶级跑车制造商及欧洲奢侈品标志之一，公司坐落于意大利圣亚加塔·波隆尼（Sant·Agata Bolognese），由费鲁吉欧·兰博基尼在1963年创立。兰博基尼早期由于经营不善，于1980年破产；数次易主后，1998年归入奥迪旗下，现为大众集团（Volkswagen Group）旗下品牌之一。兰博基尼的标志是一头充满力量、正向对方攻击的斗牛，与大马力高性能跑车的特性相契合，同时彰显了创始人斗牛般不甘示弱的个性。\r\n', '2022-06-02 09:36:12', '2022-06-02 09:36:13');
INSERT INTO `brand` VALUES (1398090003262255106, 'http://localhost:8080/cars/suzuki.png', '铃木', 'Suzuki', '日本', '铃木公司成立于1920年，1952年开始生产摩托车，1955年开始生产汽车，以生产微型汽车为主。通用持有铃木10%的股权。铃木于1984年首次提供技术给中国市场，也是最早进入中国市场的日本汽车公司之一。铃木通过向全世界的客户提供优质产品，并且向使用铃木产品的客户提供优质服务，面向每位客户，以实现与客户建立终生信赖的关系为目标而不懈努力。铃木认为，为每位客户提供“高品质”、“高性能”、“客户使用方便”、“乘坐舒适的汽车”，是铃木的使命。最近几年以来，我们以“Wayoflife”这一新的口号为基准，以为每位客户制造可提供“多彩生活建议”的产品为目标，将“Wayoflife”的精神渗透到铃木的全部产品中，提供给客户。\r\n', '2022-06-02 09:36:14', '2022-06-02 09:36:15');
INSERT INTO `brand` VALUES (1398090264554811394, 'http://localhost:8080/cars/mazda.png', '马自达', 'Mazda Motor Corporation', '日本', '马自达株式会社（日语：マツダ株式会社，英语：Mazda Motor Corporation），简称马自达，是日本第五大汽车制造厂，总部位于广岛县安艺郡府中町，且一度成为全球唯一生产转子引擎市售车的车厂。2015年马自达在全球的年产量（包含乘用车与商用车）为137万5千辆，在全球汽车制造厂中排名第16名，主要销售市场包括亚洲、欧洲、北美洲、大洋洲等地。\r\n', '2022-06-02 09:36:16', '2022-06-02 09:36:17');
INSERT INTO `brand` VALUES (1398090455399837698, 'http://localhost:8080/cars/morris.png', '名爵', 'Morris Garages', '中国', '名爵，百年英国运动汽车品牌，名爵即MG，全称Morris Garages。名爵为全球汽车行业贡献了太多的经典，43项世界速度纪录的创造，多个行业第一以及前瞻技术的应用，不但印证了传承百年的赛道基因，更推动了世界汽车工业发展。名爵自2007年起收归上汽集团——名列世界500强第52位的中国最大汽车集团。作为中国人掌控的国际品牌，名爵遵循上汽“电动化、智能网联化、共享化、国际化”的新四化战略，以赛道基因、时代基因和感性力设计基因打造产品。\r\n', '2022-06-02 09:36:18', '2022-06-02 09:36:19');
INSERT INTO `brand` VALUES (1398090685449023490, 'http://localhost:8080/cars/maserati.png', '玛莎拉蒂', 'Maserati', '意大利', '1914年12月1日，阿尔菲力玛莎拉蒂公司在意大利博洛尼亚诞生。此后，玛莎拉蒂在跑车文化的发展历程中始终占据举足轻重的地位。一个世纪以来，玛莎拉蒂无论在公路还是赛道上都取得了辉煌成就，也度过了一次次困境。以往的重重挑战，造就了公司坚韧鲜明的品质和个性。在玛莎拉蒂兄弟的努力下，公司的业务不断扩大，公司于1925年更名为Societa Anonima Officine Alfieri Maserati公司，同时公司开始使用三叉戟作为公司标识，这个标识取材于矗立在波洛尼亚Maggiore广场上的海神尼普顿雕像，由Mario Maserati设计。\r\n', '2022-06-02 09:36:20', '2022-06-02 09:36:21');
INSERT INTO `brand` VALUES (1531959186861187074, 'http://localhost:8080/cars/51.png', '哪吒汽车', 'NETA Auto', '中国', '哪吒汽车是浙江合众新能源汽车有限公司旗下的汽车品牌，秉持“电动化、智能化、网联化”的发展理念，让高品价比的智能电动汽车触手可及。', '2022-06-01 19:21:47', '2022-06-01 19:21:47');
INSERT INTO `brand` VALUES (1531959350317408258, 'http://localhost:8080/cars/nazhijie.jpg', '纳智捷', 'LUXGEN', '中国', '纳智捷是一家汽车制造企业，成立于1951年，总部位于杭州萧山。前身是1953年设立裕隆汽车制造公司。', '2022-06-01 19:22:26', '2022-06-01 19:22:26');
INSERT INTO `brand` VALUES (1531959454185152513, 'http://localhost:8080/cars/oula.png', '欧拉', 'ORA', '中国', '欧拉品牌隶属于长城汽车，是中国主流自主车企中第一个独立的新能源汽车品牌。', '2022-06-01 19:22:51', '2022-06-01 19:22:51');
INSERT INTO `brand` VALUES (1531959590298705921, 'http://localhost:8080/cars/ouge.png', '讴歌', 'Acura', '日本', '讴歌是日本本田汽车公司旗下的高端子品牌，于1986年在美国创立，其名称Acura源于拉丁语Accuracy，标志为一个用于工程测量的卡钳形象，反映出讴歌精湛的造车工艺与追求完美的理念。', '2022-06-01 19:23:23', '2022-06-01 19:23:23');
INSERT INTO `brand` VALUES (1531959817114083329, 'http://localhost:8080/cars/oubao.jpg', '欧宝', 'OPEL', '美国', '欧宝（OPEL、欧普）是美国通用汽车公司的子公司，成立于1862年。', '2022-06-01 19:24:17', '2022-06-01 19:24:17');
INSERT INTO `brand` VALUES (1531959923490021377, 'http://localhost:8080/cars/jixing.png', '极星', 'Polestar', '瑞典', '极星是沃尔沃汽车集团和浙江吉利控股集团共同拥有的全球高性能电动汽车品牌。', '2022-06-01 19:24:43', '2022-06-01 19:24:43');
INSERT INTO `brand` VALUES (1531960004549140482, 'http://localhost:8080/cars/qichen.png', '起亚', 'KIA', '韩国', '起亚即起亚汽车集团，是一家集汽车生产、销售于一体的中外合资企业，于1944年12月成立，总部地点为韩国首尔。', '2022-06-01 19:25:02', '2022-06-01 19:25:02');
INSERT INTO `brand` VALUES (1531960091299930114, 'http://localhost:8080/cars/qichen.png', '启辰', 'Venucia', '中国', '启辰品牌于2010年9月8日在北京成立。承“匠心匠品 与你同行”的品牌愿景，启辰品牌以“洞察中国消费者需求，打造高品质国”民车作为目标，全面贯彻顾客至上的服务理念，致力于打造成为值得消费者信赖的品牌。', '2022-06-01 19:25:23', '2022-06-01 19:25:23');
INSERT INTO `brand` VALUES (1531960224116760578, 'http://localhost:8080/cars/richan.png', '日产', 'NISSAN MOTOR', '日本', '日产汽车公司创立于1933年，是日本的第二大汽车公司，是日本三大汽车制造商之一，也是世界十大汽车公司之一。', '2022-06-01 19:25:55', '2022-06-01 19:25:55');
INSERT INTO `brand` VALUES (1531960292601356290, 'http://localhost:8080/cars/rongwei.png', '荣威', 'ROEWE', '中国', '荣威（ROEWE）是上海汽车工业（集团）总公司旗下的一款汽车品牌，于2006年10月推出。', '2022-06-01 19:26:11', '2022-06-01 19:26:11');
INSERT INTO `brand` VALUES (1531960369726218241, 'http://localhost:8080/cars/shangqidatong.png', '上汽大通', 'MAXUS', '中国', '上汽大通（英文名：MAXUS）是一家汽车产品服务公司，是上海汽车集团股份有限公司全资子公司，于2011年成立，总部位于上海。公司产品覆盖宽体及窄体轻型客车、轻型卡车、特种改装车等领域。', '2022-06-01 19:26:29', '2022-06-01 19:26:29');
INSERT INTO `brand` VALUES (1531960474730618882, 'http://localhost:8080/cars/sanling.png', '三菱', 'Mitsubishi Group', '日本', '三菱集团（Mitsubishi Group）是一家经营钢铁、电气、汽车等的合资企业，成立时间为1870年，总部地点为日本。', '2022-06-01 19:26:54', '2022-06-01 19:26:54');
INSERT INTO `brand` VALUES (1531960547006865410, 'http://localhost:8080/cars/sikeda.png', '斯柯达', 'SKODA', '捷克', '斯柯达（SKODA）是世界著名的汽车生产商之一，也是德国大众汽车公司旗下的品牌，成立于1895年，总部位于捷克姆拉达-博莱斯拉夫。', '2022-06-01 19:27:12', '2022-06-01 19:27:12');
INSERT INTO `brand` VALUES (1531960618855292930, 'http://localhost:8080/cars/sibalu.png', '斯巴鲁', 'SUBARU', '日本', '斯巴鲁是一家汽车制造公司，成立于1953年，总部位于日本东京。', '2022-06-01 19:27:29', '2022-06-01 19:27:29');
INSERT INTO `brand` VALUES (1531960713810141185, 'http://localhost:8080/cars/tesila.png', '特斯拉', 'Tesla', '美国', '特斯拉（Tesla）是一家美国电动车及能源公司，由马丁·艾伯哈德和马克·塔彭宁于2003年在美国硅谷创立，公司名是为了纪念物理学家尼古拉·特斯拉。主要产销电动车、太阳能板及储能设备。', '2022-06-01 19:27:51', '2022-06-01 19:27:51');
INSERT INTO `brand` VALUES (1531960786233188354, 'http://localhost:8080/cars/tanke.png', '坦克', 'tank', '中国', '坦克（TANK）是长城汽车旗下品牌。', '2022-06-01 19:28:09', '2022-06-01 19:28:09');
INSERT INTO `brand` VALUES (1531960879451594754, 'http://localhost:8080/cars/沃尔沃.png', '沃尔沃', 'volvo', '瑞典', '沃尔沃汽车（Volvo Personvagnar，简称：沃尔沃），是1927年在瑞典哥德堡成立的汽车品牌。原为美国福特汽车旗下所拥有的品牌，于2010年3月28日由中国吉利汽车收购其全部股权及其相关资产（包括知识产权），使其成为旗下品牌。', '2022-06-01 19:28:31', '2022-06-01 19:28:31');
INSERT INTO `brand` VALUES (1531960992886546434, 'http://localhost:8080/cars/wuling.png', '五菱', 'SGMW', '中国', '五菱汽车品牌诞生于1985年，是企业“艰苦创业，自强不息”精神的体现，现已经成为中国汽车行业最具价值的品牌之一。 “五菱”文字、图形商标分别荣获“中国驰名商标”。', '2022-06-01 19:28:58', '2022-06-01 19:28:58');
INSERT INTO `brand` VALUES (1531961063317299202, 'http://localhost:8080/cars/weilai.png', '蔚来', 'NIO', '中国', '蔚来（NIO）是一家全球化的智能电动汽车公司，于2014年11月由李斌主导创立，总部现坐落于安徽省合肥市。', '2022-06-01 19:29:15', '2022-06-01 19:29:15');
INSERT INTO `brand` VALUES (1531961133571891202, 'http://localhost:8080/cars/魏牌.png', '魏牌', 'WEY', '中国', 'WEY指的是中国豪华SUV品牌，成立于2016年，是中国SUV企业长城汽车聚集1600多人的国际研发团队历时四年打造出的中国豪华SUV品牌。旗下产品有VV7[1]、VV6[2]、VV5[3]及VV7PHEV新能源系列车型[4]。', '2022-06-01 19:29:31', '2022-06-01 19:29:31');
INSERT INTO `brand` VALUES (1531961223208361986, 'http://localhost:8080/cars/wushiling.png', '五十铃', 'isuzu', '日本', '五十铃（英文：Isuzu Motors, Ltd.，日文：いすず自动车株式会社，Isuzu Jidōsha Kabushiki Kaisha）是一家日本汽车制造公司，总公司位于日本东京都品川区，制造与组装则设厂于日本藤泽市、栃木县、及北海道，以生产商用车辆･巴士以及柴油内燃机著名。', '2022-06-01 19:29:53', '2022-06-01 19:29:53');
INSERT INTO `brand` VALUES (1531961337373122561, 'http://localhost:8080/cars/weima.png', '威马汽车', 'WM Motor', '中国', '威马汽车（WM Motor）成立于2015年（前身为联合创始人杜立刚的三电系统研发企业，成立于2012年[1]），公司名字取自德语世界冠军（Weltmeister）。', '2022-06-01 19:30:20', '2022-06-01 19:30:20');
INSERT INTO `brand` VALUES (1531961446576021506, 'http://localhost:8080/cars/xiandai.png', '现代', 'HYUNDAI', '韩国', '现代成立于1947年，为韩国汽车品牌，主要生产suv及普通家用轿车，排量为1.6~2.7L之间的车型。', '2022-06-01 19:30:46', '2022-06-01 19:30:46');
INSERT INTO `brand` VALUES (1531961539668598785, 'http://localhost:8080/cars/xuefulan.png', '雪佛兰', 'Chevrolet', '美国', '雪佛兰（Chevrolet）是美国通用汽车公司（General Motors，简称GM）旗下的一个汽车品牌，于1911年11月3日创立[1]，创始人为威廉·杜兰特（William C. Durant）和路易斯·雪佛兰（Louis Chevrolet），1918年被通用汽车并购。', '2022-06-01 19:31:08', '2022-06-01 19:31:08');
INSERT INTO `brand` VALUES (1531961610988544002, 'http://localhost:8080/cars/xuetielong.png', '雪铁龙', 'Citroen', '法国', '雪铁龙是法国第三大汽车制造公司，创立于1919年，总部设在法国巴黎。', '2022-06-01 19:31:25', '2022-06-01 19:31:25');
INSERT INTO `brand` VALUES (1531961682069413890, 'http://localhost:8080/cars/yingfei.png', '英菲尼迪', 'Infiniti', '日本', '英菲尼迪（Infiniti）是日产汽车公司旗下的豪华车品牌，1989年该品牌诞生于北美地区。凭借独特前卫的设计、出色的产品性能和贴心的客户服务，英菲尼迪已成为全球豪华汽车市场中最重要的品牌之一。', '2022-06-01 19:31:42', '2022-06-01 19:31:42');
INSERT INTO `brand` VALUES (1531961778634874882, 'http://localhost:8080/cars/yiweike.png', '依维柯', 'IVECO', '中外合资', '依维柯是南京依维柯汽车有限公司的简称，公司是中国南京汽车集团与意大利菲亚特集团依维柯公司共同成立的合资公司。[1]不仅是中意两国政府间最大的合作项目，也是菲亚特集团诞生一百年以来海外合作最成功的典范。', '2022-06-01 19:32:05', '2022-06-01 19:32:05');
INSERT INTO `brand` VALUES (1531961868460089346, 'http://localhost:8080/cars/yiqi.png', '一汽', 'China FAW Group Corporation', '中国', '中国第一汽车集团有限公司（China FAW Group Corporation）是第一机械工业部直属的大型国营工业企业，是第一个五年计划期间苏联援建的重点工程项目，于1953年成立。', '2022-06-01 19:32:27', '2022-06-01 19:32:27');
INSERT INTO `brand` VALUES (1531961973145722882, 'http://localhost:8080/cars/yema.png', '野马', 'yemaauto', '中国', '野马汽车在20世纪80年代末改革开放的大潮中诞生，是全国最早生产汽车的厂家之一。2006年8月更名为四川汽车工业集团有限公司，2011年12月经股份重组后正式更名为四川野马汽车股份有限公司。', '2022-06-01 19:32:52', '2022-06-01 19:32:52');
INSERT INTO `brand` VALUES (1531962066821308417, 'http://localhost:8080/cars/zhongxing.png', '中兴', 'ZXAUTO', '中外合资', '河北中兴汽车制造有限公司，[1]前身始建于1949年，是中国人民解放军某部军械修理所。1999年12月组建的合资公司，注册资本3000万美元，总资产11900万美元。', '2022-06-01 19:33:14', '2022-06-01 19:33:14');
INSERT INTO `brand` VALUES (1531962145116381185, 'http://localhost:8080/cars/zhongtai.jpg', '众泰', 'ZOTYE AUTO', '中国', '众泰汽车（ZOTYE AUTO，股票简称*ST众泰）是一家汽车研发、制造与销售企业，[1]于2003年成立，总部位于浙江永康。', '2022-06-01 19:33:33', '2022-06-01 19:33:33');
INSERT INTO `brand` VALUES (1531962238850686978, 'http://localhost:8080/cars/zhonghua.jpg', '中华汽车', '无', '中国', '中华汽车是华晨汽车集团（Huachen Auto Group）的轿车子品牌，属于大陆的华晨集团，和台湾没有关系。', '2022-06-01 19:33:55', '2022-06-01 19:33:55');


-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
    `id` bigint(20) NOT NULL COMMENT '主键',
    `img` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
    `name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车名',
    `type` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆类型',
    `price` varchar(120) NOT NULL COMMENT '定价',
    `sale_price` varchar(120) NOT NULL COMMENT '售价',
    `repertory` int(30) NULL DEFAULT NULL COMMENT '库存',
    `create_time` datetime(0) NOT NULL COMMENT '创建时间',
    `update_time` datetime(0) NOT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;



INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533638999774633986, 'http://localhost:8080/cars/hqo.png', '红旗E-QM5', '中型车', '12.28-23.98万', '12.28-23.98万', 2, '2022-06-06 10:36:46', '2022-06-06 10:36:46');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533639902057504770, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChwFlGKVdJ2AGKyEAA2oVPEtITw398.jpg', '红旗H5', '中型车', '14.58-19.08万', '14.58-19.08万', 5, '2022-06-06 10:40:21', '2022-06-06 10:40:21');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533640536441790466, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChtliGKDdjmACciYABryOAQFRIY389 (1).jpg', '红旗H9', '中大型车', '30.98-86.00万', '30.98-86.00万', 5, '2022-06-06 10:42:52', '2022-06-06 10:42:52');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533641086407319553, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChwFjmCznqCAIsxZACHgAJwtbLw029.jpg', '帝豪', '紧凑型车', '6.28-9.18万', '6.28-9.18万', 10, '2022-06-06 10:45:03', '2022-06-06 10:45:03');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533641490717253634, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChsEn134gLOAHsA4AAlWi_sSB9Y532.jpg', '远景', '紧凑型车', '4.99-7.39万', '4.99-7.39万', 10, '2022-06-06 10:46:40', '2022-06-06 10:46:40');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533641939692331009, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChcCSF3XnfuAUYAoAArF642btaw770.jpg', '吉利ICON', '小型SUV', '9.98-13.2021万', '9.98-13.2021万', 10, '2022-06-06 10:48:27', '2022-06-06 10:48:27');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533642200032780290, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChsFJ2JVF2WANcbtAEQ--qlxUT4685.jpg', '海豹', '中型车', '21.28-28.98万', '21.28-28.98万', 8, '2022-06-06 10:49:29', '2022-06-06 10:49:29');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533642613763121153, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChtliGJM9LqAYZ90AB_7nRYeRt8442.jpg', '汉', '中大型车', '21.48-32.98万', '21.48-32.98万', 11, '2022-06-06 10:51:07', '2022-06-06 10:51:07');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533642773222170626, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChsEe10_A5uANhyOAArZXfRpsDU383.jpg', '秦Pro新能源', '紧凑型车', '13.69-20.49万', '13.69-20.49万', 6, '2022-06-06 10:51:46', '2022-06-06 10:51:46');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533643238718611458, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChwFj2Jg4H-AGaoGAHvtMHp_iIU540.jpg', '风骏7', '皮卡', '8.48-12.28万', '8.48-12.28万', 6, '2022-06-06 10:53:36', '2022-06-06 10:53:36');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533643379169075202, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChwFkl_PFlaAR0LAACCC1X0BsiM712.jpg', '风骏5', '皮卡', '6.98-9.98万', '6.98-9.98万', 5, '2022-06-06 10:54:10', '2022-06-06 10:54:10');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533643546941235202, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChxkqWJfhEuAOFGYAGt9ObbI2Ck000.jpg', '金刚炮', '皮卡', '8.88-12.58万', '8.88-12.58万', 5, '2022-06-06 10:54:50', '2022-06-06 10:54:50');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533643982460985345, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChsFVmDlyheATpQ8ACxtTPpmG4U392.jpg', '传祺GS4', '紧凑型SUV', '8.98-13.18万', '8.98-13.18万', 10, '2022-06-06 10:56:34', '2022-06-06 10:56:34');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533644169233342466, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChsEdmILreqAYz1SADVztK063ao334.jpg', '传祺GA6', '中型车', '10.88-16.88万', '10.88-16.88万', 8, '2022-06-06 10:57:18', '2022-06-06 10:57:18');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533644360145477634, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChsFVmCGKGSAYMvHABeIRezhe9c439.jpg', '传祺M8', '中大型MPV', '17.98-36.98万', '17.98-36.98万', 10, '2022-06-06 10:58:04', '2022-06-06 10:58:04');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533644612458029058, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChwEl2EyDpmANo9qABH8ZtFgqUY709.jpg', '哈弗H6', '紧凑型SUV', '9.89-15.70万', '9.89-15.70万', 15, '2022-06-06 10:59:04', '2022-06-06 10:59:04');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533644936581259265, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChtliGJnb8mAI2NgAIB3_OeC1ss646.jpg', '哈弗M6', '紧凑型SUV', '7.19-9.29万', '7.19-9.29万', 20, '2022-06-06 11:00:21', '2022-06-06 11:00:21');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533645601542021121, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChwFlGJ6C1OAKBU3ACRoe2w7dcI985.jpg', '哈弗大狗', '紧凑型SUV', '11.99-16.19万', '11.99-16.19万', 14, '2022-06-06 11:03:00', '2022-06-06 11:03:00');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533645978614145025, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChsElWD24VeARDXiAB_HhqpwcJI144.jpg', '瑞虎8', '中型SUV', '9.58-16.8888万', '9.58-16.8888万', 20, '2022-06-06 11:04:30', '2022-06-06 11:04:30');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533646163650060289, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChwFj17qzsKABMIrAAV1n6AOBnA583.jpg', '艾瑞泽5', '紧凑型车', '5.99-8.58万', '5.99-8.58万', 10, '2022-06-06 11:05:14', '2022-06-06 11:05:14');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533646525270368258, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChxkqWIxq1KAGezAABqFt3Li82I969.jpg', '欧萌达', '紧凑型SUV', '暂无报价', '暂无报价', 2, '2022-06-06 11:06:40', '2022-06-06 11:06:40');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533646889914769409, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChsEdmBxHseADi9wABBLMi6-A9s200.jpg', '荣威i5', '紧凑型车', '6.79-9.99万', '6.79-9.99万', 42, '2022-06-06 11:08:07', '2022-06-06 11:08:07');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533647294761574402, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChxkkGD1Za-AVd0WABZKwnpVRlk326.jpg', '荣威RX5', '紧凑型SUV', '9.33-13.98万', '9.33-13.98万', 32, '2022-06-06 11:09:44', '2022-06-06 11:09:44');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533647687948214273, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChsFJ2JeHJGAOOxMACLVmwo3XYg424.jpg', '鲸', '紧凑型SUV', '16.68-19.28万', '16.68-19.28万', 3, '2022-06-06 11:11:17', '2022-06-06 11:11:17');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533648052856856577, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChwFRV_AvnWAVw2fACyA75IA9ww269.jpg', '福克斯', '紧凑型车', '10.88-15.38万', '10.88-15.38万', 43, '2022-06-06 11:12:44', '2022-06-06 11:12:44');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533648368444678146, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChwFj2IWEeKABMDDAAy9a1LQs8Y835.jpg', '蒙迪欧', '中型车', '中型车', '中型车', 31, '2022-06-06 11:14:00', '2022-06-06 11:14:00');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533648614889398273, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChsEkV1JkeaAPdoDAAhx6lQC7xU980.jpg', '金牛座', '中型车', '22.89-28.89万', '22.89-28.89万', 15, '2022-06-06 11:14:58', '2022-06-06 11:14:58');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533649046860767234, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChwFqmA6OmOAV5BGABgmUEE-RSs722.jpg', '凯美瑞', '中型车', '17.98-26.98万', '17.98-26.98万', 50, '2022-06-06 11:16:41', '2022-06-06 11:16:41');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533649253715451905, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChwFjmCpCP6AXllqABMgHuSsd6I964.jpg', '汉兰达', '汉兰达', '25.88-34.88万', '25.88-34.88万', 40, '2022-06-06 11:17:31', '2022-06-06 11:17:31');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533649480547606530, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChxkqWIeNe2Ab45_ABRcxKDI_QE772.jpg', 'YARiS L 致享', '小型车', '8.78-9.38万', '8.78-9.38万', 14, '2022-06-06 11:18:25', '2022-06-06 11:18:25');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533649941728108545, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChsEfV-IE-2AFR_-AC3sMBlIHkw452.jpg', '桑塔纳', '紧凑型车', '8.79-11.28万', '8.79-11.28万', 36, '2022-06-06 11:20:15', '2022-06-06 11:20:15');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533650221391716354, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChxknGJM8N-ASTxqACGo-dWLr4M453.jpg', '朗逸', '紧凑型车', '10.09-15.99万', '10.09-15.99万', 50, '2022-06-06 11:21:21', '2022-06-06 11:21:21');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533650800306331650, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChwEpmD_wf2ADAQNAB8yoqQCuk8781.jpg', '帕萨特', '中型车', '18.19-25.29万', '18.19-25.29万', 70, '2022-06-06 11:23:39', '2022-06-06 11:23:39');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533651136525934593, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChsEmF8EOK-Aa1_hAAi6_ZwI4QE965.jpg', '本田CR-V', '紧凑型SUV', '16.98-27.68万', '16.98-27.68万', 40, '2022-06-06 11:24:59', '2022-06-06 11:24:59');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533651377442562050, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChsEnl70Ky2AZPD-AAg8kmgMhlM872.jpg', '标致408', '紧凑型车', '11.97-15.97万', '11.97-15.97万', 35, '2022-06-06 11:25:57', '2022-06-06 11:25:57');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533651661841539073, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChwFlGKPi0WACZ1GAC2Lsor3tTo949.jpg', '宝马3系', '中型车', '29.39-40.99万', '29.39-40.99万', 100, '2022-06-06 11:27:05', '2022-06-06 11:27:05');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533651937029824514, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__wKgH1lkoANeAGy-fAAq0ZoP9dqA925.jpg', '菲翔', '紧凑型车', '10.08-16.88万', '10.08-16.88万', 10, '2022-06-06 11:28:10', '2022-06-06 11:28:10');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533652311170129921, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChxkjmKXlYyAbjm0ABF0B9K2RfQ813.jpg', '奥迪A8', '大型车', '85.88-197.18万', '85.88-197.18万', 100, '2022-06-06 11:29:40', '2022-06-06 11:29:40');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533652577126752258, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__wKgH0lkcF4uARq5kAAuFI6atpIs040.jpg', '奥迪TTS', '跑车', '59.78-72.98万', '59.78-72.98万', 30, '2022-06-06 11:30:43', '2022-06-06 11:30:43');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533652811412185090, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChwEoWB-guGAOgv9AAieFNgMWD0746.jpg', 'V8 Vantage', '跑车', '175.80-216.80万', '175.80-216.80万', 30, '2022-06-06 11:31:39', '2022-06-06 11:31:39');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533653087309307905, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChxkqWJ95lmAPLFJACev_jUkha0968.jpg', 'Giulia', '中型车', '37.98-99.38万', '37.98-99.38万', 10, '2022-06-06 11:32:45', '2022-06-06 11:32:45');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533653420131524610, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChxkqWIvOkCAFHqBAAsFn06BmY8085.jpg', '奔驰E级', '中大型车', '43.81-54.88万', '43.81-54.88万', 100, '2022-06-06 11:34:04', '2022-06-06 11:34:04');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533653881072951297, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChxkmWIHamyAcbkXACL6ObZWBMw166.jpg', '君威', '中型车', '19.68-24.98万', '19.68-24.98万', 50, '2022-06-06 11:35:54', '2022-06-06 11:35:54');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533654435044040705, 'http://localhost:8080/cars/380x285_0_q87_autohomecar__ChxknGJ7JuaAO2y6ACPujiLbiM0573.jpg', '保时捷718', '跑车', '54.50-157.80万', '54.50-157.80万', 30, '2022-06-06 11:38:06', '2022-06-06 11:38:06');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533654988511813633, 'http://localhost:8080/cars/380x285_0_q87_autohomecar__ChxknGJ2Tl-AWd6pAC_iIxW3_us418.jpg', '奔腾B70', '中型车', '10.59-14.49万', '10.59-14.49万', 20, '2022-06-06 11:40:18', '2022-06-06 11:40:18');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533655231970189314, 'http://localhost:8080/cars/380x285_0_q87_autohomecar__ChsFJ2KLphCAfboDACUDOHhrFVg401.jpg', '飞驰', '大型车', '273.80-436.00万', '273.80-436.00万', 50, '2022-06-06 11:41:16', '2022-06-06 11:41:16');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533655482881843202, 'http://localhost:8080/cars/380x285_0_q87_autohomecar__ChwFqV-ZV0iAAke4AAdfPRw8-H0734.jpg', 'Bolide', '跑车', '暂无报价', '暂无报价', 2, '2022-06-06 11:42:16', '2022-06-06 11:42:16');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533655912026251266, 'http://localhost:8080/cars/380x285_0_q87_autohomecar__ChsFJ2J6iv-AVqclAAwwXPoFlzc210.jpg', '逸动', '紧凑型车', '7.29-10.39万', '7.29-10.39万', 25, '2022-06-06 11:43:58', '2022-06-06 11:43:58');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533656168788959233, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChsEwGFaYv2ASRGrAHH0OrGLHjI569.jpg', '酷威', '中型SUV', '暂无报价', '暂无报价', 1, '2022-06-06 11:44:59', '2022-06-06 11:44:59');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533656420006797314, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChxkmWGChcWAOg_iAB7ioZ63x7w036.jpg', ' Portofino', '跑车', '268.80万', '268.80万', 3, '2022-06-06 11:45:59', '2022-06-06 11:45:59');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533656694830178306, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChwFlV9DaciAPYCxACH-qfmsg6o240.jpg', '观致3', '紧凑型车', '10.59万', '10.59万', 16, '2022-06-06 11:47:05', '2022-06-06 11:47:05');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533656937198034945, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChsEf15opNqAEvvKAAcRFQdbGKM671.jpg', '宝骏310', '小型车', '4.09-5.29万', '4.09-5.29万', 30, '2022-06-06 11:48:02', '2022-06-06 11:48:02');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533657227536146433, 'http://localhost:8080/cars/480x360_0_q95_c42_autohomecar__ChsEnWBcGbWAPmYYAB6kC4VsRI4703.jpg', '海马爱尚EV', '微型车', '3.98-4.28万', '3.98-4.28万', 20, '2022-06-06 11:49:12', '2022-06-06 11:49:12');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533657565378945026, 'http://localhost:8080/cars/380x285_0_q87_201307230915424054444.jpg', '海格H5C', '轻客', '16.53-24.68万', '16.53-24.68万', 6, '2022-06-06 11:50:32', '2022-06-06 11:50:32');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533657907759980546, 'http://localhost:8080/cars/380x285_0_q87_autohomecar__ChwFjmC9kWGAHLerADrSGQkLbhs917.jpg', '捷豹XEL', '中型车', '29.98-38.08万', '29.98-38.08万', 20, '2022-06-06 11:51:54', '2022-06-06 11:51:54');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533658242255724546, 'http://localhost:8080/cars/380x285_0_q87_autohomecar__ChsEm1_bF9KATxCaACRmsinnZy0634.jpg', '指南者', '紧凑型SUV ', '13.98-20.98万', '13.98-20.98万', 20, '2022-06-06 11:53:14', '2022-06-06 11:53:14');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533658616551219202, 'http://localhost:8080/cars/380x285_0_q87_20140930003235980513210.jpg', '阁瑞斯', '轻客', '8.88-27.78万', '8.88-27.78万', 3, '2022-06-06 11:54:43', '2022-06-06 11:54:43');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533658857199411202, 'http://localhost:8080/cars/380x285_0_q87_autohomecar__ChsEmV4ldIKAP2fDAAlQvjx0AO4182.jpg', '驭胜S350', '中型SUV', '15.98-20.18万', '15.98-20.18万', 30, '2022-06-06 11:55:40', '2022-06-06 11:55:40');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533659151375310849, 'http://localhost:8080/cars/380x285_0_q87_autohomecar__ChwEmGD-gZuAS9SGACs5NVju8nw785.jpg', '凯迪拉克CT6', '中大型车', '39.97-48.97万', '39.97-48.97万', 30, '2022-06-06 11:56:50', '2022-06-06 11:56:50');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533659348826365953, 'http://localhost:8080/cars/380x285_0_q87_autohomecar__ChsEflx-jOmAABtRAAMpJ1hs_o8374.jpg', 'Jesko', '跑车', '暂未报价', '暂无报价', 1, '2022-06-06 11:57:37', '2022-06-06 11:57:37');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533659625902088194, 'http://localhost:8080/cars/380x285_0_q87_autohomecar__ChwFSGDq-ySAHnikABw5LGDlJsA436.jpg', '领克03', '紧凑型车', '13.68-25.68万', '13.68-25.68万', 23, '2022-06-06 11:58:44', '2022-06-06 11:58:44');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533660066824101890, 'http://localhost:8080/cars/380x285_0_q87_autohomecar__ChsEwGFfOHaAJTG5ABanuvYM8M8109.jpg', '发现运动版', '中型SUV', '35.68-45.58万', '35.68-45.58万', 34, '2022-06-06 12:00:29', '2022-06-06 12:00:29');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533660558748852226, 'http://localhost:8080/cars/380x285_0_q87_autohomecar__Chxkl2EgqzyAIeHjACpWPSo5qjM864.jpg', '雷克萨斯ES', '中大型车', '29.49-48.89万', '29.49-48.89万', 50, '2022-06-06 12:02:26', '2022-06-06 12:02:26');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533660876064727042, 'http://localhost:8080/cars/380x285_0_q87_autohomecar__ChwFjmDBwo-AT86lABz9-viepFA234.jpg', '冒险家', '紧凑型SUV', '24.68-34.58万', '24.68-34.58万', 20, '2022-06-06 12:03:42', '2022-06-06 12:03:42');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533661104075481089, 'http://localhost:8080/cars/380x285_0_q87_autohomecar__ChsEnVx-rNqAcZ8WAAGqeJWK22g501.jpg', 'Twingo', '微型车', '暂无报价', '暂无报价', 2, '2022-06-06 12:04:36', '2022-06-06 12:04:36');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533661325882859522, 'http://localhost:8080/cars/380x285_0_q87_autohomecar__wKgHIlrwJHaAK02EAAsUwWrTmXY510.jpg', '幻影', '大型车', '790.00-920.00万', '790.00-920.00万', 3, '2022-06-06 12:05:29', '2022-06-06 12:05:29');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533661602941804545, 'http://localhost:8080/cars/380x285_0_q87_autohomecar__ChsEwGB9gIaACD06ABwkOn-LwyM607.jpg', 'Huracán', '跑车', '254.00-390.00万', '254.00-390.00万', 1, '2022-06-06 12:06:35', '2022-06-06 12:06:35');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533661889597317121, 'http://localhost:8080/cars/380x285_0_q87_autohomecar__ChwFlGIoM8OAVwzGACN5pMlVbhY532.jpg', 'CELERIO', '微型车', '暂无报价', '暂无报价', 2, '2022-06-06 12:07:43', '2022-06-06 12:07:43');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533662116622409730, 'http://localhost:8080/cars/380x285_0_q87_autohomecar__Chxkm2Hoy2mAeYV5ACu-GlzISNI243.jpg', '马自达CX-5', '紧凑型SUV', '17.58-24.58万', '17.58-24.58万', 45, '2022-06-06 12:08:37', '2022-06-06 12:08:37');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533662447246811138, 'http://localhost:8080/cars/380x285_0_q87_autohomecar__ChxkqWIgnweAOq8fADgMx4UyqGU709.jpg', 'MG5天蝎座', '紧凑型车', '10.29-11.79万', '10.29-11.79万', 12, '2022-06-06 12:09:56', '2022-06-06 12:09:56');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533662730609795073, 'http://localhost:8080/cars/380x285_0_q87_autohomecar__ChsE4WAXnuuAEvr8ABj5WVjZm_g111.jpg', '总裁', '大型车', '141.75-171.08万', '141.75-171.08万', 10, '2022-06-06 12:11:04', '2022-06-06 12:11:04');


-- ---------------------------------------------------
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533647279393689601, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChxkjmGBzYmAZZReACyI8SRym5Q918.jpg', '哪吒v', '小型suv', '10.48万', '7.85万', 999, '2022-06-06 11:09:40', '2022-06-06 11:09:40');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533647718998691842, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChwFk2KLo7yALy45AB5igi9lhrI682.jpg', '哪吒u', '紧凑型SUV', '17.6万', '16.5万', 258, '2022-06-06 11:11:25', '2022-06-06 11:14:36');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533648045596561409, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__wKgH1FcUqneAXlNXAAet6LsRB6M148.jpg', '纳智捷5', '紧凑型车', '15.3万', '11万', 0, '2022-06-06 11:12:43', '2022-06-06 11:12:43');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533648343316647938, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChwFkV7YyUiAMfkDAAWaW0s0oPw770.jpg', '讴歌CDX', '紧凑型SUV', '28.3万', '25.6万', 886, '2022-06-06 11:13:54', '2022-06-06 11:13:54');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533648741087662081, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChwFjl-inpaAJ4mRABpaIBvV4WE422.jpg', '讴歌RDX', '中型SUV', '46.3万', '38.3万', 233, '2022-06-06 11:15:28', '2022-06-06 11:15:28');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533648969949859841, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChcCSF132RaAcC7BAAJzQQ3mOkA809.jpg', '欧宝雅特', '紧凑型车', '34.8万', '23.3万', 136, '2022-06-06 11:16:23', '2022-06-06 11:16:23');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533649183343464450, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__wKgH01mxFl2ALcTkAALnWWefNAk477.jpg', '欧宝英速亚', '中型车', '36.3万', '36.2万', 101, '2022-06-06 11:17:14', '2022-06-06 11:17:14');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533649384791691265, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__20140120173814185272.jpg', '欧宝安德拉', '中型suv', '31.8万', '27.5万', 1314, '2022-06-06 11:18:02', '2022-06-06 11:18:02');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533649605164617729, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChwFk2KVlh6AEY1WABZ8ET-BfP4416.jpg', '欧拉好猫', '小型车', '15.8万', '14.1万', 330, '2022-06-06 11:18:54', '2022-06-06 11:18:54');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533649736102400001, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChwFjmEBYjWAEh4SAA-sZ2Zosi4943.jpg', '欧拉好猫GT', '小型车', '16.9万', '16.8万', 134, '2022-06-06 11:19:26', '2022-06-06 11:19:26');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533649994991620098, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChwFqV7p79CAdCeJAAhjqao4KYo488.jpg', 'Polestar 1', '跑车', '145万', '145万', 20, '2022-06-06 11:20:27', '2022-06-06 11:20:27');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533650142572400642, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChwEl2B87NaAEKM7ABPln7M_pfs141.jpg', 'Polestar 2', '紧凑型车', '33.8万', '28.58万', 160, '2022-06-06 11:21:02', '2022-06-06 11:21:02');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533650525629796353, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChsEfV1CPb2AUAj-AAIjdfeMKUA251.jpg', 'Huayra', '跑车', '2999万', '2785万', 2, '2022-06-06 11:22:34', '2022-06-06 11:22:34');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533650870166704130, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__Chxkm2HMBX6ABJBYAChS1qUhlMU729.jpg', '朋克多多', '微型车', '4.5万', '3.69万', 2333, '2022-06-06 11:23:56', '2022-06-06 11:23:56');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533651022524796929, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChtliGJyNBOAG7cXAB28tlQ7-fM053.jpg', '朋克美美', '微型车', '4.75万', '3.48万', 2106, '2022-06-06 11:24:32', '2022-06-06 11:24:32');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533651282705862657, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChwFj17qzsKABMIrAAV1n6AOBnA583.jpg', '奇瑞艾瑞泽5', '紧凑型车', '8.4万', '6.9万', 1068, '2022-06-06 11:25:34', '2022-06-06 11:25:34');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533651522909458434, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChwFkWG4yAqACW-PAA4iiutxxsc087.jpg', '奇瑞QQ冰激凌', '微型车', '4.8万', '3.85万', 785, '2022-06-06 11:26:32', '2022-06-06 11:26:32');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533651799913877506, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChtliGJeKweAFCm9ABkaxn598BA315.jpg', '启辰D60EV', '紧凑型车', '16.8万', '15.3万', 631, '2022-06-06 11:27:38', '2022-06-06 11:27:38');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533651987739004929, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChsEnGEQ5oiAf5vGAAw6AFb1V-Q949.jpg', '起亚k3', '紧凑型车', '12.2万', '11.2万', 616, '2022-06-06 11:28:22', '2022-06-06 11:28:22');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533652345605410818, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChwEmGFDav2AZRSRABceY1iEJPM868.jpg', '东风日产轩逸', '紧凑型车', '16.8万', '15.2万', 998, '2022-06-06 11:29:48', '2022-06-06 11:29:48');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533652572508868609, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChsEnF-fxICAWsRJABkHBZa7IY4583.jpg', '东风日产天籁', '中型车', '26.5万', '26.4万', 517, '2022-06-06 11:30:42', '2022-06-06 11:30:42');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533652770576486402, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChwFk2KZ_lOABsqBABl9R5ATWU4838.jpg', '荣威i6 MAX新能源', '紧凑型车', '17.5万', '16.8万', 1305, '2022-06-06 11:31:29', '2022-06-06 11:31:29');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533653006279593986, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__20140225103620482264.jpg', 'TECHART保时捷911', '跑车', '192.6万', '192.3万', 10, '2022-06-06 11:32:25', '2022-06-06 11:32:25');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533653172990595073, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__wKjBwlcUUOiAKX85AAi8W5kMvac583.jpg', 'TECHART Panamera', '大型车', '182.6万', '182.6万', 15, '2022-06-06 11:33:05', '2022-06-06 11:33:05');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533653381694967809, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChsE12DzluiAZKAuAAjZ5VcUjv4494.jpg', '坦克300', '紧凑型suv', '28.5万', '26.7万', 165, '2022-06-06 11:33:55', '2022-06-06 11:33:55');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533653523709906945, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChwFj2JcMHiAfiXBAB2W3JdpzPA969.jpg', '坦克500', '中大型suv', '38.6万', '36.5万', 99, '2022-06-06 11:34:29', '2022-06-06 11:34:29');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533653731176960002, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChwFj2IgzgGAGFpSABkrlWkWdGY725.jpg', '特斯拉Model Y', '中型车', '40.8万', '37.6万', 56, '2022-06-06 11:35:18', '2022-06-06 11:35:18');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533653922210729985, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChsF22ASHrOAHFL7AAHcHv_JbD0521.jpg', '特斯拉Model X', '中大型suv', '99.9万', '99.8万', 42, '2022-06-06 11:36:04', '2022-06-06 11:36:04');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533654145523863554, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChwFRF_gjEOAB1RBACBz_KBLQtM407.jpg', 'WALD V-Class', '中大型MPV', '108.8万', '103.9万', 15, '2022-06-06 11:36:57', '2022-06-06 11:36:57');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533654369302564865, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChxkqWIkqRqADbnwACSjgO1BJUo084.jpg', '威马E.5', '中型车', '18.8万', '17.6万', 654, '2022-06-06 11:37:50', '2022-06-06 11:37:50');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533654719212376065, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChwFlV7KnhSAckTaAAkNAX3RQ58060.jpg', '蔚来ES8', '中大型suv', '60.1万', '56.2万', 66, '2022-06-06 11:39:14', '2022-06-06 11:39:14');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533654934464057345, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChxkmmGNGdmAFz1HADKaEY1bIG0160.jpg', '魏牌玛奇朵DHT-PHEV', '紧凑型suv', '18.6万', '18.1万', 465, '2022-06-06 11:40:05', '2022-06-06 11:40:05');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533655135312498689, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChwFk2Hv_DaAUGzmABpBJV7Ai1g730.jpg', '沃尔沃S90新能源', '中大型车', '58.3万', '49.9万', 666, '2022-06-06 11:40:53', '2022-06-06 11:40:53');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533655313549447170, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChxkqWIU9z6AaGWOABsmOYhAYfY279.jpg', '沃尔沃XC60新能源', '中型suv', '60.39万', '50.29万', 666, '2022-06-06 11:41:35', '2022-06-06 11:41:35');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533655481829117953, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChtliGJyNBOAG7cXAB28tlQ7-fM053.jpg', '五菱宏光MINIEV', '微型车', '5.4万', '5.2万', 656, '2022-06-06 11:42:15', '2022-06-06 11:42:15');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533655643716669441, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChcCQF2OEC-AGn7GAAbttwkD42E382.jpg', '五菱宏光PLUS', '紧凑型MPV', '8.6万', '6.6万', 999, '2022-06-06 11:42:54', '2022-06-06 11:42:54');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533655875393245185, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChxknGJQy3-AAsa1AA3PKNIEfUA380.jpg', '五十铃mu-X牧游侠', '中型SUV', '26.6万', '19.9万', 530, '2022-06-06 11:43:49', '2022-06-06 11:43:49');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533656047389069313, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChwFlGI8L7yAQDgnAC7cMOlSCoE961.jpg', '五十铃锐迈', '皮卡', '15.8万', '13.2万', 666, '2022-06-06 11:44:30', '2022-06-06 11:44:30');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533656289090031617, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChsEmF-7VQiAUWoGAB31eJCeecI390.jpg', '现代帕里斯帝', '中大型SUV', '32.98万', '30.98万', 200, '2022-06-06 11:45:28', '2022-06-06 11:45:28');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533656445411741697, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChsEnl5TN0KAfjaeAA3wedIUTUY280.jpg', '现代菲斯塔纯电动', '紧凑型车', '19.88万', '17.36万', 620, '2022-06-06 11:46:05', '2022-06-06 11:46:05');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533656620863672322, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChsEf17D9ESAQGq-AAkMgILqgCI833.jpg', '小鹏p7', '中型车', '42.2万', '39.6万', 30, '2022-06-06 11:46:47', '2022-06-06 11:46:47');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533656850745085953, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChwFkGGA7UmAbPRpADFEoMOw7CY359.jpg', '雪佛兰开拓者', '中大型SUV', '31.8万', '27.6万', 55, '2022-06-06 11:47:42', '2022-06-06 11:47:42');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533657069322850305, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChxkqWJBKMyAHthCABxBDrjUFyQ484.jpg', '雪佛兰畅巡', '紧凑型车', '17.5万', '17.2万', 1234, '2022-06-06 11:48:34', '2022-06-06 11:48:34');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533657266597744642, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChxknGJZAOOAdf5QACCcM2RbGo0068.jpg', '雪铁龙C6', '中型车', '24.2万', '21.8万', 520, '2022-06-06 11:49:21', '2022-06-06 11:49:21');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533657469996322818, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChwFjmCvS-qARlWWAA7k_iHeN7Q547.jpg', '雅升V-Class', '中大型MPV', '156.3万', '155.1万', 20, '2022-06-06 11:50:09', '2022-06-06 11:50:09');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533657806211731458, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChxkjmF4FWaAMeEvABpFfsnhmcY852.jpg', '野马博骏', '小型suv', '12.8万', '7.8万', 666, '2022-06-06 11:51:30', '2022-06-06 11:51:30');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533657979994329090, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChcCL1r6QgCASsHfAAcx2ujwZ6c552.jpg', '一汽蓝舰H6', '皮卡', '12.6万', '11.7万', 664, '2022-06-06 11:52:11', '2022-06-06 11:52:11');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533658191378862082, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__ChwFkmG7c1mAGi4bAAr6_ckeaOU935.jpg', '英菲尼迪QX60', '中大型SUV', '58.5万', '51.5万', 60, '2022-06-06 11:53:01', '2022-06-06 11:53:01');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533658475907862530, 'http://localhost:8080/cars/120x90_0_q95_autohomecar__wKjByFfiVPKAUEmSAAmcp2ff8J4807.jpg', '中华H530', '紧凑型车', '12.6万', '9.9万', 550, '2022-06-06 11:54:09', '2022-06-06 11:54:09');
INSERT INTO sporty.car (id, img, name, type, price, sale_price, repertory, create_time, update_time) VALUES (1533658707727044610, 'http://localhost:8080/cars/zt.jpg', '众泰Z200HB', '小型车', '7.55万', '5.66万', 661, '2022-06-06 11:55:05', '2022-06-06 11:55:05');



-- ----------------------------
-- Table structure for car_store
-- ----------------------------
DROP TABLE IF EXISTS `car_store`;
CREATE TABLE `car_store`  (
      `id` bigint(20) NOT NULL COMMENT '主键',
      `img` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
      `name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '4S店名称',
      `phone` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系电话',
      `address` varchar(220) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
      `focus` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '关注量',
      `create_time` datetime(0) NOT NULL COMMENT '创建时间',
      `update_time` datetime(0) NOT NULL COMMENT '更新时间',
      PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

INSERT INTO `car_store` VALUES (1531913671796604930, 'http://localhost:8080/files/yantafendian.png', '邮电大学雁塔校区分店', '14343535366', '陕西省西安市雁塔区邮电大学雁塔校区', '278881', '2022-06-01 16:20:56', '2022-06-01 16:25:14');
INSERT INTO `car_store` VALUES (1531913693355327489, 'http://localhost:8080/files/dongyoufendian.png', '邮电大学长安校区分店', '18881818181', '陕西省西安市长安区西安邮电大学东区4s店', '197574', '2022-06-01 16:21:01', '2022-06-01 16:24:23');
INSERT INTO sporty.car_store (id, img, name, phone, address, focus, create_time, update_time) VALUES (1532201878090182658, 'http://localhost:8080/files/richan.png', '电子科技大学长安校区', '15129072143', '西安电子科技大学长安校区4s店', '0', '2022-06-02 11:26:09', '2022-06-02 11:26:09');
INSERT INTO sporty.car_store (id, img, name, phone, address, focus, create_time, update_time) VALUES (1532202088828792834, 'http://localhost:8080/files/yiqi.png', '西安钟楼一汽', '15129072143', '西安市钟楼东大街', '0', '2022-06-02 11:27:00', '2022-06-02 11:27:00');
INSERT INTO sporty.car_store (id, img, name, phone, address, focus, create_time, update_time) VALUES (1532202420606627842, 'http://localhost:8080/files/yingfei.png', '大唐西市英菲尼迪4ss', '15129072143', '西安市莲湖区大唐西市', '0', '2022-06-02 11:28:19', '2022-06-02 11:28:19');
INSERT INTO sporty.car_store (id, img, name, phone, address, focus, create_time, update_time) VALUES (1532202667999260673, 'http://localhost:8080/files/wuling.png', '未央区大融城店', '15129072133', '西安市未央区凤城十路大融城', '0', '2022-06-02 11:29:18', '2022-06-02 11:29:18');
INSERT INTO sporty.car_store (id, img, name, phone, address, focus, create_time, update_time) VALUES (1532202929560252417, 'http://localhost:8080/files/xiandai.png', '秦岭野生动物园分店', '13379033892', '西安市长安区滦镇秦岭野生动物园', '0', '2022-06-02 11:30:20', '2022-06-02 11:30:20');
INSERT INTO sporty.car_store (id, img, name, phone, address, focus, create_time, update_time) VALUES (1532203170116169729, 'http://localhost:8080/files/zhonghua.jpg', '西安大悦城分店', '13379033892', '西安市雁塔区大雁塔街道大悦城', '0', '2022-06-02 11:31:17', '2022-06-02 11:31:17');
INSERT INTO sporty.car_store (id, img, name, phone, address, focus, create_time, update_time) VALUES (1532203328782495746, 'http://localhost:8080/files/tanke.png', '西安交通大学分店', '13379033892', '西安市碑林区兴庆路西安交通大学分店', '0', '2022-06-02 11:31:55', '2022-06-02 11:31:55');
INSERT INTO sporty.car_store (id, img, name, phone, address, focus, create_time, update_time) VALUES (1532203651949424641, 'http://localhost:8080/files/weima.png', '西安市临潼区分店', '13379033892', '西安市临潼区兵马俑', '0', '2022-06-02 11:33:12', '2022-06-02 11:33:12');


-- ----------------------------
-- Table structure for car_blog
-- ----------------------------
DROP TABLE IF EXISTS `car_blog`;
CREATE TABLE `car_blog`  (
     `id` bigint(20) NOT NULL COMMENT '主键',
     `img` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '封面',
     `name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章名称',
     `author` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章作者',
     `car` varchar(220) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章车辆',
     `views` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '浏览量',
     `create_time` datetime(0) NOT NULL COMMENT '创建时间',
     `update_time` datetime(0) NOT NULL COMMENT '更新时间',
     PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for refit
-- ----------------------------
DROP TABLE IF EXISTS `refit`;
CREATE TABLE `refit`  (
    `id` bigint(20) NOT NULL COMMENT '主键',
    `img` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
    `name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '改件名',
    `type` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '改件类型',
    `price` Varchar(120) NOT NULL COMMENT '定价',
    `sale_price` Varchar(120) NOT NULL COMMENT '售价',
    `repertory` int(30) NULL DEFAULT NULL COMMENT '库存',
    `create_time` datetime(0) NOT NULL COMMENT '创建时间',
    `update_time` datetime(0) NOT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for refit_brand
-- ----------------------------
DROP TABLE IF EXISTS `refit_brand`;
CREATE TABLE `refit_brand`  (
    `id` bigint(20) NOT NULL COMMENT '主键',
    `img` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
    `name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '改件品牌',
    `type` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '改件类型',
    `country` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '改件国别',
    `intro` varchar(1200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '品牌介绍',
    `img1` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '示例图片',
    `create_time` datetime(0) NOT NULL COMMENT '创建时间',
    `update_time` datetime(0) NOT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;


INSERT INTO sporty.refit_brand (id, img, name, type, country, intro, img1, create_time, update_time) VALUES (1533620593457381377, 'http://localhost:8080/refits/B18.jpg', 'BBS', '精品轮毂', '德国、日本', 'BBS是世界著名的汽车轮毂制造商，创建于1970年。核心业务：制造及开发优质轻质合金轮毂；是宝马、奥迪、保时捷、大众、奔驰、路虎、美洲豹、沃尔沃、标致-雪铁龙、雷诺等世界著名汽车品牌的原配供应商；更是法拉利和玛莎拉蒂跑车的独家轮毂供应商。', 'http://localhost:8080/refits/2014530142539486.jpg', '2022-06-06 09:23:37', '2022-06-06 09:23:37');
INSERT INTO sporty.refit_brand (id, img, name, type, country, intro, img1, create_time, update_time) VALUES (1533622138416676866, 'http://localhost:8080/refits/B2.jpg', 'OZ', '精品轮毂', '意大利', 'OZ轮毂是来自意大利的轮毂大厂。作为世界级的轮毂厂商,OZ的轮毂深受改装爱好者喜爱,他们认为每个轮毂都是由对汽车的热爱而造就出来。在近40年里,O.Z早已为汽车界的传奇,是赛车运动中最具代表性的名字。作为行业的领导者之一,他们有着悠久的企业文化与优秀的制作工艺,使之成为欧洲乃至世界的轮毂领头羊。', 'http://localhost:8080/refits/20180822164729747.jpg', '2022-06-06 09:29:46', '2022-06-06 09:29:46');
INSERT INTO sporty.refit_brand (id, img, name, type, country, intro, img1, create_time, update_time) VALUES (1533624535897620482, 'http://localhost:8080/refits/B4.jpg', 'WORK', '精品轮毂', '日本', 'WORK是日本著名铝合金轮毂品牌，创立于1977年，至今已有几十年的历史，是目前全球最大的轮毂制造商之一。拥有世界领先的产品研发技术和生产工艺，无论是工艺、设计还是质量都在各品牌轮毂中出类拔萃。其轮毂款式种类繁多（共有21个系列 74个款式），颜色多样化，满足了广大客户的需求，并能够根据客户的要求量身定做各种精致轮毂；更值得一提的是该品牌提供的轮毂数据灵活多变，适应目前市场上大部分车系。', 'http://localhost:8080/refits/201458161436965.jpg', '2022-06-06 09:39:17', '2022-06-06 09:39:17');
INSERT INTO sporty.refit_brand (id, img, name, type, country, intro, img1, create_time, update_time) VALUES (1533635400025784321, 'http://localhost:8080/refits/B11.jpg', 'RAYS', '精品轮毂', '日本', 'RAYS是一个汽车改装轮圈产品的品牌，来自日本创立于1973年，而真正开始研发和生产轮圈是在1981年，并在同一年成立了汽车赛事运动部门，主要用于参加各级别赛车比赛。', 'http://localhost:8080/refits/20201222092851068.JPG', '2022-06-06 10:22:28', '2022-06-06 10:22:28');
INSERT INTO sporty.refit_brand (id, img, name, type, country, intro, img1, create_time, update_time) VALUES (1533635936607289346, 'http://localhost:8080/refits/B15.jpg', 'VOSSEN', '精品轮毂', '美国', 'VOSSEN是拥有超过十年汽车调教经验的轮毂品牌,VOSSEN的19到22寸的产品及宽度最大可达到11的设定,是专为保时捷、奔驰、宝马、奥迪和路虎等高端车型的改装升级所设计。外观流畅的线条、不锈钢宽边的配置和金属色彩的搭配,赋予所有高端车另一种雀跃的灵魂。另外,更重要的是,世界一流的工艺提供了100%的质量保证,为您的爱车提供安全、又时尚的汽车升级体验。VOSSEN绝对是是追求奢华动感的高级车主一个良好选择。', 'http://localhost:8080/refits/20201130165736006.JPG', '2022-06-06 10:24:36', '2022-06-06 10:24:36');
INSERT INTO sporty.refit_brand (id, img, name, type, country, intro, img1, create_time, update_time) VALUES (1533636302413512705, 'http://localhost:8080/refits/B16.jpg', 'ENKEI', '精品轮毂', '日本', 'ENKEI为日本的汽车轮毂生产商,  ENKEI轮毂是有着很长历史并一直得到大众认可的轮毂品牌，前后为F1赛事提供多年轮毂，并成为三菱汽车的原配轮毂，过硬的品质,独特有个性的轮毂设计,在轮毂品质上几乎无可挑剔。', 'http://localhost:8080/refits/20200328143914860.jpg', '2022-06-06 10:26:03', '2022-06-06 10:26:03');
INSERT INTO sporty.refit_brand (id, img, name, type, country, intro, img1, create_time, update_time) VALUES (1533636619402231810, 'http://localhost:8080/refits/B17.jpg', 'HRE', '精品轮毂', '美国', 'HRE创立于1978年,在其34年的发展过程中一直秉承着为世界上最好的车制造最出色的轮圈这一行为准则。HRE所有轮圈均采用高级锻造工艺,而且每款轮圈都能达到世界主流的认证标准(德国TUV、日本JWL等),此外HRE所有轮圈均接受个性化定制,其中包括轮圈尺寸和宽度、ET值、孔距、中心孔大小以及外观颜色等,客户可以根据自己的需求向厂家下发订单。', 'http://localhost:8080/refits/20220321121737184.jpg', '2022-06-06 10:27:18', '2022-06-06 10:27:18');
INSERT INTO sporty.refit_brand (id, img, name, type, country, intro, img1, create_time, update_time) VALUES (1533641313293975554, 'http://localhost:8080/refits/B20.jpg', 'SSR', '精品轮毂', '日本', 'SSR是一个汽车轮毂产品的改装品牌,在1971年生产出了第一个3片式轮圈,并在1973年制订了铝合金轮圈的强度标准“JWL”(后被日本政府定为认证轮圈的标准),它所生产的每款轮圈都要经过这一标准的认证,确保其生产的每款产品真正具有可靠性和耐用性。 SSR做为以制造运动轮圈为主营业务的厂商,积极参加各级别赛事,在1991年获得全日本房车大家赛的A组冠军,2003年成为Super GT300赛车供应轮圈,2004年又成为了Super GT500的轮圈供应商。', 'http://localhost:8080/refits/src=http___img.wanchezhijia.com_.webp', '2022-06-06 10:45:57', '2022-06-06 10:45:57');
INSERT INTO sporty.refit_brand (id, img, name, type, country, intro, img1, create_time, update_time) VALUES (1533642207972573185, 'http://localhost:8080/refits/B38.jpg', '3SDM', '精品轮毂', '英国', '3SDM轮毂公司是一家新兴汽车供应商,坐落于英国南部。它不是一家传统的车轮公司。创新是3SDM一直所追求的,不遵守规则和指南,不追随趋势,只创造高质量和有趣的轮毂产品。在今年3月30日-4月1日的GT Show改装展上,上海联锐将携英国3SDM品牌亮相,低趴党一定要来看哦。', 'http://localhost:8080/refits/ChcCQ1sDdQiAZZtOAAFnpyUzVmw036.jpg', '2022-06-06 10:49:31', '2022-06-06 10:49:31');
INSERT INTO sporty.refit_brand (id, img, name, type, country, intro, img1, create_time, update_time) VALUES (1533647483371012097, 'http://localhost:8080/refits/B1.jpg', 'Brembo', '刹车系统', '意大利', '布雷博(BREMBO)公司的高级刹车系统 意大利公司Brembo是一家世界领先的,从事高性能制动器系统和部件的工程设计、开发和制造的厂商。Brembo作为行业内的研发和创新力量受到尊重,但在制动器制造领域它也受到了同样的尊重。', 'http://localhost:8080/refits/20191223174140570.JPG', '2022-06-06 11:10:28', '2022-06-06 11:10:28');
INSERT INTO sporty.refit_brand (id, img, name, type, country, intro, img1, create_time, update_time) VALUES (1533649119908741122, 'http://localhost:8080/refits/20220606-11-14-B2.jpg', 'AP Racing', '刹车系统', '英国', 'AP RACING成立近50年,AP刹车系统已是当今最知名的改装刹车品生产商之一。而竞技比赛是刹车系统最好的测试标准与检验方法,AP刹车产品与知名的汽车运动竞赛多年来一直紧密合作,这些都是为了能创造,更多高性能道的摩擦产品让车辆制动与摩擦驱动科技提升到更好的水平。这些努力都是一直让AP Racing能屹立在改装刹车领域的主要因素。', 'http://localhost:8080/refits/20180529180022634.jpg', '2022-06-06 11:16:59', '2022-06-06 11:16:59');
INSERT INTO sporty.refit_brand (id, img, name, type, country, intro, img1, create_time, update_time) VALUES (1533649878306013185, 'http://localhost:8080/refits/20220606-11-14-B3.jpg', 'Nashin', '刹车系统', '中国台湾', 'NASHIN它是台湾的一个品牌，创始人Tom Tseng是个土生土长的台湾人。在1994年的时候，当时一般汽所搭配的刹系统法满足很多主日常和赛赛事上的需求，仅能仰赖国外品牌刹来提升， 而国外刹车的价格又居高不下，所以TomTseng萌生了自己来做卡钳的想法。', 'http://localhost:8080/refits/20210917171409099.JPG', '2022-06-06 11:19:59', '2022-06-06 11:19:59');
INSERT INTO sporty.refit_brand (id, img, name, type, country, intro, img1, create_time, update_time) VALUES (1533651289165021185, 'http://localhost:8080/refits/20220606-11-14-B7.jpg', 'TEI', '刹车系统', '德国', 'TEI racing高性能刹车产品，中国精造，对应的车型也相当广泛，擅长于开发一体卡钳、锻造卡钳、制动钢喉、定制桥码、高性能刹车盘/刹车片以及陶瓷刹车等产品。从其产品的做工与性能方面，已经获得了许多车友的认可，同时良好的口碑也让它成为了玩车之人首选的制动升级改装品牌之一', 'http://localhost:8080/refits/20210520170826127.jpg', '2022-06-06 11:25:36', '2022-06-06 11:25:36');
INSERT INTO sporty.refit_brand (id, img, name, type, country, intro, img1, create_time, update_time) VALUES (1533651927479369730, 'http://localhost:8080/refits/20220606-11-14-B16.jpg', 'INSPEED', '刹车系统', '国产', 'inspeed硬速科技是一站式刹车系统方案提供商,致力于为消费者提供更专业、更安全、更匹配的刹车系统和升级服务。INSPEED硬速把“硬核品质”作为品牌口号,产品定位是自主硬核精品,优质国货。', 'http://localhost:8080/refits/7f9d91d7.jpeg', '2022-06-06 11:28:08', '2022-06-06 11:31:37');
INSERT INTO sporty.refit_brand (id, img, name, type, country, intro, img1, create_time, update_time) VALUES (1533652781812957185, 'http://localhost:8080/refits/20220606-11-14-B17.jpg', 'MOTVE', '刹车系统', '国产', 'MOTVE官方一直不断的更新MT6街道刹车皮的配方,力求就是给大家街道使用时,提供更稳定,噪音更低的刹车皮。', 'http://localhost:8080/refits/src=http___ci.xiaohongshu.com_7e7d7.webp', '2022-06-06 11:31:32', '2022-06-06 11:31:32');

INSERT INTO sporty.refit_brand (id, img, name, type, country, intro, img1, create_time, update_time) VALUES (1533661357348573186, 'http://localhost:8080/refits/20220606-11-15-B1.jpg', '台湾BC', '避震悬挂', '中国台湾', '畅销全球，成立于1999年的台湾品牌。', 'http://localhost:8080/refits/123.png', '2022-06-06 12:05:36', '2022-06-06 12:05:36');
INSERT INTO sporty.refit_brand (id, img, name, type, country, intro, img1, create_time, update_time) VALUES (1533661948175011842, 'http://localhost:8080/refits/20220606-11-15-B2.jpg', '德国BILSTEIN', '避震悬挂', '德国', 'Bilstein公司成立于1873年,是目前是全世界最著名的避震器厂家之一，Bilstein旗下产品区分为B2、B4、B6、B8、B10、B12、B14、B16 等系列， 除了B2采用低成本复筒式低压气体设计，以及B4采用单筒低压气体设计外，其余产品皆为单筒高压油气分离设计。', 'http://localhost:8080/refits/20180730104623790.jpg', '2022-06-06 12:07:57', '2022-06-06 12:07:57');
INSERT INTO sporty.refit_brand (id, img, name, type, country, intro, img1, create_time, update_time) VALUES (1533662362702270466, 'http://localhost:8080/refits/20220606-11-15-B3.jpg', '日本TEIN（天御）', '避震悬挂', '日本', '在全国大赛的赛场上 [1]  藤本吉郎与 [1]  市野 谘很快意识到还没有一款避震器性能可以满足二人对赛车操控性能的需求，由于种种原因，首次参加全国大赛时二人的赛车所使用的避震器都是用七零八落的零件拼凑而成，并不是专业拉力赛车用的避震器，性能的极限十分有限。全国拉力赛上的惨痛经历并没有让两位车手失去信心，二人再一次一致认为，既然世界上没有能够满足我们赛车性能的避震产品，那么我们就自己生产制造价格适中，性能出众的专业级避震产品。二人为了爱好辞掉了自己的工作，并开办公司署名天御，也就是当今的TEIN。', 'http://localhost:8080/refits/20210906115753818.JPG', '2022-06-06 12:09:36', '2022-06-06 12:09:36');
INSERT INTO sporty.refit_brand (id, img, name, type, country, intro, img1, create_time, update_time) VALUES (1533662699089645569, 'http://localhost:8080/refits/20220606-11-15-B4.jpg', '日本KYB工业株式会社', '避震悬挂', '日本', '日本KYB工业株式会社始创于1919年，主要从事各类汽车减震器、液压设备和新产品开发。 [1] 2018年10月16日，日本国土交通省报道日本KYB存在造假事件。', 'http://localhost:8080/refits/20191023114446639.JPG', '2022-06-06 12:10:56', '2022-06-06 12:10:56');
INSERT INTO sporty.refit_brand (id, img, name, type, country, intro, img1, create_time, update_time) VALUES (1533663223314731009, 'http://localhost:8080/refits/20220606-11-15-B5.jpg', '德国艾巴赫EIBACH', '避震悬挂', '德国', '艾巴赫产品用途的范围极其广泛，函盖了所有需要可靠的弹簧技术的领域。从高科技的工业用途一直到汽车市场。在过去的七十年当中，艾巴赫全力追求一个目标：制造世界上最好的悬挂组件。这种追求的激情可以归纳为四个字：志在必胜！', 'http://localhost:8080/refits/20180608132550586.jpg', '2022-06-06 12:13:01', '2022-06-06 12:13:01');
INSERT INTO sporty.refit_brand (id, img, name, type, country, intro, img1, create_time, update_time) VALUES (1533663792012021762, 'http://localhost:8080/refits/20220606-11-15-B6.jpg', 'KONI', '避震悬挂', '荷兰', 'KONI是世界最大的避震器生产厂商之KONI由A. de Koning于1857年在荷兰Oud-Beijerland成立。该业务并非始于制造减震器，而是始于制造马匹的皮革设备。就在第二次世界大战之前，该公司开始从事减震器的研究。这些是摩擦型减震器。第二次世界大战后，开始生产伸缩式减震器。', 'http://localhost:8080/refits/20210111170509610.JPG', '2022-06-06 12:15:17', '2022-06-06 12:15:17');


-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
     `id` bigint(30) NOT NULL COMMENT '主键',
     `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像',
     `name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
     `phone` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
     `id_card` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci default null COMMENT '身份证号',
     `email` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
     `password` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
     `create_time` datetime(0) default NULL COMMENT '创建时间',
     `update_time` datetime(0) default NULL COMMENT '更新时间',
     PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

INSERT INTO sporty.user (id, img, name, phone, id_card, email, password, create_time, update_time) VALUES (1532212175635058690, 'http://localhost:8080/files/touxiang_xu.jpg', '徐卓龙', '17764753450', '6161627373848432', '1299605102@qq.com', 'ee7ee7d96d79d0fb40f9f5486f7bf6f6', '2022-06-02 12:07:04', '2022-06-02 12:07:24');
-- ----------------------------
-- Records of customer
-- ----------------------------


-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
     `id` bigint(20) NOT NULL COMMENT '主键',
     `role` int(10) NOT NULL COMMENT '经理：1   、  员工：0',
     `name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
     `password` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
     `id_card` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证',
     `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
     `sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
     `salary` decimal(10, 2) NULL DEFAULT NULL COMMENT '薪水',
     `entry_time` datetime(0) NULL DEFAULT NULL COMMENT '入职时间',
     `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工状态   1：在职、  0：停职',
     PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, 1, 'admain', 'admian', '111111111111111111', '11111111111', '男', 99999.00, '2022-05-30 00:00:00', '1');


-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
      `id` bigint(20) NOT NULL COMMENT '主键',
      `customer_id` int(20) NOT NULL COMMENT '用户id',
      `total_price` decimal(30, 0) NOT NULL COMMENT '总价',
      `create_time` datetime(0) NOT NULL COMMENT '创建时间',
      `pay_time` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
      `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
      PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for order_details
-- ----------------------------
DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details`  (
    `id` bigint(20) NOT NULL COMMENT '主键',
    `order_id` int(20) NOT NULL COMMENT '订单id',
    `car_id` int(20) NOT NULL COMMENT '汽车id',
    `car_number` int(20) NULL DEFAULT NULL COMMENT '数量',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_details
-- ----------------------------


-- ----------------------------
-- Table structure for series
-- ----------------------------
DROP TABLE IF EXISTS `series`;
CREATE TABLE `series`  (
    `id` bigint(20) NOT NULL COMMENT '主键',
    `series_id` int(20) NOT NULL COMMENT '系列id',
    `series_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系列名称',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of series
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
/*建立改装案例表*/
DROP TABLE IF EXISTS `refit_case`;
CREATE TABLE `refit_case`  (
    `id` bigint(20) NOT NULL COMMENT '主键',
    `title` varchar(64) DEFAULT NULL COMMENT '标题',
    `body` text DEFAULT NULL COMMENT '内容',
    `img` varchar(120) NOT NULL COMMENT '图片',
    `create_time` datetime(0) NOT NULL COMMENT '创建时间',
    `view_counts` int(11) DEFAULT NULL COMMENT '浏览数量',
    `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;
