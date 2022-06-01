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
    `id` int(30) NOT NULL AUTO_INCREMENT COMMENT '主键',
    `logo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车标',
    `chinese_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '中文名',
    `english_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '英文名',
    `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '品牌国别',
    `intro` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '品牌介绍',
    `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
    `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
                          PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brand
INSERT INTO `brand` VALUES (1, 1, '红旗', 'Hong Qi', '中国', '红旗品牌是中国自主的高端品牌，成立于1958年5月12日，由一汽集团直接运营。红旗牌轿车自诞生以来就成为国家领导人和国家重大活动的国事用车。在六、七十年代，红旗轿车成为中国汽车工业的一面旗帜。改革开放之后，红旗在继续承担“国车”重任的同时，开始不断向市场化、商业化的方向冲击。
');
INSERT INTO `brand` VALUES (2, 2, '吉利', 'GEELY', '中国', '吉利汽车集团以“自主突破创新，融合全球智慧，掌握核心技术”为研发理念，实施“产品平台化”、“安全第一”、“能源多元化”、“智能化技术”战略。
');
INSERT INTO `brand` VALUES (3, 1, '比亚迪', 'BYD', '中国', '比亚迪是自主品牌中最成功的汽车品牌之一，代表车型包括F0、F3、F3-R两厢、F6、S6、M6等，及王朝系列秦、汉、唐、宋、元，如果算上已停售的车型系列，比亚迪总共发布过39款车型， 产品线非常丰富。
');
INSERT INTO `brand` VALUES (4, 1, '长城', 'Great Wall', '中国', '长城汽车主要的系列车型有风骏系列、长城炮、H1、H2、H4、H6、H8、H9、F7、M6等系列，风骏系列作为长城汽车股份有限公司推出的经典力作，连续14年全国销量第一，市场保有量70万，出口并热销100个国家和地区，连续10年中国汽车出口额第一。风骏皮卡外形与国际接轨，威猛大气，做工精细，线条饱满，特立独行，是引领皮卡发展的时尚先锋；舒适丰富的配置，更是全面提升了驾乘者的感受，是皮卡行业的绝对标杆。
');
INSERT INTO `brand` VALUES (5, 1, '广汽传祺', 'Trumpchi', '中国', '广汽传祺是广汽集团为提升核心竞争力，实现可持续发展而打造的国产品牌。广汽传祺在技术、配置、品质各个方面都具备了与合资品牌及同级别进口品牌相抗衡的实力，作为自主品牌的先锋，继续冲击中高端市场。广汽传祺已在科威特、阿联酋、智利、柬埔寨、尼日利亚等14个国家布局了销售和服务渠道营销网络。坚持以"为亲人造好车 让世界充满爱"的品牌理念，整合广汽集团资源与经验，坚持自主创新，致力于开发适合国人驾驶习惯与道路特点的车型。 2019年12月，广汽传祺入选2019中国品牌强国盛典榜样100品牌。
');
INSERT INTO `brand` VALUES (6, 1, '哈佛', 'HAVAL', '中国', '哈弗是长城汽车旗下子品牌，成立于2013年3月29日，以SUV车型为主的哈弗品牌与长城品牌并行运营，使用独立的标识，独立的产品研发、生产、服务等体系，主营SUV生产及销售业务 。旗下包含H系、M系、F系三个系列。在长城品牌SUV的销量，哈弗占大部分比例。截止2019年9月，旗下主打车型哈弗H6取得累计九十多个月SUV销量第一成绩。哈弗作为长城赛弗的继任者，在长城SUV产品当中起到了衔接作用。
');
INSERT INTO `brand` VALUES (7, 1, '奇瑞', 'Chery Automobile', '中国', '奇瑞汽车股份有限公司，是一家从事汽车生产的国有控股企业，1997年1月8日注册成立，总部位于安徽省芜湖市。公司产品覆盖乘用车、商用车、微型车等领域，奇瑞汽车9年蝉联中国自主品牌销量冠军，成为中国自主品牌中的代表。
');
INSERT INTO `brand` VALUES (8, 1, '荣威', 'Roewe', '中国', '荣威(ROEWE)是上海汽车工业(集团)总公司旗下的一款汽车品牌，于2006年10月推出。该品牌下的汽车技术来源于上海汽车之前收购的罗孚，但上海汽车并未收购"罗孚"品牌。2006年10月12日，上海汽车(集团)股份有限公司(以下简称"上海汽车股份")正式对外宣布，其自主品牌定名为"荣威(ROEWE)"，取意"创新殊荣、威仪四海"。荣威的品牌在4年时间里面发展迅速，其产品已经覆盖中级车与中高级车市场，"科技化"已经成为荣威汽车的品牌标签。荣威品牌口号为"品位，科技，实现"。
');
INSERT INTO `brand` VALUES (9, 1, '福特', 'Ford', '美国', ' 福特（Ford）是世界著名的汽车品牌，为美国福特汽车公司（Ford Motor Company）旗下的众多品牌之一，公司及品牌名“福特”来源于创始人亨利·福特（Henry Ford）的姓氏。福特汽车公司是世界上最大的汽车生产商之一，成立于1903年，旗下拥有福特（Ford）和林肯（Lincoln）汽车品牌，总部位于密歇根州 迪尔伯恩市（Dearborn）。
');
INSERT INTO `brand` VALUES (10, 1, '丰田', 'TOYOTA', '日本', '丰田汽车作为全世界排行第一位的汽车生产厂商，其旗下生产的经典车型不计其数，比如家喻户晓的有雅力士、卡罗拉、凯美瑞、普拉多、皇冠等等车型。其中亚洲龙是丰田汽车公司于上世纪90年代在美国市场推出的旗舰车型,是丰田旗下最大的轿车车型 ，2018年丰田汽车公司在底特律车展发布全新一代丰田亚洲龙,第五代丰田亚洲龙是基于丰田最新TNGA平台打造 ,提供混动版和燃油版两种车型 。
');
INSERT INTO `brand` VALUES (11, 1, '大众', 'Volkswagen', '德国', '大众汽车（德语：Volkswagen，缩写VW），是一家总部位于德国沃尔夫斯堡的汽车制造公司，为大众集团的核心企业及原始品牌，也是该集团最畅销品牌及全球第一大汽车制造商。在德语中，Volks为人民之意，Wagen为汽车之意，因此，其全名之意即是“人民的汽车”。中国大陆意译为大众汽车、台湾音译为福斯汽車、香港音译为福士汽車、新加坡音译全名为福士伟根。
');
INSERT INTO `brand` VALUES (12, 1, '本田', 'Honda', '日本', '本田公司是世界上最大的摩托车生产厂家，汽车产量和规模也名列世界十大汽车厂家之列。本田于1948年以生产自行车助力发动机起步的Honda，一直以“梦想”作为原动力，以“商品”的形式不断为个人和社会提供更广泛的移动文化。“尊重个性”、重视每一个人个性的观念，使Honda形成了推崇员工创造性、自由豁达的企业文化。现在，Honda已经发展成为从小型通用发动机、踏板摩托车乃至跑车等各个领域都拥有独创技术，并不断研发、生产新产品的企业。
');
INSERT INTO `brand` VALUES (13, 1, '标致', 'Peugeot', '法国', '标致是法国、意大利及美国合资的Stellantis集团（Stellantis N.V.）旗下子品牌，又称宝獅或普狮，是一间历史久远且对汽车工业的发展有重大贡献的汽车厂。旗下的汽车、机车、自行车品牌，总部位于法国索绍。标致汽车主要生产中小型家用房车，但也有生产一些像运动或竞技用跑车、军用越野车或大型豪华轿车之类。其标志为雄性狮子。
');
INSERT INTO `brand` VALUES (14, 1, '宝马', 'Bavarian Motor Work', '德国', '宝马也被译为（巴依尔），是指宝马汽车公司(Bayerische Motoren Werke AG，简称BMW)生产的汽车，正式全称为巴伐利亚机械制造厂股份公司，（德文：Bayerische Motoren Werhe AG），是驰名世界的汽车企业，也被认为是高档汽车生产业的先导。宝马公司创建于1916年，前身公司的名字叫BFW，公司创始人为吉斯坦—奥托（Gustan Otto）。1917年7月，BFW公司开始重组，正式更名为BMW，总部设在德国幕尼黑。它由最初的一家飞机引擎生产厂发展成为今天以高级轿车为主导，并生产享誉全球的飞机引擎、越野车和摩托车的企业集团，名列世界汽车公司前列。
');
INSERT INTO `brand` VALUES (15, 1, '菲亚特', 'FIAT', '意大利', '菲亚特由陆军退役军官乔瓦尼·阿涅利（Giovanni Agnelli）与合伙人买下一家小车辆段Ceirano&C和其原型车于1899年创立，公司名称“FIAT”是“Fabbrica Italiana Automobili Torino”首字母的缩写，意为意大利都灵汽车工厂。菲亚特作为超过百年历史的经典品牌一直被视为完美汽车的缔造者，旗下的著名品牌包括：菲亚特、克莱斯克、Jeep、道奇、玛莎拉蒂、阿尔法罗密欧、蓝旗亚、道奇RAM、SRT、ABARTH、纽荷兰、FIAT PROFESSIONAL等。
');
INSERT INTO `brand` VALUES (16, 1, '奥迪', 'Audi', '德国', '奥迪（德语：Audi AG，英语：Audi）是一家德国跨国汽车制造商，主要从事高性能汽车制造业。总部位于德国巴伐利亚州的英戈尔施塔特，是大众集团旗下的品牌。奥迪与德国品牌宝马和梅赛德斯奔驰一起，是世界上最畅销的豪华汽车品牌之一。
');
INSERT INTO `brand` VALUES (17, 1, '阿斯顿·马丁', 'Aston Martin', '英国', '阿斯顿·马丁·拉宫达有限公司（英语：Aston Martin Lagonda Limited），简称阿斯顿·马丁，是一家英国的豪华跑车及大型旅行车制造商。该公司在1913年以班福德和马丁有限公司（英语：Bamford & Martin Ltd.）由Lionel Martin与Robert Bamford创立。原是英国豪华轿车、跑车生产厂，以生产敞篷旅行车、赛车和限量生产的跑车而闻名世界。虽然带有保守和固执的绅士风格，但阿斯顿马丁的每一种款式却总是久负盛名，毫无过时之感 。其品牌一直是造型别致、精工细作、性能卓越的运动跑车的代名词，它在汽车市场上和车主的心中始终占有特殊的位置。
');
INSERT INTO `brand` VALUES (18, 1, '阿尔法·罗密欧', 'Alfa Romeo', '意大利', '阿尔法·罗密欧(Alfa Romeo)是意大利著名的轿车和跑车制造商，创建于1910年，总部设在米兰。公司原名ALFA(Anonima Lombarda Fabbrica Automobili，伦巴第汽车制造厂)，阿尔法·罗密欧以其强烈的运动气息以及独特外型，在车坛上一直有着其与众不同的定位。开始时，以专门生产运动车和赛车而闻名，这些车由意大利著名设计师设计，有浓烈的意大利风采、优雅的造型和超群的性能，在世界车坛上一直享有很高的声誉。
');
INSERT INTO `brand` VALUES (19, 1, '奔驰', 'Mercedes-Benz', '德国', '梅赛德斯-奔驰（Mercedes-Benz），德国豪华汽车品牌，汽车的发明者，被认为是世界上最成功的高档汽车品牌之一，其完美的技术水平、过硬的质量标准、推陈出新的创新能力，以及一系列经典轿跑车款式令人称道。奔驰三叉星已成为世界上最著名的汽车及品牌标志之一。
');
INSERT INTO `brand` VALUES (20, 1, '别克', 'BUICK', '美国', '别克BUICK品牌始于1900年。在美国密歇根州底特律市，苏格兰人David Dunbar Buick和他的总工程师Walter L.Marr.离开了他们朝夕相处的船机及农机修理行，开始着手制造第一辆试验汽车(当时马车是主要交通工具)。1903年，他们成立了别克BUICK汽车公司。1908年它的产量达到8820辆，居美国第一位，并以别克公司为中心成立了通用汽车公司。别克部是通用汽车公司的第二大部门。它是第一个真正成功的汽车品牌，带动了整个汽车工业水平的进步，并成为其他汽车公司追随的榜样，别克车具有大马力、个性化、实用性和成熟的特点。2008年别克正式开启了“全球平台，欧美科技”全球产品战略，并宣布“心静思远智行千里”的全新品牌主张。
');
INSERT INTO `brand` VALUES (21, 1, '保时捷', 'Porsche', '德国', '保时捷又称波尔舍，前者是香港人粤语的译音，后者是普通话的译音。可能是“保时捷”从字面上看更加贴切，因此，现在的Porsche公司的中文名称一般都称为保时捷公司。保时捷(Porsche)是世界著名的高端汽车企业，以开发、生产和营销豪华跑车和运动型越野车为主，其总部位于德国斯图加特市，由费迪南德·保时捷(Ferdinand Porsche)创办。保时捷一直努力将种种可能性与看似不太可能的东西相组合，而今对于跑车而言，“保时捷”无异于一个全球意义上的代名词。为了践履“造型完美时，性能就会伴随而至”的“纯种跑车”造车工艺精神，费迪南德·保时捷于五十五岁时离开了福斯，自立门户，却因此而造就了跑车的不朽巨人——保时捷
');
INSERT INTO `brand` VALUES (22, 1, '奔腾', 'BESTUNE', '中国', '奔腾品牌创立于2006年5月18日。创始车型奔腾B70作为国内第一款高起点、高品质、高性能的自主品牌中高级轿车，将中国自主乘用车事业拓展到一个新的高度，并由此开启了一汽奔腾自主发展的崭新篇章。2018年10月17日，一汽奔腾发布“新奔腾”品牌发展战略，并正式启用全新设计的奔腾新LOGO“世界之窗”。新奔腾品牌发展战略宣告了奔腾品牌的重生，开启了奔腾新进取时代！
');
INSERT INTO `brand` VALUES (23, 1, '宾利', 'Bentley', '英国', '宾利是世界优质汽车的制造商之一。一直被大家尊称“W.O.”的华特·欧文·宾利先生曾是英国北方铁路公司 (Great Northern Railways) 的一名学徒。随后在第一次世界大战期间，负责设计骆驼式飞机和狙击战斗机的发动机。对速度和性能的热爱，加之能通过赢得比赛实现汽车销售，让W.O.于1919年创建了宾利汽车公司。他的目标十分明确，来自那个简单到让人难以置信的理念：“要造一辆快的车，好的车，同级中最出类拔萃的车”。至今，宾利仍在不断提升其无与伦比的愉悦感和完全纯粹的舒适感。
');
INSERT INTO `brand` VALUES (24, 1, '布加迪', 'Bugatti', '法国', '布加迪是世界著名的老牌运动车品牌，1909年意大利人埃多尔·布加迪（Ettore Bugatti）在法国创建布加迪公司，专门生产运动跑车和高级豪华轿车。布加迪创办人埃托里·布加迪出生于意大利，这个以他的姓氏为名的车厂坐落在Molsheim。布加迪是汽车大奖赛（F1的前身）的常胜军，它们是第一届摩纳哥大奖赛的冠军；布加迪也是利曼24小时耐久赛的常胜军，Jean-Pierre Wimille为其二度夺下冠军而Robert Benoist和Pierre Veyron（日后的Veyron车款就是为了纪念他）也各为布加迪拿下一冠。
');
INSERT INTO `brand` VALUES (25, 1, '长安', 'Changan', '中国', '中国长安汽车集团股份有限公司（英語：China Changan Automobile Group Co., Ltd.），简称中国长安汽车集团、中国长安，是中国兵器装备集团、中国航空工业集团两大世界500强中国中央企业对旗下汽车产业进行战略重组、共同成立的一家特大型企业集团，是中国四大汽车集团之一，成立于2005年12月26日。中国长安现拥有长安汽车、江铃汽车、东安动力3家上市公司。2012年，中国长安以122万辆的自主品牌汽车销量，位列中国汽车企业第一、全球汽车企业第十四，连续七年蝉联中国第一自主品牌。其旗下核心上市公司重庆长安汽车股份有限公司，简称长安汽车、重庆长安，其历史可以追溯至1862年成立的上海洋炮局，经过多次改制后改为现名，1983年进入汽车领域，为中国汽车行业第一阵营、第一自主品牌、第一研发实力企业，现有资产1033亿元人民币，员工8万余人。长安汽车现生产微客、乘用车等产品。
');
INSERT INTO `brand` VALUES (26, 1, '道奇', 'Dodge', '美国', '1914年，道奇兄弟投资建成了美国第一条试车道，开创了汽车公司自己投资建立试车道的先河，为道奇汽车的质量提供了重要保证。同年，道奇兄弟设计出他们的第一辆车，将其戏称为"Old Betsy"，这就是现在道奇的雏形，真正完成了从两个轮子到四个轮子的飞跃。
');
INSERT INTO `brand` VALUES (27, 1, '法拉利', 'Ferrari', '意大利', '法拉利（意大利语：Ferrari）是一家意大利跑车制造商，是世界第二大的跑车厂牌，仅次于保时捷，主要制造一级方程式赛车及高性能跑车。由恩佐·法拉利于意大利摩德纳附近的马拉内罗创立，当时是作为阿尔法·罗密欧的赛车部门分拆而来的阿维奥汽车（意大利语：Auto Avio Costruzioni），主要赞助赛车手及生产赛车，并早于1940年便已制作其首部赛车（阿维奥815，意大利语：Auto Avio Costruzioni 815）。但直至1947年第一辆正式镶嵌法拉利标志的汽车完成，这时它才被大众认定为独立的汽车制造商。法拉利的公路车款经常被视为速度、奢华、性感和财富的象征。
');
INSERT INTO `brand` VALUES (28, 1, '观致', 'QOROS', '中国',  '观致汽车有限公司成立于2007年，当时中国汽车产业正处于“入世”后发展的高峰期，由内需扩大引起了汽车产销量的迅猛增长。观致汽车是一家创自中国、具备行业领先水准的中国汽车公司，汇集国际及中国汽车业高端团队，以卓越品质和精湛制造，为用户带来愉悦安全的驾乘体验。
');
INSERT INTO `brand` VALUES (29, 1, 'GTA', 'GTA', '西班牙', 'Spania GTA是一家位于西班牙巴伦西亚的汽车设计和制造公司。它由现任公司首席执行官Domingo Ochoa创立。他们在内部设计，开发和生产了GTA Spano。
');
INSERT INTO `brand` VALUES (30, 1, '海马', 'FAW Haima Automobile', '中国', '海马汽车股份有限公司（简称海马汽车）创始于1988年，旗下拥有海马汽车有限公司、海马新能源汽车有限公司、一汽海马汽车有限公司等，已形成集研发、生产、销售、服务、物流、金融等为一体的 现代化汽车集团，致力于中国民族汽车工业的发展。2001年至今，已连续17年位列中国民营企业500强、中国制造企业500强。
');
INSERT INTO `brand` VALUES (31, 1, '华泰', 'HUATAI', '中国', '华泰汽车集团是以新能源汽车业务为核心，集整车和动力总成研发、设计、制造、销售以及汽车金融为一体，多元化发展的大型跨国集团。坚持“低碳产业链，全球精品车”的经营理念，华泰汽车以先进动力技术和先进制造技术为基础，已打造形成新能源汽车核心技术、AT自动变速器、清洁汽柴油发动机、乘用车（SUV、轿车、电动车）和商用车的低碳汽车产业链，致力于为全球用户提供节能、环保、动力强劲的精品汽车。
');
INSERT INTO `brand` VALUES (32, 1, '海格', 'HIGER', '中国', '海格汽车主要产品海格新大海狮、欧式商务车、皮卡等三大类产品，海格汽车相对比较独立，其生产基地主要位于江苏省苏州工业园区。
');
INSERT INTO `brand` VALUES (33, 1, '悍马', 'HUMMER', '美国', '悍马是卡车和越野车的品牌，于1992年首次上市，民用悍马具有相同的结构和大多数机械组件，均采用汽车光泽漆完成，增加了乘用车的功能，例如空调，隔音，升级的内饰，立体声系统，木质装饰和便利套件。
');
INSERT INTO `brand` VALUES (34, 1, '捷豹', 'Jaguar', '英国', '捷豹汽车有限公司（英语：Jaguar Cars Limited /ˈdʒæɡjuː.ər/ JAG-ew-ər）是英国的一家豪华汽车生产商，总部起初座落于英格兰考文垂的布朗兰，后迁至考文垂的惠特利。1922年成立之初制造摩托车的挂边车，名为Swallow Sidecar Company，简称SS汽车公司，后来改装汽车生产SS90与SS100车款，SS100有使用美洲豹Jaguar的副车名，但因纳粹党卫军的简称也是SS，所以1945年公司改名为Jaguar。

早在1935年的捷豹SS100就以匹敌之前宾利的名车但价格不足一半，以“穷人的宾利”自居而在竞争上占了优位，而宾利Speed Six便是第一款被厂家自封为超跑的产品，所以第一代超跑杀手就是捷豹ss 100了。而在1992-1994年间生产的XJ 220更是当时世界最快的量产型汽车，也是一般人公认英国第一款超级跑车。

二战后XK120等车在赛车场上的成功帮捷豹建立名声，1960年，捷豹收购戴姆勒汽车，并以此品牌作为XJ车系中最高阶的产品级距。1968年，英国政府发动整合英国汽车工业的计划，捷豹被并入英国汽车集团（即之后的英国礼兰汽车公司）。这个汽车工业整合计划并不成功，礼兰汽车旗下的许多品牌经过多次改组仍未能挽回颓势；但是相对的，拥有自主研发能力与丰富造车经验的捷豹，却仍能以稳定的步伐成长，生产轿车XJ与跑车E-Type后继车车种XJS十分成功。1984年捷豹脱离礼兰汽车独立，但随后在取代XJ系列的XJ40车系改款业务中，当时的董事长伊根爵士坦承评估错误，使得新车叫好不叫座，因品质问题造成经营困扰。于是在全球性的车厂整并风潮中，于1989年由美国福特汽车以40.7亿美元并购，总算解危。

2008年3月26日福特汽车内部因经济情势不佳而改组旗下品牌，又以23亿美元把捷豹连同路虎售予印度塔塔汽车。
');
INSERT INTO `brand` VALUES (35, 1, '吉普', 'Jeep', '美国', '吉普（Jeep）是Stellantis集团旗下的一个汽车品牌、注册商标和全资子公司，和所有克莱斯勒旗下的汽车型号一样，于1998年成为戴姆勒奔驰公司和克莱斯勒公司合并后的戴姆勒克莱斯勒公司的一个下属品牌。由于Jeep汽车优越的越野性能，Jeep几乎已经成为了SUV越野汽车的代名词。于1941年在美国俄亥俄州托莱多诞生。原本称此种车为GP，意即多用途之意，后来由此变成“Jeep”，中文译为吉普或吉普车，由于“Jeep”在该类型汽车中知名度很高，因此吉普已与邦迪、施乐一样，成为了其所属商品类型的代名词。
');
INSERT INTO `brand` VALUES (36, 1, '金杯', 'JINBEI', '中国', '金杯成立于1988年，前身是沈阳金杯客车制造有限公司，公司先后投入巨额资金进行了大规模的技术改造，初步建成了具有国内一流水平的现代化轻型客车生产基地。公司是融生产、经营、科研、开发、教育、房地产和贸易等为一体的大型企业集团，主要从事汽车整车、汽车零部件的设计、加工、制造和销售服务。
');
INSERT INTO `brand` VALUES (37, 1, '江铃', 'JMC', '中国', '江铃汽车股份有限公司(简称“江铃”，英文全称JianglingMotorsCo.,Ltd.，英文缩写JMC)，中国商用车行业最大的企业之一,连续四年位列中国上市公司百强。江铃于二十世纪八十年代中期在中国率先引进国际先进技术制造轻型卡车，成为中国主要的轻型卡车制造商。
');
INSERT INTO `brand` VALUES (38, 1, '凯迪拉克', 'Cadillac', '美国', '凯迪拉克成立于1902年，位于密歇根州的底特律，是全球最受尊敬的豪华汽车制造商之一。凯迪拉克是美国通用汽车公司（General Motors）的子公司，在美国，中国，加拿大和其他34个国家/地区将汽车商业化。凯迪拉克拥有一个多世纪的历史，属于地球上最古老的汽车制造商之一。
');
INSERT INTO `brand` VALUES (39, 1, '科尼塞克', 'Koenigsegg', '瑞典', 'Koenigsegg是一家来自瑞典的超级跑车制造商，1994年由Christian von Koenigsegg创立，致力于生产出世界级的跑车。Koenigsegg一词为“刀锋”的意思，作为略带瑞典皇家色彩的跑车，其标志同瑞典皇家空军相同，主图案为一幽灵造型，因此也有很多车友称它为“幽灵”跑车。作为一家世界级的超级跑车公司，Koenigsegg在中国的第一次亮相是在2005年的上海车展上，当时Koenigsegg公司的工作人员透露，他们将尽快进入中国市场。而2012年，这款猛兽将正式进驻。
');
INSERT INTO `brand` VALUES (40, 1, '领克', 'LYNK&CO', '中国', 'LYNK&CO(领克)是欧洲技术、欧洲设计、全球制造、全球销售的新时代高端品牌，秉持“生而全球，开放互联”的品牌理念，“个性、开放、互联”的品牌价值，具有与生俱来的全球化基因，为全球都市人群打造，它诞生于互联网时代，将互联网思维与传统汽车工业相融合，实现出行方式向个性、开放、互联的趋势变革。
');
INSERT INTO `brand` VALUES (41, 1, '路虎', 'Landrover', '英国', '路虎公司(Land Rover)以四驱车而举世闻名：自创始以来就始终致力于为其驾驶者提供不断完善的四驱车驾驶体验。在四驱车领域中，路虎公司不仅拥有先进的核心技术，而且充满了对四驱车的热情：他是举世公认的权威四驱车革新者。尽管路虎在不断改进产品，但它始终秉承其优良传统就是将公司价值与精益设计完美的结
');
INSERT INTO `brand` VALUES (42, 1, '雷克萨斯', 'Lexus', '日本', '雷克萨斯（日语：レクサス，英语：Lexus），是丰田集团旗下的豪华汽车品牌，于全球市场均有销售。雷克萨斯与丰田集团其他旗下车辆段不同，成立之初即是为制造豪华汽车的车辆段，和讴歌（讴歌）、英菲尼迪（Infiniti）并列为日本三大豪华汽车品牌。
');
INSERT INTO `brand` VALUES (43, 1, '林肯', 'LINCOLN', '美国', '林肯汽车（Lincoln）是福特汽车旗下汽车品牌中的高级品牌，以宽底盘和诸多豪华内装和加长版闻名于世。1917年由亨利·M·利兰（Henry Martyn Leland）创立，1922年后被福特汽车收购。其品牌名称是以美国总统亚伯拉罕·林肯的名字命名。自1939年美国总统富兰克林·罗斯福以来，由于林肯车杰出的性能、高雅的造型和无与伦比的舒适一直被白宫选为总统专车。它最出名的一款车是肯尼迪总统乘用的检阅车。2014年林肯正式进入中国市场。
');
INSERT INTO `brand` VALUES (44, 1, '雷诺', 'Renault', '法国', '雷诺，（Renault S.A.）是一家法国车辆制造商，生产的车辆种类有赛车、小型车、中型车、休旅车、大型车（包含卡车和工程用车及巴士）等。雷诺第一次进入美国市场销售是1950年代及1960年代之间，他们在美国市场确定的品牌发音方式是“Ren-ALT”，而这个发音方式是今日最为广泛接受的。然而雷诺正确的发音是“Rhen-oh”（就如同英国常见的发音方式）。
');
INSERT INTO `brand` VALUES (45, 1, '劳斯莱斯', 'Rolls-Royce', '英国', '劳斯莱斯（Rolls-Royce），英国豪华汽车品牌，1906年成立于英国，公司创始人为Frederick Henry Royce（亨利·莱斯）和Charles Stewart Rolls（查理·劳斯）。Rolls-Royce出产的轿车是顶级汽车的杰出代表，以其豪华而享誉全球，是欧美汽车的主要代表之一。次年推出的Silver Ghost（银魅）轿车，不久便被誉为“世界上最好的汽车”。除了制造汽车，劳斯莱斯还涉足航空发动机制造的领域，也是一家优秀的发动机制造商，空客飞机部分型号用的就是劳斯莱斯的发动机。
');
INSERT INTO `brand` VALUES (46, 1, '兰博基尼', 'Lamborghini', '意大利', '兰博基尼（Automobili Lamborghini S.p.A.）是一家意大利汽车生产商，全球顶级跑车制造商及欧洲奢侈品标志之一，公司坐落于意大利圣亚加塔·波隆尼（Sant·Agata Bolognese），由费鲁吉欧·兰博基尼在1963年创立。兰博基尼早期由于经营不善，于1980年破产；数次易主后，1998年归入奥迪旗下，现为大众集团（Volkswagen Group）旗下品牌之一。兰博基尼的标志是一头充满力量、正向对方攻击的斗牛，与大马力高性能跑车的特性相契合，同时彰显了创始人斗牛般不甘示弱的个性。
');
INSERT INTO `brand` VALUES (47, 1, '铃木', 'Suzuki', '日本', '铃木公司成立于1920年，1952年开始生产摩托车，1955年开始生产汽车，以生产微型汽车为主。通用持有铃木10%的股权。铃木于1984年首次提供技术给中国市场，也是最早进入中国市场的日本汽车公司之一。铃木通过向全世界的客户提供优质产品，并且向使用铃木产品的客户提供优质服务，面向每位客户，以实现与客户建立终生信赖的关系为目标而不懈努力。铃木认为，为每位客户提供“高品质”、“高性能”、“客户使用方便”、“乘坐舒适的汽车”，是铃木的使命。最近几年以来，我们以“Wayoflife”这一新的口号为基准，以为每位客户制造可提供“多彩生活建议”的产品为目标，将“Wayoflife”的精神渗透到铃木的全部产品中，提供给客户。
');
INSERT INTO `brand` VALUES (48, 1, '马自达', 'Mazda Motor Corporation', '日本', '马自达株式会社（日语：マツダ株式会社，英语：Mazda Motor Corporation），简称马自达，是日本第五大汽车制造厂，总部位于广岛县安艺郡府中町，且一度成为全球唯一生产转子引擎市售车的车厂。2015年马自达在全球的年产量（包含乘用车与商用车）为137万5千辆，在全球汽车制造厂中排名第16名，主要销售市场包括亚洲、欧洲、北美洲、大洋洲等地。
');
INSERT INTO `brand` VALUES (49, 1, '名爵', 'Morris Garages', '中国', '名爵，百年英国运动汽车品牌，名爵即MG，全称Morris Garages。名爵为全球汽车行业贡献了太多的经典，43项世界速度纪录的创造，多个行业第一以及前瞻技术的应用，不但印证了传承百年的赛道基因，更推动了世界汽车工业发展。名爵自2007年起收归上汽集团——名列世界500强第52位的中国最大汽车集团。作为中国人掌控的国际品牌，名爵遵循上汽“电动化、智能网联化、共享化、国际化”的新四化战略，以赛道基因、时代基因和感性力设计基因打造产品。
');
INSERT INTO `brand` VALUES (50, 1, '玛莎拉蒂', 'Maserati', '意大利', '1914年12月1日，阿尔菲力玛莎拉蒂公司在意大利博洛尼亚诞生。此后，玛莎拉蒂在跑车文化的发展历程中始终占据举足轻重的地位。一个世纪以来，玛莎拉蒂无论在公路还是赛道上都取得了辉煌成就，也度过了一次次困境。以往的重重挑战，造就了公司坚韧鲜明的品质和个性。在玛莎拉蒂兄弟的努力下，公司的业务不断扩大，公司于1925年更名为Societa Anonima Officine Alfieri Maserati公司，同时公司开始使用三叉戟作为公司标识，这个标识取材于矗立在波洛尼亚Maggiore广场上的海神尼普顿雕像，由Mario Maserati设计。
');


-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
    `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
    `img` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
    `name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车名',
    `type` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆类型',
    `price` decimal(10, 2) NOT NULL COMMENT '定价',
    `sale_price` decimal(10, 2) NOT NULL COMMENT '售价',
    `repertory` int(30) NULL DEFAULT NULL COMMENT '库存',
    `create_time` datetime(0) NOT NULL COMMENT '创建时间',
    `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car
-- ----------------------------


-- ----------------------------
-- Table structure for car_store
-- ----------------------------
DROP TABLE IF EXISTS `car_store`;
CREATE TABLE `car_store`  (
     `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
     `img` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
     `name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '4S店名称',
     `phone` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系电话',
     `address` varchar(220) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
     `focus` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '关注量',
     `create_time` datetime(0) NOT NULL COMMENT '创建时间',
     `update_time` datetime(0) NOT NULL COMMENT '更新时间',
     PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for car_blog
-- ----------------------------
DROP TABLE IF EXISTS `car_blog`;
CREATE TABLE `car_blog`  (
     `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
     `img` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '封面',
     `name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章名称',
     `author` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章作者',
     `car` varchar(220) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章车辆',
     `views` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '浏览量',
     `create_time` datetime(0) NOT NULL COMMENT '创建时间',
     `update_time` datetime(0) NOT NULL COMMENT '更新时间',
     PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(30) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像',
  `name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `phone` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `id_card` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci default null COMMENT '身份证号',
  `email` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  `password` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------



-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, 1, 'admain', 'admian', '111111111111111111', '11111111111', '男', 99999.00, '2022-05-30 00:00:00', '1');


-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `customer_id` int(20) NOT NULL COMMENT '用户id',
  `total_price` decimal(30, 0) NOT NULL COMMENT '总价',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `pay_time` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for order_details
-- ----------------------------
DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_id` int(20) NOT NULL COMMENT '订单id',
  `car_id` int(20) NOT NULL COMMENT '汽车id',
  `car_number` int(20) NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_details
-- ----------------------------


-- ----------------------------
-- Table structure for series
-- ----------------------------
DROP TABLE IF EXISTS `series`;
CREATE TABLE `series`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `series_id` int(20) NOT NULL COMMENT '系列id',
  `series_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系列名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of series
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;

