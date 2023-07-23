/*
 Navicat Premium Data Transfer

 Source Server         : 3513工作站
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : 10.150.168.161:3306
 Source Schema         : shanxi_diet

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 08/05/2023 09:56:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `brief_introduction` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alias_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `english_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `region` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `climate_condition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `scenic_spots` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `area` float(255, 0) NULL DEFAULT NULL,
  `population` float(255, 0) NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`city_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 118 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES (1, '西安', '古称长安，与雅典、开罗、罗马并称世界四大古都，是古丝绸之路起点，是世界上文化内涵最丰富、文化遗存迭压最厚重、古代城池系统保存最完整的历史文化名城，有7000多年文明史、3100多年建城史和1100多年建都史，有“天然历史博物馆”之称。西安地处关中平原中部，是国家明确建设的3个国际化大都市之一、全国9个国家中心城市之一。总面积1.0752万平方千米，辖11个区2县：新城区、碑林区、莲湖区、雁塔区、灞桥区、未央区、阎良区、临潼区、长安区、高陵区、鄠邑区、蓝田县、周至县。', '长安、镐京、大兴、西京', 'Xi’an，Si’an，Chang’an', '关中平原', '温带季风气候', '兵马俑、钟鼓楼、大雁塔、小雁塔、秦岭、大明宫、未央宫', 10108, 1295, '陕西省');
INSERT INTO `city` VALUES (2, '新城区', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (3, '碑林', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (4, '莲湖', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (5, '灞桥', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (6, '未央', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (7, '雁塔', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (8, '阎良', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (9, '临潼', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (10, '长安区', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (11, '蓝田', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (12, '周至', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (13, '户县', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (14, '高陵', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (15, '铜川', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (16, '王益', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (17, '印台', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (18, '耀州', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (19, '宜君', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (20, '宝鸡', '古称陈仓、雍城，誉称“炎帝故里、青铜器之乡”，也是周秦文化发祥之地、青铜器之乡、民间工艺美术之乡。是关中平原城市群重要节点城市、关中——天水经济区副中心城市。总面积1.8117万平方千米，辖4区8县：渭滨区、金台区、陈仓区、凤翔区、岐山县、扶风县、眉县、陇县、千阳县、麟游县、凤县、太白县。', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (21, '渭滨', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (22, '金台', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (23, '陈仓', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (24, '凤翔', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (25, '岐山', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (26, '扶风', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (27, '眉县', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (28, '陇县', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (29, '千阳', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (30, '麟游', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (31, '凤县', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (32, '太白', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (33, '咸阳', '位于八百里秦川腹地，渭水穿南，嵕山亘北，山水俱阳，故称咸阳，是古丝绸之路的第一站，中原地区通往大西北的要冲。有着2350多年的建城史，是中国甲级对外开放城市、国家级历史文化名城。总面积10189.4平方千米，辖3区9县、代管2个县级市：秦都区、杨陵区、渭城区、三原县、泾阳县、乾县、礼泉县、永寿县、长武县、旬邑县、淳化县、武功县、兴平市、彬州市。', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (34, '秦都', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (35, '杨凌', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (36, '渭城', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (37, '三原', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (38, '泾阳', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (39, '乾县', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (40, '礼泉', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (41, '永寿', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (42, '彬县', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (43, '长武', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (44, '旬邑', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (45, '淳化', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (46, '武功', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (47, '兴平', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (48, '渭南', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (49, '临渭', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (50, '华县', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (51, '潼关', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (52, '大荔', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (53, '合阳', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (54, '澄城', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (55, '蒲城', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (56, '白水', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (57, '富平', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (58, '韩城', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (59, '华阴', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (60, '延安', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (61, '宝塔', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (62, '延长', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (63, '延川', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (64, '子长', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (65, '安塞', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (66, '志丹', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (67, '吴起', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (68, '甘泉', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (69, '富县', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (70, '洛川', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (71, '宜川', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (72, '黄龙', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (73, '黄陵', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (74, '汉中', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (75, '汉台', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (76, '南郑', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (77, '城固', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (78, '洋县', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (79, '西乡', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (80, '勉县', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (81, '宁强', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (82, '略阳', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (83, '镇巴', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (84, '留坝', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (85, '佛坪', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (86, '榆林', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (87, '榆阳', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (88, '神木', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (89, '府谷', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (90, '横山', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (91, '靖边', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (92, '定边', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (93, '绥德', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (94, '米脂', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (95, '佳县', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (96, '吴堡', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (97, '清涧', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (98, '子洲', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (99, '安康', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (100, '汉滨', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (101, '汉阴', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (102, '石泉', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (103, '宁陕', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (104, '紫阳', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (105, '岚皋', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (106, '平利', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (107, '镇坪', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (108, '旬阳', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (109, '白河', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (110, '商洛', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (111, '商州', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (112, '洛南', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (113, '丹凤', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (114, '商南', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (115, '山阳县', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (116, '镇安', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `city` VALUES (117, '柞水', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for city2
-- ----------------------------
DROP TABLE IF EXISTS `city2`;
CREATE TABLE `city2`  (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `city_describe` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`city_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city2
-- ----------------------------
INSERT INTO `city2` VALUES (1, '宝鸡市', '宝鸡市古称陈仓、雍城，誉称“炎帝故里、青铜器之乡”，也是周秦文化发祥之地、青铜器之乡、民间工艺美术之乡。是关中平原城市群重要节点城市、关中——天水经济区副中心城市 。总面积1.8117万平方千米，辖4区8县：渭滨区、金台区、陈仓区、凤翔区、岐山县、扶风县、眉县、陇县、千阳县、麟游县、凤县、太白县。');
INSERT INTO `city2` VALUES (2, '咸阳市', '咸阳市位于八百里秦川腹地，渭水穿南，嵕山亘北，山水俱阳，故称咸阳，是古丝绸之路的第一站，中原地区通往大西北的要冲。有着2350多年的建城史，是中国甲级对外开放城市、国家级历史文化名城。总面积10189.4平方千米，辖3区9县、代管2个县级市：秦都区、杨陵区、渭城区、三原县、泾阳县、乾县、礼泉县、永寿县、长武县、旬邑县、淳化县、武功县、兴平市、彬州市。');
INSERT INTO `city2` VALUES (3, '铜川市', '铜川市位于陕西省中部，关中盆地和陕北高原的交接地带，是三国政治家、军事家傅嘏，西晋哲学家、文学家傅玄，唐代史学家令狐德棻、医学家孙思邈、大书法家柳公权，北宋书画家范宽的故里。耀州窑博物馆是中国规模最大的一座古陶瓷遗址专题博物馆。总面积3882平方千米，辖3区1县：王益区、印台区、耀州区、宜君县。');
INSERT INTO `city2` VALUES (4, '渭南市', '渭南市渭南市地处关中平原东部，是字圣仓颉、酒圣杜康、隶书鼻祖程邈和史圣司马迁的故里，是唐朝名将张仁愿、大诗人白居易、宋朝名相寇准的故里。地处中国版图几何中心，“北京时间”从这里的国家授时中心发出，是中国航天测控事业发祥地，神舟系列飞船在这里得到全程遥测 。总面积13030平方千米，辖2区7县，代管2个县级市：临渭区、华州区、潼关县、大荔县、合阳县、澄城县、蒲城县、白水县、富平县、韩城市、华阴市。');
INSERT INTO `city2` VALUES (5, '延安市', '延安市位于陕西省北部，地处黄河中游，黄土高原的中南地区，是天下第一陵——中华民族始祖黄帝的陵寝所在地，是民族圣地、中国革命圣地，国务院首批公布的国家历史文化名城 。总面积3.7万平方千米，代管1个县级市，辖2区10个县：宝塔区、安塞区、延长县、延川县、子长市、志丹县、吴起县、甘泉县、富县、洛川县、宜川县、黄龙县、黄陵县。 ');
INSERT INTO `city2` VALUES (6, '榆林市', '榆林市位于陕西省最北部，素有“九边重镇”之称，是国务院公布的第二批国家历史文化名城 。境内的石峁遗址以“中国文明的前夜”入选2012年十大考古新发现和“世界十大田野考古发现”以及“二十一世纪世界重大考古发现”。总面积43578平方千米，辖2区1县级市9县：榆阳区、横山区、神木市、府谷县、靖边县、定边县、绥德县、米脂县、佳县、吴堡县、清涧县、子洲县。 ');
INSERT INTO `city2` VALUES (7, '汉中市', '汉中市因汉水而得名，是汉帝国的龙兴之地，汉文化的发祥地，全国历史文化名城。早在前400年以前，汉中就已设郡，已有2400多年历史，有“汉家发祥地，中华聚宝盆”之美誉，是丝绸之路的开拓者张骞故里 。总面积2.7万平方千米，辖2区9县：汉台区、南郑区、城固县、洋县、西乡县、勉县、宁强县、略阳县、镇巴县、留坝县、佛坪县。 ');
INSERT INTO `city2` VALUES (8, '安康市', '安康市位于陕西省东南部，北依秦岭，南靠巴山，汉水横贯东西。汉水（安康）文化从发蒙阶段就和华夏文明同步发展。“抟土作人”的人类始祖女娲，四五千年前就为今安康市平利县留下了传说。千秋传颂的帝舜，在安康更是有着直接的遗迹传说。总面积23391平方千米，辖1区1县级市8个县：汉滨区、汉阴县、石泉县、宁陕县、紫阳县、岚皋县、平利县、镇坪县、旬阳市、白河县。');
INSERT INTO `city2` VALUES (9, '商洛市', '商洛市因境内有商山、洛水而得名。位于陕西省东南部，秦岭南麓，与鄂豫两省交界，历史上是西北通往东南的交通要道，兼容秦雄楚秀，是当代著名作家贾平凹的故里 。总面积19292平方千米，辖1区6县：商州区、洛南县、丹凤县、商南县、山阳县、镇安县、柞水县。');
INSERT INTO `city2` VALUES (10, '西安市', '西安市古称长安，与雅典、开罗、罗马并称世界四大古都，是古丝绸之路起点，是世界上文化内涵最丰富、文化遗存迭压最厚重、古代城池系统保存最完整的历史文化名城，有7000多年文明史、3100多年建城史和1100多年建都史，有“天然历史博物馆”之称。西安地处关中平原中部，是国家明确建设的3个国际化大都市之一、全国9个国家中心城市之一。总面积1.0752万平方千米，辖11个区2县：新城区、碑林区、莲湖区、雁塔区、灞桥区、未央区、阎良区、临潼区、长安区、高陵区、鄠邑区、蓝田县、周至县。');

-- ----------------------------
-- Table structure for city_to_region
-- ----------------------------
DROP TABLE IF EXISTS `city_to_region`;
CREATE TABLE `city_to_region`  (
  `city_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  INDEX `city_id`(`city_id`) USING BTREE,
  INDEX `region_id`(`region_id`) USING BTREE,
  CONSTRAINT `city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `region_id` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city_to_region
-- ----------------------------
INSERT INTO `city_to_region` VALUES (86, 1);
INSERT INTO `city_to_region` VALUES (87, 1);
INSERT INTO `city_to_region` VALUES (88, 1);
INSERT INTO `city_to_region` VALUES (89, 1);
INSERT INTO `city_to_region` VALUES (90, 1);
INSERT INTO `city_to_region` VALUES (91, 1);
INSERT INTO `city_to_region` VALUES (92, 1);
INSERT INTO `city_to_region` VALUES (93, 1);
INSERT INTO `city_to_region` VALUES (94, 1);
INSERT INTO `city_to_region` VALUES (95, 1);
INSERT INTO `city_to_region` VALUES (96, 1);
INSERT INTO `city_to_region` VALUES (97, 1);
INSERT INTO `city_to_region` VALUES (98, 1);
INSERT INTO `city_to_region` VALUES (60, 1);
INSERT INTO `city_to_region` VALUES (61, 1);
INSERT INTO `city_to_region` VALUES (62, 1);
INSERT INTO `city_to_region` VALUES (63, 1);
INSERT INTO `city_to_region` VALUES (64, 1);
INSERT INTO `city_to_region` VALUES (65, 1);
INSERT INTO `city_to_region` VALUES (66, 1);
INSERT INTO `city_to_region` VALUES (67, 1);
INSERT INTO `city_to_region` VALUES (68, 1);
INSERT INTO `city_to_region` VALUES (69, 1);
INSERT INTO `city_to_region` VALUES (70, 1);
INSERT INTO `city_to_region` VALUES (71, 1);
INSERT INTO `city_to_region` VALUES (72, 1);
INSERT INTO `city_to_region` VALUES (73, 1);
INSERT INTO `city_to_region` VALUES (20, 2);
INSERT INTO `city_to_region` VALUES (21, 2);
INSERT INTO `city_to_region` VALUES (22, 2);
INSERT INTO `city_to_region` VALUES (23, 2);
INSERT INTO `city_to_region` VALUES (24, 2);
INSERT INTO `city_to_region` VALUES (25, 2);
INSERT INTO `city_to_region` VALUES (26, 2);
INSERT INTO `city_to_region` VALUES (27, 2);
INSERT INTO `city_to_region` VALUES (28, 2);
INSERT INTO `city_to_region` VALUES (29, 2);
INSERT INTO `city_to_region` VALUES (30, 2);
INSERT INTO `city_to_region` VALUES (31, 2);
INSERT INTO `city_to_region` VALUES (32, 2);
INSERT INTO `city_to_region` VALUES (15, 2);
INSERT INTO `city_to_region` VALUES (16, 2);
INSERT INTO `city_to_region` VALUES (17, 2);
INSERT INTO `city_to_region` VALUES (18, 2);
INSERT INTO `city_to_region` VALUES (19, 2);
INSERT INTO `city_to_region` VALUES (33, 2);
INSERT INTO `city_to_region` VALUES (34, 2);
INSERT INTO `city_to_region` VALUES (35, 2);
INSERT INTO `city_to_region` VALUES (36, 2);
INSERT INTO `city_to_region` VALUES (37, 2);
INSERT INTO `city_to_region` VALUES (38, 2);
INSERT INTO `city_to_region` VALUES (39, 2);
INSERT INTO `city_to_region` VALUES (40, 2);
INSERT INTO `city_to_region` VALUES (41, 2);
INSERT INTO `city_to_region` VALUES (42, 2);
INSERT INTO `city_to_region` VALUES (43, 2);
INSERT INTO `city_to_region` VALUES (44, 2);
INSERT INTO `city_to_region` VALUES (45, 2);
INSERT INTO `city_to_region` VALUES (46, 2);
INSERT INTO `city_to_region` VALUES (47, 2);
INSERT INTO `city_to_region` VALUES (1, 2);
INSERT INTO `city_to_region` VALUES (2, 2);
INSERT INTO `city_to_region` VALUES (3, 2);
INSERT INTO `city_to_region` VALUES (4, 2);
INSERT INTO `city_to_region` VALUES (5, 2);
INSERT INTO `city_to_region` VALUES (6, 2);
INSERT INTO `city_to_region` VALUES (7, 2);
INSERT INTO `city_to_region` VALUES (8, 2);
INSERT INTO `city_to_region` VALUES (9, 2);
INSERT INTO `city_to_region` VALUES (10, 2);
INSERT INTO `city_to_region` VALUES (11, 2);
INSERT INTO `city_to_region` VALUES (12, 2);
INSERT INTO `city_to_region` VALUES (13, 2);
INSERT INTO `city_to_region` VALUES (14, 2);
INSERT INTO `city_to_region` VALUES (48, 2);
INSERT INTO `city_to_region` VALUES (49, 2);
INSERT INTO `city_to_region` VALUES (50, 2);
INSERT INTO `city_to_region` VALUES (51, 2);
INSERT INTO `city_to_region` VALUES (52, 2);
INSERT INTO `city_to_region` VALUES (53, 2);
INSERT INTO `city_to_region` VALUES (54, 2);
INSERT INTO `city_to_region` VALUES (55, 2);
INSERT INTO `city_to_region` VALUES (56, 2);
INSERT INTO `city_to_region` VALUES (57, 2);
INSERT INTO `city_to_region` VALUES (58, 2);
INSERT INTO `city_to_region` VALUES (59, 2);
INSERT INTO `city_to_region` VALUES (74, 3);
INSERT INTO `city_to_region` VALUES (75, 3);
INSERT INTO `city_to_region` VALUES (76, 3);
INSERT INTO `city_to_region` VALUES (77, 3);
INSERT INTO `city_to_region` VALUES (78, 3);
INSERT INTO `city_to_region` VALUES (79, 3);
INSERT INTO `city_to_region` VALUES (80, 3);
INSERT INTO `city_to_region` VALUES (81, 3);
INSERT INTO `city_to_region` VALUES (82, 3);
INSERT INTO `city_to_region` VALUES (83, 3);
INSERT INTO `city_to_region` VALUES (84, 3);
INSERT INTO `city_to_region` VALUES (85, 3);
INSERT INTO `city_to_region` VALUES (99, 3);
INSERT INTO `city_to_region` VALUES (100, 3);
INSERT INTO `city_to_region` VALUES (101, 3);
INSERT INTO `city_to_region` VALUES (102, 3);
INSERT INTO `city_to_region` VALUES (103, 3);
INSERT INTO `city_to_region` VALUES (104, 3);
INSERT INTO `city_to_region` VALUES (105, 3);
INSERT INTO `city_to_region` VALUES (106, 3);
INSERT INTO `city_to_region` VALUES (107, 3);
INSERT INTO `city_to_region` VALUES (108, 3);
INSERT INTO `city_to_region` VALUES (109, 3);
INSERT INTO `city_to_region` VALUES (110, 3);
INSERT INTO `city_to_region` VALUES (111, 3);
INSERT INTO `city_to_region` VALUES (112, 3);
INSERT INTO `city_to_region` VALUES (113, 3);
INSERT INTO `city_to_region` VALUES (114, 3);
INSERT INTO `city_to_region` VALUES (115, 3);
INSERT INTO `city_to_region` VALUES (116, 3);
INSERT INTO `city_to_region` VALUES (117, 3);

-- ----------------------------
-- Table structure for cocktail
-- ----------------------------
DROP TABLE IF EXISTS `cocktail`;
CREATE TABLE `cocktail`  (
  `cocktail_id` int(11) NOT NULL AUTO_INCREMENT,
  `cocktail_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alias_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dynasty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `main_character` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cocktail_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cocktail
-- ----------------------------
INSERT INTO `cocktail` VALUES (1, '周八珍', '宫廷宴', NULL, '周朝', NULL, '周天子', '周八珍，是中国古代最早宫廷宴，也是我国现存最早的一张完整的宴会菜单，记载于《周礼天宫》“珍用八物”。周八珍是8种菜\n肴的总称，分别是淳熬、姆、炮豚、炮糕、肝營熬、渍、捣珍,周天子食用的八珍,选料精良，制作复杂,不仅具备烤的技\n艺还采用了烘干、腌渍、煮及生食加工等多种手法，其做法也被延续至今。\n');
INSERT INTO `cocktail` VALUES (2, '烧尾宴', '欢庆宴', NULL, '唐代', NULL, '登科或升官的人', '烧尾宴是唐代长安曾经盛行过的一种特殊宴会。是指士人新官上任或官员升迁，招待前来恭贺的亲朋同僚的宴会。\r\n所谓“烧尾宴”，据《封氏闻见录》云，士人初登第或升了官级，同僚、朋友及亲友前来祝贺，主人要准备丰盛的酒馔和乐舞款待来宾，名为烧尾，并把这类筵宴成为“烧尾宴”。');
INSERT INTO `cocktail` VALUES (3, '曲江宴', '欢庆宴', '曲江会、关宴', '唐朝', '曲江亭', '新科进士、皇帝、王公大臣', '唐代新科进士正式放榜之日恰好就在上巳之前,上巳为唐代三大节日之一，这种游宴,皇帝亲自参加,与宴者也经皇帝“钦点”。宴席间,皇帝、王公大臣及与宴者一边观赏曲江边的天光水色,一边品尝宫廷御宴美味佳肴。曲江游宴种类繁多,情趣各异。其中以上巳节游宴、新进士游宴最隆重,在历史上的影响最深。考中进士既然是这样的一件大事，自然是要庆祝一番的，庆祝的形式就是曲江大会，亦即曲江宴。因为宴会往往是在关试后才举行，所以又叫“关宴”；因举行宴会的地点一般都设在杏园曲江岸边的亭子中，所以也叫“杏园宴”；以后逐渐演变为诗人们吟诵诗作的“诗会”，按照古人“曲水流殇”的习俗，置酒杯于流水中，流至谁前则罚谁饮酒作诗，由众人对诗进行评比，称为“曲江流饮”。 至唐僖宗时，也在曲江宴中设“樱桃宴”专门来庆祝新进士及第。');
INSERT INTO `cocktail` VALUES (4, '千秋宴', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cocktail` VALUES (5, '饺子宴', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cocktail` VALUES (6, '贵妃宴', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cocktail` VALUES (7, '长寿宴', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cocktail` VALUES (8, '龙凤宴', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cocktail` VALUES (9, '长安八景宴', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cocktail` VALUES (10, '唐宫小吃宴', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for county
-- ----------------------------
DROP TABLE IF EXISTS `county`;
CREATE TABLE `county`  (
  `county_id` int(11) NOT NULL AUTO_INCREMENT,
  `county_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`county_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 108 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of county
-- ----------------------------
INSERT INTO `county` VALUES (1, '新城区');
INSERT INTO `county` VALUES (2, '碑林区');
INSERT INTO `county` VALUES (3, '莲湖区');
INSERT INTO `county` VALUES (4, '雁塔区');
INSERT INTO `county` VALUES (5, '灞桥区');
INSERT INTO `county` VALUES (6, '未央区');
INSERT INTO `county` VALUES (7, '阎良区');
INSERT INTO `county` VALUES (8, '临潼区');
INSERT INTO `county` VALUES (9, '长安区');
INSERT INTO `county` VALUES (10, '高陵区');
INSERT INTO `county` VALUES (11, '鄠邑区');
INSERT INTO `county` VALUES (12, '蓝田县');
INSERT INTO `county` VALUES (13, '周至县');
INSERT INTO `county` VALUES (14, '渭滨区');
INSERT INTO `county` VALUES (15, '金台区');
INSERT INTO `county` VALUES (16, '陈仓区');
INSERT INTO `county` VALUES (17, '凤翔区');
INSERT INTO `county` VALUES (18, '岐山县');
INSERT INTO `county` VALUES (19, '扶风县');
INSERT INTO `county` VALUES (20, '眉县');
INSERT INTO `county` VALUES (21, '陇县');
INSERT INTO `county` VALUES (22, '千阳县');
INSERT INTO `county` VALUES (23, '麟游县');
INSERT INTO `county` VALUES (24, '凤县');
INSERT INTO `county` VALUES (25, '太白县');
INSERT INTO `county` VALUES (26, '秦都区');
INSERT INTO `county` VALUES (27, '杨陵区');
INSERT INTO `county` VALUES (28, '渭城区');
INSERT INTO `county` VALUES (29, '三原县');
INSERT INTO `county` VALUES (30, '泾阳县');
INSERT INTO `county` VALUES (31, '乾县');
INSERT INTO `county` VALUES (32, '礼泉县');
INSERT INTO `county` VALUES (33, '永寿县');
INSERT INTO `county` VALUES (34, '长武县');
INSERT INTO `county` VALUES (35, '旬邑县');
INSERT INTO `county` VALUES (36, '淳化县');
INSERT INTO `county` VALUES (37, '武功县');
INSERT INTO `county` VALUES (38, '兴平市');
INSERT INTO `county` VALUES (39, '彬州市 ');
INSERT INTO `county` VALUES (40, '王益区');
INSERT INTO `county` VALUES (41, '印台区');
INSERT INTO `county` VALUES (42, '耀州区');
INSERT INTO `county` VALUES (43, '宜君县');
INSERT INTO `county` VALUES (44, '临渭区');
INSERT INTO `county` VALUES (45, '华州区');
INSERT INTO `county` VALUES (46, '潼关县');
INSERT INTO `county` VALUES (47, '大荔县');
INSERT INTO `county` VALUES (48, '合阳县');
INSERT INTO `county` VALUES (49, '澄城县');
INSERT INTO `county` VALUES (50, '蒲城县');
INSERT INTO `county` VALUES (51, '白水县');
INSERT INTO `county` VALUES (52, '富平县');
INSERT INTO `county` VALUES (53, '韩城市');
INSERT INTO `county` VALUES (54, '华阴市');
INSERT INTO `county` VALUES (55, '宝塔区');
INSERT INTO `county` VALUES (56, '安塞区');
INSERT INTO `county` VALUES (57, '延长县');
INSERT INTO `county` VALUES (58, '延川县');
INSERT INTO `county` VALUES (59, '子长市');
INSERT INTO `county` VALUES (60, '志丹县');
INSERT INTO `county` VALUES (61, '吴起县');
INSERT INTO `county` VALUES (62, '甘泉县');
INSERT INTO `county` VALUES (63, '富县');
INSERT INTO `county` VALUES (64, '洛川县');
INSERT INTO `county` VALUES (65, '宜川县');
INSERT INTO `county` VALUES (66, '黄龙县');
INSERT INTO `county` VALUES (67, '黄陵县');
INSERT INTO `county` VALUES (68, '榆阳区');
INSERT INTO `county` VALUES (69, '横山区');
INSERT INTO `county` VALUES (70, '神木市');
INSERT INTO `county` VALUES (71, '府谷县');
INSERT INTO `county` VALUES (72, '靖边县');
INSERT INTO `county` VALUES (73, '定边县');
INSERT INTO `county` VALUES (74, '绥德县');
INSERT INTO `county` VALUES (75, '米脂县');
INSERT INTO `county` VALUES (76, '佳县');
INSERT INTO `county` VALUES (77, '吴堡县');
INSERT INTO `county` VALUES (78, '清涧县');
INSERT INTO `county` VALUES (79, '子洲县 ');
INSERT INTO `county` VALUES (80, '汉台区');
INSERT INTO `county` VALUES (81, '南郑区');
INSERT INTO `county` VALUES (82, '城固县');
INSERT INTO `county` VALUES (83, '洋县');
INSERT INTO `county` VALUES (84, '西乡县');
INSERT INTO `county` VALUES (85, '勉县');
INSERT INTO `county` VALUES (86, '宁强县');
INSERT INTO `county` VALUES (87, '略阳县');
INSERT INTO `county` VALUES (88, '镇巴县');
INSERT INTO `county` VALUES (89, '留坝县');
INSERT INTO `county` VALUES (90, '佛坪县');
INSERT INTO `county` VALUES (91, '汉滨区');
INSERT INTO `county` VALUES (92, '汉阴县');
INSERT INTO `county` VALUES (93, '石泉县');
INSERT INTO `county` VALUES (94, '宁陕县');
INSERT INTO `county` VALUES (95, '紫阳县');
INSERT INTO `county` VALUES (96, '岚皋县');
INSERT INTO `county` VALUES (97, '平利县');
INSERT INTO `county` VALUES (98, '镇坪县');
INSERT INTO `county` VALUES (99, '旬阳市');
INSERT INTO `county` VALUES (100, '白河县');
INSERT INTO `county` VALUES (101, '商州区');
INSERT INTO `county` VALUES (102, '洛南县');
INSERT INTO `county` VALUES (103, '丹凤县');
INSERT INTO `county` VALUES (104, '商南县');
INSERT INTO `county` VALUES (105, '山阳县');
INSERT INTO `county` VALUES (106, '镇安县');
INSERT INTO `county` VALUES (107, '柞水县');

-- ----------------------------
-- Table structure for county_to_city
-- ----------------------------
DROP TABLE IF EXISTS `county_to_city`;
CREATE TABLE `county_to_city`  (
  `county_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  PRIMARY KEY (`county_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of county_to_city
-- ----------------------------
INSERT INTO `county_to_city` VALUES (1, 10);
INSERT INTO `county_to_city` VALUES (2, 10);
INSERT INTO `county_to_city` VALUES (3, 10);
INSERT INTO `county_to_city` VALUES (4, 10);
INSERT INTO `county_to_city` VALUES (5, 10);
INSERT INTO `county_to_city` VALUES (6, 10);
INSERT INTO `county_to_city` VALUES (7, 10);
INSERT INTO `county_to_city` VALUES (8, 10);
INSERT INTO `county_to_city` VALUES (9, 10);
INSERT INTO `county_to_city` VALUES (10, 10);
INSERT INTO `county_to_city` VALUES (11, 10);
INSERT INTO `county_to_city` VALUES (12, 10);
INSERT INTO `county_to_city` VALUES (13, 10);
INSERT INTO `county_to_city` VALUES (14, 1);
INSERT INTO `county_to_city` VALUES (15, 1);
INSERT INTO `county_to_city` VALUES (16, 1);
INSERT INTO `county_to_city` VALUES (17, 1);
INSERT INTO `county_to_city` VALUES (18, 1);
INSERT INTO `county_to_city` VALUES (19, 1);
INSERT INTO `county_to_city` VALUES (20, 1);
INSERT INTO `county_to_city` VALUES (21, 1);
INSERT INTO `county_to_city` VALUES (22, 1);
INSERT INTO `county_to_city` VALUES (23, 1);
INSERT INTO `county_to_city` VALUES (24, 1);
INSERT INTO `county_to_city` VALUES (25, 1);
INSERT INTO `county_to_city` VALUES (26, 2);
INSERT INTO `county_to_city` VALUES (27, 2);
INSERT INTO `county_to_city` VALUES (28, 2);
INSERT INTO `county_to_city` VALUES (29, 2);
INSERT INTO `county_to_city` VALUES (30, 2);
INSERT INTO `county_to_city` VALUES (31, 2);
INSERT INTO `county_to_city` VALUES (32, 2);
INSERT INTO `county_to_city` VALUES (33, 2);
INSERT INTO `county_to_city` VALUES (34, 2);
INSERT INTO `county_to_city` VALUES (35, 2);
INSERT INTO `county_to_city` VALUES (36, 2);
INSERT INTO `county_to_city` VALUES (37, 2);
INSERT INTO `county_to_city` VALUES (38, 2);
INSERT INTO `county_to_city` VALUES (39, 2);
INSERT INTO `county_to_city` VALUES (40, 3);
INSERT INTO `county_to_city` VALUES (41, 3);
INSERT INTO `county_to_city` VALUES (42, 3);
INSERT INTO `county_to_city` VALUES (43, 3);
INSERT INTO `county_to_city` VALUES (44, 4);
INSERT INTO `county_to_city` VALUES (45, 4);
INSERT INTO `county_to_city` VALUES (46, 4);
INSERT INTO `county_to_city` VALUES (47, 4);
INSERT INTO `county_to_city` VALUES (48, 4);
INSERT INTO `county_to_city` VALUES (49, 4);
INSERT INTO `county_to_city` VALUES (50, 4);
INSERT INTO `county_to_city` VALUES (51, 4);
INSERT INTO `county_to_city` VALUES (52, 4);
INSERT INTO `county_to_city` VALUES (53, 4);
INSERT INTO `county_to_city` VALUES (54, 4);
INSERT INTO `county_to_city` VALUES (55, 5);
INSERT INTO `county_to_city` VALUES (56, 5);
INSERT INTO `county_to_city` VALUES (57, 5);
INSERT INTO `county_to_city` VALUES (58, 5);
INSERT INTO `county_to_city` VALUES (59, 5);
INSERT INTO `county_to_city` VALUES (60, 5);
INSERT INTO `county_to_city` VALUES (61, 5);
INSERT INTO `county_to_city` VALUES (62, 5);
INSERT INTO `county_to_city` VALUES (63, 5);
INSERT INTO `county_to_city` VALUES (64, 5);
INSERT INTO `county_to_city` VALUES (65, 5);
INSERT INTO `county_to_city` VALUES (66, 5);
INSERT INTO `county_to_city` VALUES (67, 5);
INSERT INTO `county_to_city` VALUES (68, 6);
INSERT INTO `county_to_city` VALUES (69, 6);
INSERT INTO `county_to_city` VALUES (70, 6);
INSERT INTO `county_to_city` VALUES (71, 6);
INSERT INTO `county_to_city` VALUES (72, 6);
INSERT INTO `county_to_city` VALUES (73, 6);
INSERT INTO `county_to_city` VALUES (74, 6);
INSERT INTO `county_to_city` VALUES (75, 6);
INSERT INTO `county_to_city` VALUES (76, 6);
INSERT INTO `county_to_city` VALUES (77, 6);
INSERT INTO `county_to_city` VALUES (78, 6);
INSERT INTO `county_to_city` VALUES (79, 6);
INSERT INTO `county_to_city` VALUES (80, 7);
INSERT INTO `county_to_city` VALUES (81, 7);
INSERT INTO `county_to_city` VALUES (82, 7);
INSERT INTO `county_to_city` VALUES (83, 7);
INSERT INTO `county_to_city` VALUES (84, 7);
INSERT INTO `county_to_city` VALUES (85, 7);
INSERT INTO `county_to_city` VALUES (86, 7);
INSERT INTO `county_to_city` VALUES (87, 7);
INSERT INTO `county_to_city` VALUES (88, 7);
INSERT INTO `county_to_city` VALUES (89, 7);
INSERT INTO `county_to_city` VALUES (90, 7);
INSERT INTO `county_to_city` VALUES (91, 8);
INSERT INTO `county_to_city` VALUES (92, 8);
INSERT INTO `county_to_city` VALUES (93, 8);
INSERT INTO `county_to_city` VALUES (94, 8);
INSERT INTO `county_to_city` VALUES (95, 8);
INSERT INTO `county_to_city` VALUES (96, 8);
INSERT INTO `county_to_city` VALUES (97, 8);
INSERT INTO `county_to_city` VALUES (98, 8);
INSERT INTO `county_to_city` VALUES (99, 8);
INSERT INTO `county_to_city` VALUES (100, 8);
INSERT INTO `county_to_city` VALUES (101, 9);
INSERT INTO `county_to_city` VALUES (102, 9);
INSERT INTO `county_to_city` VALUES (103, 9);
INSERT INTO `county_to_city` VALUES (104, 9);
INSERT INTO `county_to_city` VALUES (105, 9);
INSERT INTO `county_to_city` VALUES (106, 9);
INSERT INTO `county_to_city` VALUES (107, 9);

-- ----------------------------
-- Table structure for download_request
-- ----------------------------
DROP TABLE IF EXISTS `download_request`;
CREATE TABLE `download_request`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` bigint(11) NULL DEFAULT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT NULL,
  `date_time` datetime(0) NULL DEFAULT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `query_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of download_request
-- ----------------------------
INSERT INTO `download_request` VALUES ('289ecfb30454', 1648157234531770370, 'litm', 0, '2023-04-21 10:07:48', 'file', '/KNGraph_Visualization', NULL);
INSERT INTO `download_request` VALUES ('33c3da012a43', 1648157234531770370, 'litm', 0, '2023-04-21 09:46:24', 'file', '/KNGraph_Visualization', NULL);
INSERT INTO `download_request` VALUES ('6c88d0b4b028', 1648157234531770370, 'litm', 1, '2023-04-21 10:09:53', 'file', '/KNGraph_Visualization', '2023-04-21 10:09:53');
INSERT INTO `download_request` VALUES ('6ce7d9fc2a72', 1648157234531770370, 'litm', 1, '2023-04-21 10:11:37', 'file', '/KNGraph_Visualization', '2023-04-21 10:11:37');

-- ----------------------------
-- Table structure for download_request_log
-- ----------------------------
DROP TABLE IF EXISTS `download_request_log`;
CREATE TABLE `download_request_log`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `download_request_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT NULL,
  `route_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exchange` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NULL DEFAULT NULL,
  `try_time` datetime(0) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `direction` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of download_request_log
-- ----------------------------
INSERT INTO `download_request_log` VALUES ('1e800aeb2d0e', '289ecfb30454', 1, 'lie.download.routing.key', 'lie.download.exchange', 0, '2023-04-21 10:08:48', '2023-04-21 10:07:48', NULL, 'KGV->FILE_SERVER');
INSERT INTO `download_request_log` VALUES ('2e7002b6ca19', '6ce7d9fc2a72', 1, 'lie.download.complete.routing.key', 'lie.download.complete.exchange', 0, '2023-04-21 10:12:37', '2023-04-21 10:11:37', NULL, 'FILE_SERVER->KGV');
INSERT INTO `download_request_log` VALUES ('396b19fd7e8a', '6c88d0b4b028', 1, 'lie.download.routing.key', 'lie.download.exchange', 0, '2023-04-21 10:10:53', '2023-04-21 10:09:53', NULL, 'KGV->FILE_SERVER');
INSERT INTO `download_request_log` VALUES ('60625e810d88', '289ecfb30454', 1, 'lie.download.complete.routing.key', 'lie.download.complete.exchange', 0, '2023-04-21 10:08:48', '2023-04-21 10:07:48', NULL, 'FILE_SERVER->KGV');
INSERT INTO `download_request_log` VALUES ('9a2974d7fa76', '6c88d0b4b028', 1, 'lie.download.complete.routing.key', 'lie.download.complete.exchange', 0, '2023-04-21 10:10:53', '2023-04-21 10:09:53', NULL, 'FILE_SERVER->KGV');
INSERT INTO `download_request_log` VALUES ('dcbe7337673e', '6ce7d9fc2a72', 1, 'lie.download.routing.key', 'lie.download.exchange', 0, '2023-04-21 10:12:37', '2023-04-21 10:11:37', NULL, 'KGV->FILE_SERVER');
INSERT INTO `download_request_log` VALUES ('f8769a02c707', '33c3da012a43', 1, 'lie.download.routing.key', 'lie.download.exchange', 0, '2023-04-21 09:47:24', '2023-04-21 09:46:24', NULL, 'KGV->FILE_SERVER');

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food`  (
  `food_id` int(11) NOT NULL AUTO_INCREMENT,
  `chinese_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `english_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `alias_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `feature` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ingredient` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `craft` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `appearance` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `brief_introduction` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`food_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 157 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES (1, '蓝田泡油糕', '暂无', '暂无', '蓝田县', '芬芳醇香', '陕西蓝田小吃', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (2, '潼关酱笋', '暂无', '暂无', '潼关县', '红褐透亮，色泽鲜润，酥脆鲜嫩', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (3, '乾县豆腐脑', '暂无', '暂无', '乾县', '酸、辣', '小吃', '食盐、姜、蒜泥、酱油、五香醋', NULL, NULL, NULL);
INSERT INTO `food` VALUES (4, '临潼石榴', '暂无', '暂无', '临潼区', '色泽艳丽，果大皮薄，汁多味甜', '暂无', '暂无', NULL, NULL, '临潼石榴集中国石榴之优，素以色泽艳丽，果大皮薄，汁多味甜，核软鲜美，籽肥渣少，品质优良等特点而著称。名居中国五大名榴之冠，被列为果中珍品，历来是封建皇帝的贡品，享誉九州。白居易曾写诗赞美：“日照血球将滴地，风翻火焰欲烧人”。');
INSERT INTO `food` VALUES (5, '枣糕馍', '暂无', '暂无', '暂无', '甜', '蒸制面点', '面粉，白糖，大枣，菜油', NULL, NULL, NULL);
INSERT INTO `food` VALUES (6, '扶风苹果', '暂无', '暂无', '扶风县', '个大，色鲜，味美，品种多', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (7, '凤翔腊驴腿', '暂无', '暂无', '凤翔县', '暂无', '暂无', '驴肉', NULL, NULL, NULL);
INSERT INTO `food` VALUES (9, '华阴擀馍', '暂无', '暂无', '华阴市', '暂无', '暂无', '面', NULL, NULL, NULL);
INSERT INTO `food` VALUES (10, '西府醋粉', '暂无', '暂无', '宝鸡市', '酸辣可口', '陕西小吃', '盐，蒜水，红油辣椒', NULL, NULL, NULL);
INSERT INTO `food` VALUES (11, '临潼醪糟', '暂无', '暂无', '临潼区', '鲜美', '小吃', '糯米', NULL, NULL, NULL);
INSERT INTO `food` VALUES (12, '西安黄桂柿子饼', '暂无', '暂无', '西安市', '暂无', '暂无', '青红丝、核桃仁', NULL, NULL, '黄桂柿子饼，也叫水晶柿子饼，是一种用柿子和面制成的风味食品。西安黄桂柿子饼，是用临潼县产的“火晶柿子”为原料制作成的。这种柿子的特点是：果皮、果肉橙红色或鲜红色，果实小，果粉多，无核，肉质致密，多汁，品质极好。');
INSERT INTO `food` VALUES (13, '贵妃饼', '暂无', '暂无', '暂无', '色泽乳白、皮薄馅足、酥脆松软', '小吃', '富强粉、炼大油、白砂糖、核桃仁', NULL, NULL, '贵妃饼是西安传统名小吃，成品形如圆月、色泽乳白、皮薄馅足、酥脆松软、咸中带甜、 油而不腻，已有 1000多年的历史，是始于唐代的传统名食。主要原料为面粉、炼大油、白砂糖、核桃仁、芝麻仁、枣泥等。');
INSERT INTO `food` VALUES (15, '锅盔', 'Crusty pancake', '暂无', '暂无', '香醇味美，酥松可口', '面食小吃', '面粉、碱面，酵面，芝麻', NULL, NULL, NULL);
INSERT INTO `food` VALUES (16, '合阳辣子豆腐', '暂无', '暂无', '合阳县', '辣', '家常菜', '豆腐', NULL, NULL, NULL);
INSERT INTO `food` VALUES (17, '大荔月牙烧饼', '暂无', '暂无', '大荔县', '鲜香', '小吃', '面粉，鸡蛋', NULL, NULL, NULL);
INSERT INTO `food` VALUES (18, '菜豆腐', '暂无', '暂无', '暂无', '酸润、细软，微酸，糯香', '暂无', '黄豆，浆水菜酸汤', NULL, NULL, NULL);
INSERT INTO `food` VALUES (19, '水晶饼', 'rockcrystal', '点心', '西安市', '色味具佳、饱腹感、满足感', '暂无', '淀粉，白糖，冰糖，猪板油，青红丝，其他辅助配料', NULL, '金面银帮，起皮掉酥，口感油多而不腻，糖重而渗甜，具有浓郁的玫瑰芳香', '水晶饼是陕西省渭南市下邽镇的地方名点。相传是宋代当地民众赞美寇准而制作的糕点。通过制皮、制馅、制酥、包酥、成型的烹饪步骤完成。');
INSERT INTO `food` VALUES (20, '油发笋丝', '暂无', '暂无', '暂无', '暂无', '酱菜', '青笋', NULL, NULL, '油发笋丝是西安优质的传统酱菜美食。产品条丝均匀，棕红透亮，酱味芳香，油而不腻，甜咸适宜，具有香、甜、脆、嫩四大特点，直接食用，不必加工，佐餐就食，诱人入口。');
INSERT INTO `food` VALUES (21, '汉中浆水面', 'Hanzhongsauerkrautnoodles', '暂无', '汉中市', '酸爽', '美食', '芥菜、浆水、菜籽油、挂面、豆芽、豆腐、干辣椒或辣椒面', NULL, NULL, '汉中浆水面是以浆水做汤汁的一种面食。浆水面广泛流行于陕西汉中、安康；甘肃陇南、定西等地，而以陕西汉中的最为考究，而汉中之中尤以宁强县阳平关清河村的最为考究，它含有多种有益的酶，能清暑解热，增进食欲，为夏令佳品。三伏盛暑，食之，不仅能解除疲劳，恢复体力，而且对高血压、肠胃病和泌尿病有一定的疗效，老少皆宜，汉中浆水面是与汉中热米皮齐名的汉中美食名片，非常受到汉中当地人民的欢迎。');
INSERT INTO `food` VALUES (22, '酸菜炒米', '暂无', '暂无', '暂无', '暂无', '暂无', '色拉油适量、食盐适量', NULL, NULL, NULL);
INSERT INTO `food` VALUES (23, '韩城羊肉臊子饸饹', '暂无', '暂无', '韩城市', '可口宜人', '暂无', '花椒', NULL, NULL, NULL);
INSERT INTO `food` VALUES (24, '岐山锅盔', '暂无', '文王锅盔', '岐山县', '暂无', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (25, '面筋凉皮', '暂无', '暂无', '关中市', '鲜香', '小吃', '面筋，凉皮', NULL, NULL, NULL);
INSERT INTO `food` VALUES (26, '横山羊肉', '暂无', '暂无', '榆林市', '肉质鲜嫩、肥瘦相间，香味浓郁', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (27, '水盆羊肉', '暂无', '暂无', '暂无', '肥而不腻，清醇可口', '陕菜', '花椒5克、桂皮5克、陈皮5克等', NULL, NULL, NULL);
INSERT INTO `food` VALUES (28, '揽饭', '暂无', '暂无', '陕西秦岭山区', '甜而鲜香', '暂无', '南瓜，绿豆', NULL, NULL, NULL);
INSERT INTO `food` VALUES (29, '贾三灌汤包子', '暂无', '暂无', '西安市', '鲜香可口', '陕菜系', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (30, '潼关酱菜', '暂无', '暂无', '潼关县', '暂无', '传统名菜', '暂无', NULL, NULL, '潼关酱菜是渭南市潼关县的传统名菜，属于陕西省名优食品之一。源于唐代贡品。其制作工艺精细，色泽鲜润、红中透黄、咸度适中、微甜脆爽。品种有八宝酱菜、萝卜酱菜、连皮酱笋、五香花生、五香面酱、潼关小菜等三十余种。一九一五年获巴拿马世界名特食品博览会银奖。');
INSERT INTO `food` VALUES (31, '泾阳羊肉泡馍', '暂无', '暂无', '泾阳县', '料重味醇，肉烂汤鲜，肥而不腻，瘦而不柴，营养丰富，暖胃耐饥，香气四溢，诱人食欲，食后余味无穷', '暂无', '牛羊肉，馒头', NULL, NULL, NULL);
INSERT INTO `food` VALUES (32, '踅面', '暂无', '旋面页面', '暂无', '辣', '面食', '粗粮，荞面，调料包，汤料', NULL, NULL, '踅面是陕西省合阳县及渭南地区独有的，为当地人极为偏爱的风味小吃。踅面历史悠久，相传西汉高祖三年（公元前 204 年），汉淮阴侯韩信在合阳黄河边的夏阳渡用木罂渡军活捉河东魏王豹时，为解决 10 万军士吃饭问题而发明此面，踅面可称得上是我国最早的“方便面”。');
INSERT INTO `food` VALUES (33, '白封肉', '暂无', '暂无', '暂无', '鲜美', '西北菜', '肉', NULL, NULL, NULL);
INSERT INTO `food` VALUES (34, '烧肘子', '暂无', '暂无', '暂无', '咸鲜味', '中餐晚餐', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (35, '时辰包子', '暂无', '暂无', '暂无', '暂无', '其他菜系，陕菜', '面粉、猪油', NULL, NULL, NULL);
INSERT INTO `food` VALUES (36, '油酥饼', 'shortcake', '酥饼', '西安市', '暂无', '暂无', '小麦面粉，花生油', NULL, NULL, NULL);
INSERT INTO `food` VALUES (37, '眉县牛心柿', 'MeixianNiuXinpersimmon', '水柿,帽盔柿', '眉县', '暂无', '暂无', '暂无', NULL, NULL, '眉县牛心柿主产于陕西省眉县、周至、武功、彬县、扶风一带。因其果实汁液丰富，当地群众又称之“水柿”。又有人根据果实形状称之为“帽盔柿”。眉县牛心柿是当地栽培最多的优良品种，也是我国北方柿中著名的优良品种之一。本品种成龄树主干呈褐色，上有粗糙裂纹；树冠圆头形，枝条稀疏；新梢褐色，其上皮孔大而且较多，椭圆形；叶片深绿色，较大，呈卵形，表面有光泽。');
INSERT INTO `food` VALUES (38, '岚皋魔芋', '暂无', '暂无', '岚皋县', '营养丰富，富含多种维生素矿物质', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (39, '榆林豆腐', '暂无', '暂无', '榆林市', '皮细腰嫩，软中带韧，鲜活嫩香', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (40, '酸梅粉', '暂无', '暂无', '暂无', '酸甜适口', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (41, '商洛核桃', '暂无', '暂无', '商州区', '色白如玉油香味浓营养丰富', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (42, '镇安大板栗', '暂无', '中国甘栗，东方珍珠', '暂无', '暂无', '暂无', '板栗', NULL, NULL, NULL);
INSERT INTO `food` VALUES (43, '洋芋糍粑', '暂无', '洋芋搅团,洋芋粑粑', '暂无', '暂无', '地方小吃', '辣椒,陈醋,食用油等', NULL, NULL, NULL);
INSERT INTO `food` VALUES (44, '根面角', '暂无', '暂无', '暂无', '暂无', '地方传统小吃', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (45, '山阳核桃', '暂无', '暂无', '山阳县', '种仁饱满，口感油香滑润', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (46, '泾阳凉皮', '暂无', '瓤皮子', '暂无', '口感好，滑利爽口', '暂无', '面粉', NULL, NULL, NULL);
INSERT INTO `food` VALUES (47, '宜君农民画', '暂无', '暂无', '暂无', '暂无', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (48, '落葵', '暂无', '蓠芭菜、胭脂菜、紫葵、豆腐菜、潺菜、木耳菜、臙脂豆、藤菜、蘩露、蔠葵等', '暂无', '暂无', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (49, '岐山面', '暂无', '暂无', '岐山县', '薄、筋、光、煎、稀等', '臊子面', '精白面粉、猪肉、黄花菜等', NULL, NULL, NULL);
INSERT INTO `food` VALUES (50, '鹿邑试量狗肉', '暂无', '暂无', '暂无', '煮成的狗肉颜色鲜艳，浓香扑鼻', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (51, '柱顶石馍', '暂无', '暂无', '汉阴县', '美味可口', '传统风味小吃', '面粉', NULL, NULL, NULL);
INSERT INTO `food` VALUES (52, '汉阴蕨粉皮子', '暂无', '暂无', '暂无', '暂无', '暂无', '蕨粉', NULL, NULL, NULL);
INSERT INTO `food` VALUES (53, '秦岭土蜂蜜', '暂无', '暂无', '暂无', '暂无', '暂无', '葡萄糖和果糖', NULL, NULL, NULL);
INSERT INTO `food` VALUES (54, '宜君核桃', '暂无', '暂无', '宜君县', '仁脆而甜，味香而浓', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (55, '榆林炸豆奶', '暂无', '暂无', '榆林市', '酥脆', '陕西小吃', '豆浆，鸡蛋', NULL, NULL, NULL);
INSERT INTO `food` VALUES (56, '西乡牛肉干', '暂无', '暂无', '陕西省汉中市西乡县', '咸淡适中，酥而不绵', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (57, '梆梆面', 'bangbangnoodles', '汉中梆梆面', '暂无', '暂无', '暂无', '面粉，海椒，花椒，青蒜苗', NULL, NULL, NULL);
INSERT INTO `food` VALUES (58, '商芝肉', '暂无', '暂无', '暂无', '暂无', '其它菜系', '猪五花肉', NULL, NULL, NULL);
INSERT INTO `food` VALUES (59, '石门麻辣豆瓣鱼', '暂无', '暂无', '暂无', '香辣可口', '暂无', '豆瓣、葱等', NULL, NULL, NULL);
INSERT INTO `food` VALUES (60, '泡泡油糕', 'BubbleYougao', '暂无', '暂无', '香甜', '小吃', '面粉，大油，黄桂，白糖', NULL, NULL, NULL);
INSERT INTO `food` VALUES (61, '石泉豆腐干', '暂无', '暂无', '石泉县', '咸度适宜，营养丰富，清香可口', '暂无', '豆腐干', NULL, NULL, NULL);
INSERT INTO `food` VALUES (62, '荞面凉粉', '暂无', '暂无', '暂无', '软筋爽滑，清香利口', '暂无', '鲜荞面500克，清水1700克', NULL, NULL, NULL);
INSERT INTO `food` VALUES (63, '瓜棱纹黑釉瓷执壶', 'Black-glazedporcelainewerinmelonshape', '暂无', '暂无', '暂无', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (64, '油茶炒面', '暂无', '暂无', '暂无', '暂无', '传统名吃', '芝麻，花生，面粉', NULL, NULL, NULL);
INSERT INTO `food` VALUES (65, '水炒羊肉', '暂无', '暂无', '暂无', '酥软渲滑，易嚼易化', '小吃，陕西菜', '羊肉', NULL, NULL, NULL);
INSERT INTO `food` VALUES (66, '城固面皮', 'HangzhongMianpi', '面皮儿，面皮子', '城固县', '暂无', '小吃', '大米', NULL, NULL, NULL);
INSERT INTO `food` VALUES (67, '孝义柿饼', '暂无', '暂无', '暂无', '柿饼核少、个大、油质重', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (68, '芝麻饼', 'Sesamecake', '暂无', '暂无', '甜', '甜品', '熟面粉，白砂糖，饴糖，扎籼粉', NULL, NULL, NULL);
INSERT INTO `food` VALUES (69, '王家核桃馍', '暂无', '暂无', '暂无', '暂无', '暂无', '核桃', NULL, NULL, NULL);
INSERT INTO `food` VALUES (70, '凤翔豆花泡馍', '暂无', '暂无', '凤翔县', '暂无', '小吃', '优质花椒，大香', NULL, NULL, '豆花泡馍发源于秦地西府雍城一带的小吃，源远流长，久负盛名。当年苏东坡任当地太守时，曾大力整治东湖，广种柳树，湖柳相映，成为西府名景，与他整治过的杭州西湖东西呼应。近年来豆花泡馍发展迅速，已经遍及陕西乃至陕西以外的许多大街小巷。');
INSERT INTO `food` VALUES (71, '三皮丝', '暂无', '暂无', '暂无', '鲜脆爽口', '陕西小吃', '芝麻酱、盐、醋', NULL, NULL, NULL);
INSERT INTO `food` VALUES (72, '凤翔泥塑', '暂无', '暂无', '凤翔县', '暂无', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (73, '扶风鹿糕馍', '暂无', '暂无', '扶风县', '可口宜人', '小吃', '白糖、油料、五香粉', NULL, NULL, NULL);
INSERT INTO `food` VALUES (74, '高陵石头馍', '暂无', '暂无', '高陵县', '味美酥脆', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (75, '岐山擀面皮', 'Qishannoodles', '暂无', '岐山县', '暂无', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (76, '腊肉', '暂无', '暂无', '暂无', '咸', '肉类', '猪肉', NULL, NULL, NULL);
INSERT INTO `food` VALUES (77, '镇巴腊肉', 'Chinesebacon', '暂无', '镇巴县', '色泽鲜艳，瘦肉红润', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (78, '凤翔草编', '暂无', '暂无', '凤翔县', '暂无', '手工艺', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (79, '小炒泡馍', '暂无', '暂无', '暂无', '配料多，口味重', '暂无', '黄花菜、木耳、青菜等', NULL, NULL, NULL);
INSERT INTO `food` VALUES (80, '大肉辣子疙瘩', '暂无', '暂无', '关中市', '辣', '小吃', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (81, '关中锅盔', '暂无', '暂无', '关中市', '暂无', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (82, '山野菜', 'hillpotherb', '暂无', '暂无', '暂无', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (83, '留坝黑木耳', '暂无', '暂无', '留坝县', '朵大整齐，干耳质脆易折断，个体分散好，肉厚胶质半透明', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (84, '麦子泡', '暂无', '暂无', '澄城县', '鲜香', '小吃', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (85, '大荔炉齿面', '暂无', '暂无', '暂无', '暂无', '暂无', '面粉，辣椒', NULL, NULL, NULL);
INSERT INTO `food` VALUES (86, '岐山挂面', '暂无', '暂无', '岐山县', '鲜美', '小吃', '挂面', NULL, NULL, NULL);
INSERT INTO `food` VALUES (87, '大刀面', 'Machetesface', '暂无', '暂无', '清香、松软，光滑、爽口', '小吃快餐', '面粉', NULL, NULL, NULL);
INSERT INTO `food` VALUES (88, '窝窝面', '暂无', '暂无', '暂无', '可口', '暂无', '蘑菇、鸡蛋、肉米、核桃仁', NULL, NULL, NULL);
INSERT INTO `food` VALUES (89, '椽头蒸馍', '暂无', '暂无', '蒲城县', '香甜可口', '陕西', '面粉', NULL, NULL, NULL);
INSERT INTO `food` VALUES (90, '石子饼', '暂无', '圪烙桃、石头饼', '暂无', '山西小吃', '暂无', '麻子、花椒水、食盐', NULL, NULL, NULL);
INSERT INTO `food` VALUES (91, '暂无', '暂无', '暂无', '暂无', '暂无', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (92, '麟游布尔羊', '暂无', '暂无', '麟游县', '暂无', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (93, '凉拌驴肉', '暂无', '暂无', '暂无', '肉美、味鲜、辣', '凉拌', '卤驴肉，蒜子，葱', NULL, NULL, NULL);
INSERT INTO `food` VALUES (94, '汉中面皮', 'HanzhongMianpi', '暂无', '陕西汉中以及全国各地', '软糯香辣、口感爽滑、筋道', '陕菜、陕西小吃', '大米，面粉，红薯淀粉，土豆淀粉，黄瓜丝，胡萝卜丝，菠菜，黄豆芽，芹菜', NULL, NULL, NULL);
INSERT INTO `food` VALUES (95, '洛南核桃', 'Luonanwalnut', '暂无', '洛南县', '果大、皮薄、大小均匀', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (96, '扶风鹿糕', '暂无', '暂无', '扶风县', '朱红小梅花鹿图案', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (97, '耀县辣椒', '暂无', '暂无', '耀县', '身条细长、颜泽艳红、肉厚味美等', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (98, '麟游血条面', '暂无', '暂无', '暂无', '香，辣', '小吃', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (99, '扶风鹿羔馍', '暂无', '暂无', '扶风县', '暂无', '小吃', '小麦面', NULL, NULL, NULL);
INSERT INTO `food` VALUES (100, '温拌腰丝', '暂无', '暂无', '西安市', '鲜香爽口', '陕菜', '暂无', NULL, NULL, '温拌腰丝是一道陕西西安特色菜品，由唐代羊皮花丝演变而来，因为用猪腰子和其他辅料、调料、以及温拌的方法制成而得名。它是一款用低档料烹制成高档菜的代表作之一。由于刀工细致，烹调方法考究，制作出的菜肴腰丝脆嫩，姜香、蒜香以及花椒的香味相得益彰，味道浓醇，清爽利口。');
INSERT INTO `food` VALUES (101, '蜜汁南瓜', '暂无', '暂无', '暂无', '口感绵软，香甜怡人', '西北', '南瓜，冰糖，色拉油，白糖', NULL, NULL, NULL);
INSERT INTO `food` VALUES (102, '山阳龙须草', '暂无', '暂无', '暂无', '暂无', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (103, '葱花肉饼', '暂无', '暂无', '暂无', '暂无', '暂无', '暂无', NULL, NULL, '相传唐朝年间，百姓为感激玄奘从西域取经归来， 分别带着寓意千卷佛经的各种食品来古城长安（现西安市）祭奠玄奘，后来一位御厨将此食品带到宫廷当中，经过精心改良成为了宫廷非常独特的一种御用点心，时过境迁，这种独特的宫廷御膳又流传到民间被称为：“千层肉饼”，并历经千年流传。');
INSERT INTO `food` VALUES (104, '合阳黑池羊肉糊卜', '暂无', '暂无', '合阳县', '暂无', '暂无', '羊肉', NULL, NULL, NULL);
INSERT INTO `food` VALUES (105, '耀县咸汤面', '暂无', '暂无', '暂无', '香辣可口', '家常菜', '上等面粉', NULL, NULL, NULL);
INSERT INTO `food` VALUES (106, '铜川苹果', '暂无', '暂无', '铜川市', '暂无', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (107, '大荔水磨丝', '暂无', '暂无', '暂无', '脆，爽', '陕菜', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (108, '暂无', '暂无', '暂无', '暂无', '暂无', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (109, '丹凤天麻', 'danfengtianma', '暂无', '丹凤县', '暂无', '中药材', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (110, '芝麻烧饼', '暂无', '暂无', '暂无', '暂无', '暂无', '面粉，芝麻', NULL, NULL, NULL);
INSERT INTO `food` VALUES (111, '油泼扯面', '暂无', '陕西扯面、拉面、拽面、抻面、桢条面、香棍面等', '暂无', '辣', '和面，抻面，油泼面', '面粉，菜籽油', NULL, NULL, NULL);
INSERT INTO `food` VALUES (112, '甑糕', 'Cakecaldron', '水晶龙凤糕', '暂无', '色泽鲜艳，红白相间，粘甜味美', '暂无', '糯米，红枣或蜜枣，红豆', NULL, NULL, '甑糕小吃历史悠久。甑，是中国古代一种非常古老的蒸器，有陶制、铜制、木制、铁制等，后经民间传承，将铁甑保留，而用之蒸制的粘糕也别有风味。');
INSERT INTO `food` VALUES (113, '庄里合儿饼', '暂无', '暂无', '富平县', '味香醇厚，甘甜如蜜', '合儿饼', '尖柿子', NULL, NULL, NULL);
INSERT INTO `food` VALUES (114, '杨凌旗花面', '暂无', '暂无', '暂无', '暂无', '暂无', '小麦面', NULL, NULL, NULL);
INSERT INTO `food` VALUES (115, '洋县黑米', '暂无', '暂无', '洋县', '深棕带黑，疏松爽口，味美醇香', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (116, '玫瑰镜糕', '暂无', '暂无', '暂无', '软糯香甜', '暂无', '白糖等', NULL, NULL, '玫瑰镜糕，民族特色的老字号小吃，是投资者争相开发的香饽饽，以糯米粉为主料，用特殊木料手工雕刻成的蒸笼蒸制而成，形状似圆镜，一分钟左右可蒸熟，吃起来满嘴余香。\r\n玫瑰镜糕，民族特色的老字号小吃，是投资者争相开发的香饽饽，以糯米粉为主料，用特殊木料手工雕刻成的蒸笼蒸制而成，形状似圆镜，一分钟左右可蒸熟，吃起来满嘴余香。\r\n玫瑰镜糕，民族特色的老字号小吃，是投资者争相开发的香饽饽，以糯米粉为主料，用特殊木料手工雕刻成的蒸笼蒸制而成，形状似圆镜，一分钟左右可蒸熟，吃起来满嘴余香。\r\n玫瑰镜糕，民族特色的老字号小吃，是投资者争相开发的香饽饽，以糯米粉为主料，用特殊木料手工雕刻成的蒸笼蒸制而成，形状似圆镜，一分钟左右可蒸熟，吃起来满嘴余香。\r\n');
INSERT INTO `food` VALUES (117, '陕西八宝饭', '暂无', '暂无', '暂无', '色泽绚丽、筋粘绵甜', '暂无', '桂元肉、青红丝', NULL, NULL, NULL);
INSERT INTO `food` VALUES (118, '德懋恭水晶饼', '暂无', '暂无', '西安市', '暂无', '暂无', '果脯，(桃仁、瓜仁等', NULL, NULL, NULL);
INSERT INTO `food` VALUES (119, '梆梆肉', '暂无', '暂无', '暂无', '醇香', '陕菜系', '猪肉及其肠、肚、心、肝', NULL, NULL, '梆梆肉是陕西西安一道特色风味小吃，距今已有100多年的历史，系采用锯末熟熏猪肉、内脏（尤其是猪大肠）而成，肉嫩味醇，熏香浓郁。');
INSERT INTO `food` VALUES (120, '菜疙瘩', '暂无', '洋芋叉叉', '暂无', '酸辣', '秦菜', '小麦，面粉', NULL, NULL, NULL);
INSERT INTO `food` VALUES (121, '大荔枣肉沫糊', '暂无', '暂无', '大荔县', '暂无', '暂无', '面粉、豇豆、碱面', NULL, NULL, NULL);
INSERT INTO `food` VALUES (122, '略阳灰搅团', '暂无', '暂无', '略阳县', '咸鲜', '中餐、小吃', '包谷粒', NULL, NULL, NULL);
INSERT INTO `food` VALUES (123, '富平麻食', '暂无', '圪饦儿、饽秃儿、圪团儿、圪垛垛、圪脱、苛秃儿', '富平县', '入味、滑爽、易消化', '面食', '面粉，水', NULL, NULL, NULL);
INSERT INTO `food` VALUES (124, '汉中棕箱', '暂无', '暂无', '汉中市', '暂无', '手工艺品', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (125, '安康窝窝面', '暂无', '暂无', '安康市', '面韧软，味鲜香。', '陕西小吃', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (126, '汉中米面皮', 'HanzhongMianpi（Hanzhongricenoodle，Hanzhongricesheetjelly）', '暂无', '汉中市', '软糯香辣', '特色小吃', '稻米', NULL, NULL, NULL);
INSERT INTO `food` VALUES (127, '三原蓼花糖', 'Sanyuansmartweedtakesugar', '暂无', '暂无', '丰满圆润，内为网状', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (128, '子洲果馅', '暂无', '暂无', '子洲县', '酥、甜、香', '小吃', '面粉、红枣、食用油', NULL, NULL, NULL);
INSERT INTO `food` VALUES (129, '麻食', 'tutmaq', '秃秃麻什、秃秃麻失、猫耳朵、麻食子、麻绳儿、批耳子、', '西北地区', '入味、滑爽、易消化', '面食', '面粉，水', NULL, NULL, NULL);
INSERT INTO `food` VALUES (130, '周至猕猴桃干', '暂无', '暂无', '周至县', '暂无', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (131, '凤翔腊驴肉', '暂无', '暂无', '凤翔区', '咸', '小吃', '驴肉，腊肉', NULL, NULL, NULL);
INSERT INTO `food` VALUES (132, '菜豆腐', '暂无', '暂无', '暂无', '后味清幽淡远，略带甘甜', '陕西菜', '豆腐', NULL, NULL, NULL);
INSERT INTO `food` VALUES (133, '老童家腊羊肉', '暂无', '暂无', '西安市', '质地酥烂，香醇可口', '陕西菜', '肉', '卤', '色泽红润', '陕西省西安市著名小吃。相传1900年八国联军攻打北京，慈禧太后携光绪皇帝逃难来西安，品尝了老童家腊羊肉后大加赞赏。 并由兵部尚书赵福桥之师邢庭维手书“辇止坡’三字，制成匾额悬挂门口，从此老童家腊羊肉名闻遐迩。近百年来长盛不衰。');
INSERT INTO `food` VALUES (134, '臊子馄饨', '暂无', '暂无', '暂无', '暂无', '暂无', '白萝卜，面皮', NULL, NULL, NULL);
INSERT INTO `food` VALUES (135, '奶汤锅子鱼', 'Fishsouppot', '暂无', '暂无', '咸鲜', '陕菜', '鲤鱼，猪肉，虾米，冬笋，粉丝，菠菜，火腿，香菇，萝卜，豆腐，小麦面粉', NULL, NULL, NULL);
INSERT INTO `food` VALUES (136, '礼泉烙面', '暂无', '暂无', '礼泉县', '暂无', '暂无', '面粉', NULL, NULL, NULL);
INSERT INTO `food` VALUES (137, '姜丝拌汤', '暂无', '暂无', '暂无', '鲜美', '汤', '姜丝', NULL, NULL, '姜丝拌汤是陕西西安一带传统小吃之一，夏秋季节应时美食，有发汗、暖胃之功效。红、黄、绿各色相映，飘浮汤面，酸辣爽口，富生姜辛香味。');
INSERT INTO `food` VALUES (138, '铜川大刀面', '暂无', '暂无', '铜川市', '暂无', '暂无', '面粉，肉臊子', NULL, NULL, NULL);
INSERT INTO `food` VALUES (139, '烙馍', 'Bakedbun，luǒmō', '暂无', '暂无', '暂无', '苏北菜，皖北菜', '面粉', NULL, NULL, NULL);
INSERT INTO `food` VALUES (140, '辣子蒜羊血', '暂无', '暂无', '暂无', '微辣', '小吃', '盐、酱、醋、蒜水', NULL, NULL, NULL);
INSERT INTO `food` VALUES (142, '菠菜面', 'Spinachnoodles', '暂无', '暂无', '鲜香', '特色面食小吃', '面', NULL, NULL, NULL);
INSERT INTO `food` VALUES (143, '陕西锅盔馍', '暂无', '暂无', '陕西省', '暂无', '小吃', '麦面', NULL, NULL, NULL);
INSERT INTO `food` VALUES (144, '宝鸡豆腐包子', '暂无', '暂无', '宝鸡市', '清素味鲜', '陕菜', '面粉、豆腐', NULL, NULL, NULL);
INSERT INTO `food` VALUES (145, '留坝西洋参', '暂无', '暂无', '暂无', '暂无', '中药材', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (146, '彬州御面', 'BinxianCountyroyalface', '玉面、淤面御面', '滨州市', '暂无', '暂无', '面粉、矿物质水', NULL, NULL, NULL);
INSERT INTO `food` VALUES (147, '钟楼小奶糕', '暂无', '暂无', '暂无', '暂无', '暂无', '奶油', NULL, NULL, '钟楼小奶糕，20世纪70年代，在西安钟楼附近有一家小铺面的钟楼食品店，最早的小奶糕就是从这里诞生的，也因此得名“钟楼小奶糕”。其以低廉的价格和堪比冰激凌的口味，深受西安市民的喜爱。');
INSERT INTO `food` VALUES (148, '四十里铺羊肉面', '暂无', '暂无', '榆林市', '鲜香可口', '陕西菜', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (149, '太后饼', 'taihoubing', '暂无', '富平县', '甜', '特色小吃', '面粉，板油', NULL, NULL, NULL);
INSERT INTO `food` VALUES (150, '丹凤葡萄酒', '暂无', '暂无', '丹凤县', '暂无', '暂无', '暂无', NULL, NULL, NULL);
INSERT INTO `food` VALUES (151, '宝鸡茶酥', '暂无', '暂无', '宝鸡市', '外皮酥脆、内层松软、油而不腻，入口酥脆味道美', '陕西小吃', '菜籽油、调料等', NULL, NULL, NULL);
INSERT INTO `food` VALUES (152, '洋芋糍粑', '暂无', '洋芋搅团,洋芋粑粑', '陕西省', '暂无', '地方小吃', '辣椒,陈醋,食用油等', NULL, NULL, NULL);
INSERT INTO `food` VALUES (154, '肉夹馍', 'Chinese hamburger', '中式汉堡', '西安市', '咸、鲜、香、饼酥肉香，爽而不腻', '陕西小吃，关中小吃，东府小吃', '面粉，猪腿肉', NULL, '外观焦黄，条纹清晰，内部呈层状，饼体发胀，皮酥里嫩', '把馍（烧饼）掰开加食材的吃法，就叫夹馍。夹肉的叫肉夹馍，夹菜的叫菜夹馍，还有大油夹馍、辣子夹馍等。');
INSERT INTO `food` VALUES (155, '凉皮', 'Cold noodle', NULL, '陕西省', '酸甜、香辣、麻辣、皮滑鲜嫩、咸辣爽口', '西府小吃，陕西小吃', '高筋面粉，酵母粉，水，盐，味精，糖，辣椒，黄瓜，醋，豆芽，大蒜，酱油', NULL, NULL, '凉皮，起源于陕西关中地区的汉族传统美食，是擀面皮、面皮、米皮、酿皮的统称。流行于中国北方地区。是不可多得的天然绿色无公害食品。因原料、制作方法、地域不同，有热米（面）皮、擀面皮、烙面皮、酿皮等。口味有麻辣，酸甜，香辣等各种口味。 凉皮历史悠久，据说源于秦始皇时期，距今已有两千多年历史。');
INSERT INTO `food` VALUES (156, '羊肉泡馍', 'Pita Bread Soaked in lamb Soup', NULL, '陕西渭南固市镇，陕西咸阳礼泉县', '咸鲜味', '陕菜，西安（渭南）小吃', '胡椒粉，烤饼，羊肉，香菜，姜，粉丝', '烙、煮', '料重味醇，肉烂汤浓，肥而不腻，营养丰富，香气四溢，', '羊肉泡馍，亦称羊肉泡，古称“羊羹”，关中汉族风味美馔，源自陕西省渭南市固市镇。它烹制精细，料重味醇，肉烂汤浓，肥而不腻，营养丰富，香气四溢，诱人食欲，食后回味无穷。北宋著名诗人苏轼留有“陇馔有熊腊，秦烹唯羊羹”的诗句。因它暖胃耐饥，素为陕西人民所喜爱，外宾来陕也争先品尝，以饱口福。羊肉泡馍已成为陕西名吃的“总代表”。');

-- ----------------------------
-- Table structure for food_and_person
-- ----------------------------
DROP TABLE IF EXISTS `food_and_person`;
CREATE TABLE `food_and_person`  (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `person_introduction` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `food_id` int(11) NOT NULL,
  PRIMARY KEY (`person_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for food_to_city
-- ----------------------------
DROP TABLE IF EXISTS `food_to_city`;
CREATE TABLE `food_to_city`  (
  `food_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  INDEX `food_id`(`food_id`) USING BTREE,
  INDEX `city_id2`(`city_id`) USING BTREE,
  CONSTRAINT `city_id2` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `food_id` FOREIGN KEY (`food_id`) REFERENCES `food` (`food_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of food_to_city
-- ----------------------------
INSERT INTO `food_to_city` VALUES (47, 38);
INSERT INTO `food_to_city` VALUES (42, 110);
INSERT INTO `food_to_city` VALUES (42, 112);
INSERT INTO `food_to_city` VALUES (42, 111);
INSERT INTO `food_to_city` VALUES (42, 116);
INSERT INTO `food_to_city` VALUES (42, 117);
INSERT INTO `food_to_city` VALUES (46, 110);
INSERT INTO `food_to_city` VALUES (46, 115);
INSERT INTO `food_to_city` VALUES (148, 86);
INSERT INTO `food_to_city` VALUES (148, 93);
INSERT INTO `food_to_city` VALUES (148, 97);
INSERT INTO `food_to_city` VALUES (12, 1);
INSERT INTO `food_to_city` VALUES (12, 9);
INSERT INTO `food_to_city` VALUES (57, 79);
INSERT INTO `food_to_city` VALUES (57, 74);
INSERT INTO `food_to_city` VALUES (61, 37);
INSERT INTO `food_to_city` VALUES (137, 1);
INSERT INTO `food_to_city` VALUES (5, 78);
INSERT INTO `food_to_city` VALUES (48, 19);
INSERT INTO `food_to_city` VALUES (16, 33);
INSERT INTO `food_to_city` VALUES (16, 39);
INSERT INTO `food_to_city` VALUES (133, 1);
INSERT INTO `food_to_city` VALUES (55, 19);
INSERT INTO `food_to_city` VALUES (33, 53);
INSERT INTO `food_to_city` VALUES (33, 48);
INSERT INTO `food_to_city` VALUES (25, 25);
INSERT INTO `food_to_city` VALUES (53, 99);
INSERT INTO `food_to_city` VALUES (53, 101);
INSERT INTO `food_to_city` VALUES (106, 15);
INSERT INTO `food_to_city` VALUES (106, 19);
INSERT INTO `food_to_city` VALUES (106, 17);
INSERT INTO `food_to_city` VALUES (106, 18);
INSERT INTO `food_to_city` VALUES (138, 15);
INSERT INTO `food_to_city` VALUES (147, 1);
INSERT INTO `food_to_city` VALUES (11, 9);
INSERT INTO `food_to_city` VALUES (124, 74);
INSERT INTO `food_to_city` VALUES (85, 48);
INSERT INTO `food_to_city` VALUES (85, 54);
INSERT INTO `food_to_city` VALUES (71, 20);
INSERT INTO `food_to_city` VALUES (71, 24);
INSERT INTO `food_to_city` VALUES (127, 37);
INSERT INTO `food_to_city` VALUES (131, 24);
INSERT INTO `food_to_city` VALUES (100, 1);
INSERT INTO `food_to_city` VALUES (75, 14);
INSERT INTO `food_to_city` VALUES (74, 26);
INSERT INTO `food_to_city` VALUES (132, 74);
INSERT INTO `food_to_city` VALUES (58, 74);
INSERT INTO `food_to_city` VALUES (136, 40);
INSERT INTO `food_to_city` VALUES (17, 53);
INSERT INTO `food_to_city` VALUES (62, 102);
INSERT INTO `food_to_city` VALUES (128, 86);
INSERT INTO `food_to_city` VALUES (128, 98);
INSERT INTO `food_to_city` VALUES (7, 24);
INSERT INTO `food_to_city` VALUES (70, 81);
INSERT INTO `food_to_city` VALUES (70, 1);
INSERT INTO `food_to_city` VALUES (64, 15);
INSERT INTO `food_to_city` VALUES (64, 18);
INSERT INTO `food_to_city` VALUES (76, 25);
INSERT INTO `food_to_city` VALUES (76, 20);
INSERT INTO `food_to_city` VALUES (107, 52);
INSERT INTO `food_to_city` VALUES (103, 1);
INSERT INTO `food_to_city` VALUES (6, 26);
INSERT INTO `food_to_city` VALUES (145, 84);
INSERT INTO `food_to_city` VALUES (30, 1);
INSERT INTO `food_to_city` VALUES (56, 86);
INSERT INTO `food_to_city` VALUES (45, 74);
INSERT INTO `food_to_city` VALUES (45, 81);
INSERT INTO `food_to_city` VALUES (73, 20);
INSERT INTO `food_to_city` VALUES (73, 24);
INSERT INTO `food_to_city` VALUES (43, 116);
INSERT INTO `food_to_city` VALUES (43, 110);
INSERT INTO `food_to_city` VALUES (151, 20);
INSERT INTO `food_to_city` VALUES (125, 99);
INSERT INTO `food_to_city` VALUES (102, 115);
INSERT INTO `food_to_city` VALUES (102, 111);
INSERT INTO `food_to_city` VALUES (37, 1);
INSERT INTO `food_to_city` VALUES (114, 46);
INSERT INTO `food_to_city` VALUES (24, 58);
INSERT INTO `food_to_city` VALUES (27, 90);
INSERT INTO `food_to_city` VALUES (27, 86);
INSERT INTO `food_to_city` VALUES (66, 93);
INSERT INTO `food_to_city` VALUES (122, 82);
INSERT INTO `food_to_city` VALUES (113, 57);
INSERT INTO `food_to_city` VALUES (78, 83);
INSERT INTO `food_to_city` VALUES (78, 74);
INSERT INTO `food_to_city` VALUES (99, 26);
INSERT INTO `food_to_city` VALUES (140, 33);
INSERT INTO `food_to_city` VALUES (28, 48);
INSERT INTO `food_to_city` VALUES (28, 52);
INSERT INTO `food_to_city` VALUES (28, 55);
INSERT INTO `food_to_city` VALUES (28, 54);
INSERT INTO `food_to_city` VALUES (28, 37);
INSERT INTO `food_to_city` VALUES (146, 33);
INSERT INTO `food_to_city` VALUES (121, 52);
INSERT INTO `food_to_city` VALUES (119, 1);
INSERT INTO `food_to_city` VALUES (149, 48);
INSERT INTO `food_to_city` VALUES (149, 57);
INSERT INTO `food_to_city` VALUES (3, 39);
INSERT INTO `food_to_city` VALUES (3, 33);
INSERT INTO `food_to_city` VALUES (98, 30);
INSERT INTO `food_to_city` VALUES (92, 30);
INSERT INTO `food_to_city` VALUES (144, 20);
INSERT INTO `food_to_city` VALUES (2, 51);
INSERT INTO `food_to_city` VALUES (2, 48);
INSERT INTO `food_to_city` VALUES (96, 26);
INSERT INTO `food_to_city` VALUES (96, 25);
INSERT INTO `food_to_city` VALUES (96, 24);
INSERT INTO `food_to_city` VALUES (39, 105);
INSERT INTO `food_to_city` VALUES (39, 99);
INSERT INTO `food_to_city` VALUES (115, 78);
INSERT INTO `food_to_city` VALUES (115, 74);
INSERT INTO `food_to_city` VALUES (40, 86);
INSERT INTO `food_to_city` VALUES (21, 1);
INSERT INTO `food_to_city` VALUES (89, 18);
INSERT INTO `food_to_city` VALUES (134, 58);
INSERT INTO `food_to_city` VALUES (88, 15);
INSERT INTO `food_to_city` VALUES (150, 113);
INSERT INTO `food_to_city` VALUES (38, 27);
INSERT INTO `food_to_city` VALUES (38, 12);
INSERT INTO `food_to_city` VALUES (38, 46);
INSERT INTO `food_to_city` VALUES (38, 42);
INSERT INTO `food_to_city` VALUES (38, 26);
INSERT INTO `food_to_city` VALUES (22, 74);
INSERT INTO `food_to_city` VALUES (22, 99);
INSERT INTO `food_to_city` VALUES (22, 81);
INSERT INTO `food_to_city` VALUES (105, 18);
INSERT INTO `food_to_city` VALUES (109, 110);
INSERT INTO `food_to_city` VALUES (109, 113);
INSERT INTO `food_to_city` VALUES (32, 38);
INSERT INTO `food_to_city` VALUES (32, 1);
INSERT INTO `food_to_city` VALUES (20, 48);
INSERT INTO `food_to_city` VALUES (20, 49);
INSERT INTO `food_to_city` VALUES (20, 1);
INSERT INTO `food_to_city` VALUES (94, 74);
INSERT INTO `food_to_city` VALUES (36, 48);
INSERT INTO `food_to_city` VALUES (36, 49);
INSERT INTO `food_to_city` VALUES (116, 1);
INSERT INTO `food_to_city` VALUES (79, 24);
INSERT INTO `food_to_city` VALUES (104, 53);
INSERT INTO `food_to_city` VALUES (15, 110);
INSERT INTO `food_to_city` VALUES (15, 113);
INSERT INTO `food_to_city` VALUES (112, 1);
INSERT INTO `food_to_city` VALUES (101, 60);
INSERT INTO `food_to_city` VALUES (95, 112);
INSERT INTO `food_to_city` VALUES (95, 110);
INSERT INTO `food_to_city` VALUES (90, 48);
INSERT INTO `food_to_city` VALUES (90, 55);
INSERT INTO `food_to_city` VALUES (34, 37);
INSERT INTO `food_to_city` VALUES (10, 20);
INSERT INTO `food_to_city` VALUES (126, 74);
INSERT INTO `food_to_city` VALUES (4, 9);
INSERT INTO `food_to_city` VALUES (4, 1);
INSERT INTO `food_to_city` VALUES (18, 52);
INSERT INTO `food_to_city` VALUES (13, 1);
INSERT INTO `food_to_city` VALUES (9, 59);
INSERT INTO `food_to_city` VALUES (84, 84);
INSERT INTO `food_to_city` VALUES (84, 74);
INSERT INTO `food_to_city` VALUES (86, 25);
INSERT INTO `food_to_city` VALUES (31, 51);
INSERT INTO `food_to_city` VALUES (31, 48);
INSERT INTO `food_to_city` VALUES (19, 1);
INSERT INTO `food_to_city` VALUES (123, 57);
INSERT INTO `food_to_city` VALUES (149, 57);
INSERT INTO `food_to_city` VALUES (154, 1);
INSERT INTO `food_to_city` VALUES (26, 86);

-- ----------------------------
-- Table structure for food_to_province
-- ----------------------------
DROP TABLE IF EXISTS `food_to_province`;
CREATE TABLE `food_to_province`  (
  `food_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  INDEX `food_id3`(`food_id`) USING BTREE,
  INDEX `province_id2`(`province_id`) USING BTREE,
  CONSTRAINT `food_id3` FOREIGN KEY (`food_id`) REFERENCES `food` (`food_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `province_id2` FOREIGN KEY (`province_id`) REFERENCES `province` (`province_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of food_to_province
-- ----------------------------
INSERT INTO `food_to_province` VALUES (29, 1);
INSERT INTO `food_to_province` VALUES (42, 1);
INSERT INTO `food_to_province` VALUES (81, 1);
INSERT INTO `food_to_province` VALUES (52, 1);
INSERT INTO `food_to_province` VALUES (46, 1);
INSERT INTO `food_to_province` VALUES (148, 1);
INSERT INTO `food_to_province` VALUES (117, 1);
INSERT INTO `food_to_province` VALUES (57, 1);
INSERT INTO `food_to_province` VALUES (61, 1);
INSERT INTO `food_to_province` VALUES (137, 1);
INSERT INTO `food_to_province` VALUES (5, 1);
INSERT INTO `food_to_province` VALUES (16, 1);
INSERT INTO `food_to_province` VALUES (133, 1);
INSERT INTO `food_to_province` VALUES (55, 1);
INSERT INTO `food_to_province` VALUES (33, 1);
INSERT INTO `food_to_province` VALUES (106, 1);
INSERT INTO `food_to_province` VALUES (138, 1);
INSERT INTO `food_to_province` VALUES (72, 1);
INSERT INTO `food_to_province` VALUES (11, 1);
INSERT INTO `food_to_province` VALUES (142, 1);
INSERT INTO `food_to_province` VALUES (152, 1);
INSERT INTO `food_to_province` VALUES (124, 1);
INSERT INTO `food_to_province` VALUES (85, 1);
INSERT INTO `food_to_province` VALUES (1, 1);
INSERT INTO `food_to_province` VALUES (71, 1);
INSERT INTO `food_to_province` VALUES (127, 1);
INSERT INTO `food_to_province` VALUES (131, 1);
INSERT INTO `food_to_province` VALUES (100, 1);
INSERT INTO `food_to_province` VALUES (74, 1);
INSERT INTO `food_to_province` VALUES (132, 1);
INSERT INTO `food_to_province` VALUES (118, 1);
INSERT INTO `food_to_province` VALUES (58, 1);
INSERT INTO `food_to_province` VALUES (136, 1);
INSERT INTO `food_to_province` VALUES (50, 1);
INSERT INTO `food_to_province` VALUES (17, 1);
INSERT INTO `food_to_province` VALUES (93, 1);
INSERT INTO `food_to_province` VALUES (128, 1);
INSERT INTO `food_to_province` VALUES (130, 1);
INSERT INTO `food_to_province` VALUES (7, 1);
INSERT INTO `food_to_province` VALUES (70, 1);
INSERT INTO `food_to_province` VALUES (64, 1);
INSERT INTO `food_to_province` VALUES (76, 1);
INSERT INTO `food_to_province` VALUES (67, 1);
INSERT INTO `food_to_province` VALUES (82, 1);
INSERT INTO `food_to_province` VALUES (120, 1);
INSERT INTO `food_to_province` VALUES (30, 1);
INSERT INTO `food_to_province` VALUES (56, 1);
INSERT INTO `food_to_province` VALUES (45, 1);
INSERT INTO `food_to_province` VALUES (73, 1);
INSERT INTO `food_to_province` VALUES (43, 1);
INSERT INTO `food_to_province` VALUES (151, 1);
INSERT INTO `food_to_province` VALUES (125, 1);
INSERT INTO `food_to_province` VALUES (135, 1);
INSERT INTO `food_to_province` VALUES (37, 1);
INSERT INTO `food_to_province` VALUES (114, 1);
INSERT INTO `food_to_province` VALUES (24, 1);
INSERT INTO `food_to_province` VALUES (27, 1);
INSERT INTO `food_to_province` VALUES (66, 1);
INSERT INTO `food_to_province` VALUES (122, 1);
INSERT INTO `food_to_province` VALUES (113, 1);
INSERT INTO `food_to_province` VALUES (78, 1);
INSERT INTO `food_to_province` VALUES (99, 1);
INSERT INTO `food_to_province` VALUES (140, 1);
INSERT INTO `food_to_province` VALUES (28, 1);
INSERT INTO `food_to_province` VALUES (146, 1);
INSERT INTO `food_to_province` VALUES (60, 1);
INSERT INTO `food_to_province` VALUES (119, 1);
INSERT INTO `food_to_province` VALUES (149, 1);
INSERT INTO `food_to_province` VALUES (3, 1);
INSERT INTO `food_to_province` VALUES (26, 1);
INSERT INTO `food_to_province` VALUES (98, 1);
INSERT INTO `food_to_province` VALUES (92, 1);
INSERT INTO `food_to_province` VALUES (144, 1);
INSERT INTO `food_to_province` VALUES (2, 1);
INSERT INTO `food_to_province` VALUES (96, 1);
INSERT INTO `food_to_province` VALUES (39, 1);
INSERT INTO `food_to_province` VALUES (115, 1);
INSERT INTO `food_to_province` VALUES (59, 1);
INSERT INTO `food_to_province` VALUES (40, 1);
INSERT INTO `food_to_province` VALUES (21, 1);
INSERT INTO `food_to_province` VALUES (89, 1);
INSERT INTO `food_to_province` VALUES (134, 1);
INSERT INTO `food_to_province` VALUES (150, 1);
INSERT INTO `food_to_province` VALUES (38, 1);
INSERT INTO `food_to_province` VALUES (22, 1);
INSERT INTO `food_to_province` VALUES (110, 1);
INSERT INTO `food_to_province` VALUES (105, 1);
INSERT INTO `food_to_province` VALUES (109, 1);
INSERT INTO `food_to_province` VALUES (32, 1);
INSERT INTO `food_to_province` VALUES (20, 1);
INSERT INTO `food_to_province` VALUES (94, 1);
INSERT INTO `food_to_province` VALUES (36, 1);
INSERT INTO `food_to_province` VALUES (79, 1);
INSERT INTO `food_to_province` VALUES (15, 1);
INSERT INTO `food_to_province` VALUES (111, 1);
INSERT INTO `food_to_province` VALUES (95, 1);
INSERT INTO `food_to_province` VALUES (90, 1);
INSERT INTO `food_to_province` VALUES (34, 1);
INSERT INTO `food_to_province` VALUES (143, 1);
INSERT INTO `food_to_province` VALUES (10, 1);
INSERT INTO `food_to_province` VALUES (126, 1);
INSERT INTO `food_to_province` VALUES (4, 1);
INSERT INTO `food_to_province` VALUES (18, 1);
INSERT INTO `food_to_province` VALUES (13, 1);
INSERT INTO `food_to_province` VALUES (9, 1);
INSERT INTO `food_to_province` VALUES (84, 1);
INSERT INTO `food_to_province` VALUES (86, 1);
INSERT INTO `food_to_province` VALUES (31, 1);
INSERT INTO `food_to_province` VALUES (80, 1);

-- ----------------------------
-- Table structure for food_to_region
-- ----------------------------
DROP TABLE IF EXISTS `food_to_region`;
CREATE TABLE `food_to_region`  (
  `food_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  INDEX `food_id2`(`food_id`) USING BTREE,
  INDEX `region_id3`(`region_id`) USING BTREE,
  CONSTRAINT `food_id2` FOREIGN KEY (`food_id`) REFERENCES `food` (`food_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `region_id3` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of food_to_region
-- ----------------------------
INSERT INTO `food_to_region` VALUES (81, 2);
INSERT INTO `food_to_region` VALUES (148, 1);
INSERT INTO `food_to_region` VALUES (5, 3);
INSERT INTO `food_to_region` VALUES (77, 3);
INSERT INTO `food_to_region` VALUES (50, 2);
INSERT INTO `food_to_region` VALUES (93, 2);
INSERT INTO `food_to_region` VALUES (128, 1);
INSERT INTO `food_to_region` VALUES (76, 2);
INSERT INTO `food_to_region` VALUES (82, 2);
INSERT INTO `food_to_region` VALUES (120, 2);
INSERT INTO `food_to_region` VALUES (120, 1);
INSERT INTO `food_to_region` VALUES (73, 2);
INSERT INTO `food_to_region` VALUES (114, 2);
INSERT INTO `food_to_region` VALUES (78, 3);
INSERT INTO `food_to_region` VALUES (26, 2);
INSERT INTO `food_to_region` VALUES (112, 2);
INSERT INTO `food_to_region` VALUES (101, 1);
INSERT INTO `food_to_region` VALUES (18, 2);

-- ----------------------------
-- Table structure for mapping
-- ----------------------------
DROP TABLE IF EXISTS `mapping`;
CREATE TABLE `mapping`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 273 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mapping
-- ----------------------------
INSERT INTO `mapping` VALUES (1, '蓝田泡油糕', 'food');
INSERT INTO `mapping` VALUES (2, '潼关酱笋', 'food');
INSERT INTO `mapping` VALUES (3, '乾县豆腐脑', 'food');
INSERT INTO `mapping` VALUES (4, '临潼石榴', 'food');
INSERT INTO `mapping` VALUES (5, '枣糕馍', 'food');
INSERT INTO `mapping` VALUES (6, '扶风苹果', 'food');
INSERT INTO `mapping` VALUES (7, '凤翔腊驴腿', 'food');
INSERT INTO `mapping` VALUES (8, '华阴擀馍', 'food');
INSERT INTO `mapping` VALUES (9, '西府醋粉', 'food');
INSERT INTO `mapping` VALUES (10, '临潼醪糟', 'food');
INSERT INTO `mapping` VALUES (11, '西安黄桂柿子饼', 'food');
INSERT INTO `mapping` VALUES (12, '贵妃饼', 'food');
INSERT INTO `mapping` VALUES (13, '锅盔', 'food');
INSERT INTO `mapping` VALUES (14, '合阳辣子豆腐', 'food');
INSERT INTO `mapping` VALUES (15, '大荔月牙烧饼', 'food');
INSERT INTO `mapping` VALUES (16, '菜豆腐', 'food');
INSERT INTO `mapping` VALUES (17, '水晶饼', 'food');
INSERT INTO `mapping` VALUES (18, '油发笋丝', 'food');
INSERT INTO `mapping` VALUES (19, '汉中浆水面', 'food');
INSERT INTO `mapping` VALUES (20, '酸菜炒米', 'food');
INSERT INTO `mapping` VALUES (21, '韩城羊肉臊子饸饹', 'food');
INSERT INTO `mapping` VALUES (22, '岐山锅盔', 'food');
INSERT INTO `mapping` VALUES (23, '面筋凉皮', 'food');
INSERT INTO `mapping` VALUES (24, '横山羊肉', 'food');
INSERT INTO `mapping` VALUES (25, '水盆羊肉', 'food');
INSERT INTO `mapping` VALUES (26, '揽饭', 'food');
INSERT INTO `mapping` VALUES (27, '贾三灌汤包子', 'food');
INSERT INTO `mapping` VALUES (28, '潼关酱菜', 'food');
INSERT INTO `mapping` VALUES (29, '泾阳羊肉泡馍', 'food');
INSERT INTO `mapping` VALUES (30, '踅面', 'food');
INSERT INTO `mapping` VALUES (31, '白封肉', 'food');
INSERT INTO `mapping` VALUES (32, '烧肘子', 'food');
INSERT INTO `mapping` VALUES (33, '时辰包子', 'food');
INSERT INTO `mapping` VALUES (34, '油酥饼', 'food');
INSERT INTO `mapping` VALUES (35, '眉县牛心柿', 'food');
INSERT INTO `mapping` VALUES (36, '岚皋魔芋', 'food');
INSERT INTO `mapping` VALUES (37, '榆林豆腐', 'food');
INSERT INTO `mapping` VALUES (38, '酸梅粉', 'food');
INSERT INTO `mapping` VALUES (39, '商洛核桃', 'food');
INSERT INTO `mapping` VALUES (40, '镇安大板栗', 'food');
INSERT INTO `mapping` VALUES (41, '洋芋糍粑', 'food');
INSERT INTO `mapping` VALUES (42, '根面角', 'food');
INSERT INTO `mapping` VALUES (43, '山阳核桃', 'food');
INSERT INTO `mapping` VALUES (44, '泾阳凉皮', 'food');
INSERT INTO `mapping` VALUES (45, '宜君农民画', 'food');
INSERT INTO `mapping` VALUES (46, '落葵', 'food');
INSERT INTO `mapping` VALUES (47, '岐山面', 'food');
INSERT INTO `mapping` VALUES (48, '鹿邑试量狗肉', 'food');
INSERT INTO `mapping` VALUES (49, '柱顶石馍', 'food');
INSERT INTO `mapping` VALUES (50, '汉阴蕨粉皮子', 'food');
INSERT INTO `mapping` VALUES (51, '秦岭土蜂蜜', 'food');
INSERT INTO `mapping` VALUES (52, '宜君核桃', 'food');
INSERT INTO `mapping` VALUES (53, '榆林炸豆奶', 'food');
INSERT INTO `mapping` VALUES (54, '西乡牛肉干', 'food');
INSERT INTO `mapping` VALUES (55, '梆梆面', 'food');
INSERT INTO `mapping` VALUES (56, '商芝肉', 'food');
INSERT INTO `mapping` VALUES (57, '石门麻辣豆瓣鱼', 'food');
INSERT INTO `mapping` VALUES (58, '泡泡油糕', 'food');
INSERT INTO `mapping` VALUES (59, '石泉豆腐干', 'food');
INSERT INTO `mapping` VALUES (60, '荞面凉粉', 'food');
INSERT INTO `mapping` VALUES (61, '瓜棱纹黑釉瓷执壶', 'food');
INSERT INTO `mapping` VALUES (62, '油茶炒面', 'food');
INSERT INTO `mapping` VALUES (63, '水炒羊肉', 'food');
INSERT INTO `mapping` VALUES (64, '城固面皮', 'food');
INSERT INTO `mapping` VALUES (65, '孝义柿饼', 'food');
INSERT INTO `mapping` VALUES (66, '芝麻饼', 'food');
INSERT INTO `mapping` VALUES (67, '王家核桃馍', 'food');
INSERT INTO `mapping` VALUES (68, '凤翔豆花泡馍', 'food');
INSERT INTO `mapping` VALUES (69, '三皮丝', 'food');
INSERT INTO `mapping` VALUES (70, '凤翔泥塑', 'food');
INSERT INTO `mapping` VALUES (71, '扶风鹿糕馍', 'food');
INSERT INTO `mapping` VALUES (72, '高陵石头馍', 'food');
INSERT INTO `mapping` VALUES (73, '岐山擀面皮', 'food');
INSERT INTO `mapping` VALUES (74, '腊肉', 'food');
INSERT INTO `mapping` VALUES (75, '镇巴腊肉', 'food');
INSERT INTO `mapping` VALUES (76, '凤翔草编', 'food');
INSERT INTO `mapping` VALUES (77, '小炒泡馍', 'food');
INSERT INTO `mapping` VALUES (78, '大肉辣子疙瘩', 'food');
INSERT INTO `mapping` VALUES (79, '关中锅盔', 'food');
INSERT INTO `mapping` VALUES (80, '山野菜', 'food');
INSERT INTO `mapping` VALUES (81, '留坝黑木耳', 'food');
INSERT INTO `mapping` VALUES (82, '麦子泡', 'food');
INSERT INTO `mapping` VALUES (83, '大荔炉齿面', 'food');
INSERT INTO `mapping` VALUES (84, '岐山挂面', 'food');
INSERT INTO `mapping` VALUES (85, '大刀面', 'food');
INSERT INTO `mapping` VALUES (86, '窝窝面', 'food');
INSERT INTO `mapping` VALUES (87, '椽头蒸馍', 'food');
INSERT INTO `mapping` VALUES (88, '石子饼', 'food');
INSERT INTO `mapping` VALUES (89, '暂无', 'food');
INSERT INTO `mapping` VALUES (90, '麟游布尔羊', 'food');
INSERT INTO `mapping` VALUES (91, '凉拌驴肉', 'food');
INSERT INTO `mapping` VALUES (92, '汉中面皮', 'food');
INSERT INTO `mapping` VALUES (93, '洛南核桃', 'food');
INSERT INTO `mapping` VALUES (94, '扶风鹿糕', 'food');
INSERT INTO `mapping` VALUES (95, '耀县辣椒', 'food');
INSERT INTO `mapping` VALUES (96, '麟游血条面', 'food');
INSERT INTO `mapping` VALUES (97, '扶风鹿羔馍', 'food');
INSERT INTO `mapping` VALUES (98, '温拌腰丝', 'food');
INSERT INTO `mapping` VALUES (99, '蜜汁南瓜', 'food');
INSERT INTO `mapping` VALUES (100, '山阳龙须草', 'food');
INSERT INTO `mapping` VALUES (101, '葱花肉饼', 'food');
INSERT INTO `mapping` VALUES (102, '合阳黑池羊肉糊卜', 'food');
INSERT INTO `mapping` VALUES (103, '耀县咸汤面', 'food');
INSERT INTO `mapping` VALUES (104, '铜川苹果', 'food');
INSERT INTO `mapping` VALUES (105, '大荔水磨丝', 'food');
INSERT INTO `mapping` VALUES (106, '暂无', 'food');
INSERT INTO `mapping` VALUES (107, '丹凤天麻', 'food');
INSERT INTO `mapping` VALUES (108, '芝麻烧饼', 'food');
INSERT INTO `mapping` VALUES (109, '油泼扯面', 'food');
INSERT INTO `mapping` VALUES (110, '甑糕', 'food');
INSERT INTO `mapping` VALUES (111, '庄里合儿饼', 'food');
INSERT INTO `mapping` VALUES (112, '杨凌旗花面', 'food');
INSERT INTO `mapping` VALUES (113, '洋县黑米', 'food');
INSERT INTO `mapping` VALUES (114, '玫瑰镜糕', 'food');
INSERT INTO `mapping` VALUES (115, '陕西八宝饭', 'food');
INSERT INTO `mapping` VALUES (116, '德懋恭水晶饼', 'food');
INSERT INTO `mapping` VALUES (117, '梆梆肉', 'food');
INSERT INTO `mapping` VALUES (118, '菜疙瘩', 'food');
INSERT INTO `mapping` VALUES (119, '大荔枣肉沫糊', 'food');
INSERT INTO `mapping` VALUES (120, '略阳灰搅团', 'food');
INSERT INTO `mapping` VALUES (121, '富平麻食', 'food');
INSERT INTO `mapping` VALUES (122, '汉中棕箱', 'food');
INSERT INTO `mapping` VALUES (123, '安康窝窝面', 'food');
INSERT INTO `mapping` VALUES (124, '汉中米面皮', 'food');
INSERT INTO `mapping` VALUES (125, '三原蓼花糖', 'food');
INSERT INTO `mapping` VALUES (126, '子洲果馅', 'food');
INSERT INTO `mapping` VALUES (127, '麻食', 'food');
INSERT INTO `mapping` VALUES (128, '周至猕猴桃干', 'food');
INSERT INTO `mapping` VALUES (129, '凤翔腊驴肉', 'food');
INSERT INTO `mapping` VALUES (130, '菜豆腐', 'food');
INSERT INTO `mapping` VALUES (131, '老童家腊羊肉', 'food');
INSERT INTO `mapping` VALUES (132, '臊子馄饨', 'food');
INSERT INTO `mapping` VALUES (133, '奶汤锅子鱼', 'food');
INSERT INTO `mapping` VALUES (134, '礼泉烙面', 'food');
INSERT INTO `mapping` VALUES (135, '姜丝拌汤', 'food');
INSERT INTO `mapping` VALUES (136, '铜川大刀面', 'food');
INSERT INTO `mapping` VALUES (137, '烙馍', 'food');
INSERT INTO `mapping` VALUES (138, '辣子蒜羊血', 'food');
INSERT INTO `mapping` VALUES (139, '菠菜面', 'food');
INSERT INTO `mapping` VALUES (140, '陕西锅盔馍', 'food');
INSERT INTO `mapping` VALUES (141, '宝鸡豆腐包子', 'food');
INSERT INTO `mapping` VALUES (142, '留坝西洋参', 'food');
INSERT INTO `mapping` VALUES (143, '彬州御面', 'food');
INSERT INTO `mapping` VALUES (144, '钟楼小奶糕', 'food');
INSERT INTO `mapping` VALUES (145, '四十里铺羊肉面', 'food');
INSERT INTO `mapping` VALUES (146, '太后饼', 'food');
INSERT INTO `mapping` VALUES (147, '丹凤葡萄酒', 'food');
INSERT INTO `mapping` VALUES (148, '宝鸡茶酥', 'food');
INSERT INTO `mapping` VALUES (149, '洋芋糍粑', 'food');
INSERT INTO `mapping` VALUES (150, '肉夹馍', 'food');
INSERT INTO `mapping` VALUES (151, '凉皮', 'food');
INSERT INTO `mapping` VALUES (152, '羊肉泡馍', 'food');
INSERT INTO `mapping` VALUES (153, '西安', 'city');
INSERT INTO `mapping` VALUES (154, '新城区', 'city');
INSERT INTO `mapping` VALUES (155, '碑林', 'city');
INSERT INTO `mapping` VALUES (156, '莲湖', 'city');
INSERT INTO `mapping` VALUES (157, '灞桥', 'city');
INSERT INTO `mapping` VALUES (158, '未央', 'city');
INSERT INTO `mapping` VALUES (159, '雁塔', 'city');
INSERT INTO `mapping` VALUES (160, '阎良', 'city');
INSERT INTO `mapping` VALUES (161, '临潼', 'city');
INSERT INTO `mapping` VALUES (162, '长安区', 'city');
INSERT INTO `mapping` VALUES (163, '蓝田', 'city');
INSERT INTO `mapping` VALUES (164, '周至', 'city');
INSERT INTO `mapping` VALUES (165, '户县', 'city');
INSERT INTO `mapping` VALUES (166, '高陵', 'city');
INSERT INTO `mapping` VALUES (167, '铜川', 'city');
INSERT INTO `mapping` VALUES (168, '王益', 'city');
INSERT INTO `mapping` VALUES (169, '印台', 'city');
INSERT INTO `mapping` VALUES (170, '耀州', 'city');
INSERT INTO `mapping` VALUES (171, '宜君', 'city');
INSERT INTO `mapping` VALUES (172, '宝鸡', 'city');
INSERT INTO `mapping` VALUES (173, '渭滨', 'city');
INSERT INTO `mapping` VALUES (174, '金台', 'city');
INSERT INTO `mapping` VALUES (175, '陈仓', 'city');
INSERT INTO `mapping` VALUES (176, '凤翔', 'city');
INSERT INTO `mapping` VALUES (177, '岐山', 'city');
INSERT INTO `mapping` VALUES (178, '扶风', 'city');
INSERT INTO `mapping` VALUES (179, '眉县', 'city');
INSERT INTO `mapping` VALUES (180, '陇县', 'city');
INSERT INTO `mapping` VALUES (181, '千阳', 'city');
INSERT INTO `mapping` VALUES (182, '麟游', 'city');
INSERT INTO `mapping` VALUES (183, '凤县', 'city');
INSERT INTO `mapping` VALUES (184, '太白', 'city');
INSERT INTO `mapping` VALUES (185, '咸阳', 'city');
INSERT INTO `mapping` VALUES (186, '秦都', 'city');
INSERT INTO `mapping` VALUES (187, '杨凌', 'city');
INSERT INTO `mapping` VALUES (188, '渭城', 'city');
INSERT INTO `mapping` VALUES (189, '三原', 'city');
INSERT INTO `mapping` VALUES (190, '泾阳', 'city');
INSERT INTO `mapping` VALUES (191, '乾县', 'city');
INSERT INTO `mapping` VALUES (192, '礼泉', 'city');
INSERT INTO `mapping` VALUES (193, '永寿', 'city');
INSERT INTO `mapping` VALUES (194, '彬县', 'city');
INSERT INTO `mapping` VALUES (195, '长武', 'city');
INSERT INTO `mapping` VALUES (196, '旬邑', 'city');
INSERT INTO `mapping` VALUES (197, '淳化', 'city');
INSERT INTO `mapping` VALUES (198, '武功', 'city');
INSERT INTO `mapping` VALUES (199, '兴平', 'city');
INSERT INTO `mapping` VALUES (200, '渭南', 'city');
INSERT INTO `mapping` VALUES (201, '临渭', 'city');
INSERT INTO `mapping` VALUES (202, '华县', 'city');
INSERT INTO `mapping` VALUES (203, '潼关', 'city');
INSERT INTO `mapping` VALUES (204, '大荔', 'city');
INSERT INTO `mapping` VALUES (205, '合阳', 'city');
INSERT INTO `mapping` VALUES (206, '澄城', 'city');
INSERT INTO `mapping` VALUES (207, '蒲城', 'city');
INSERT INTO `mapping` VALUES (208, '白水', 'city');
INSERT INTO `mapping` VALUES (209, '富平', 'city');
INSERT INTO `mapping` VALUES (210, '韩城', 'city');
INSERT INTO `mapping` VALUES (211, '华阴', 'city');
INSERT INTO `mapping` VALUES (212, '延安', 'city');
INSERT INTO `mapping` VALUES (213, '宝塔', 'city');
INSERT INTO `mapping` VALUES (214, '延长', 'city');
INSERT INTO `mapping` VALUES (215, '延川', 'city');
INSERT INTO `mapping` VALUES (216, '子长', 'city');
INSERT INTO `mapping` VALUES (217, '安塞', 'city');
INSERT INTO `mapping` VALUES (218, '志丹', 'city');
INSERT INTO `mapping` VALUES (219, '吴起', 'city');
INSERT INTO `mapping` VALUES (220, '甘泉', 'city');
INSERT INTO `mapping` VALUES (221, '富县', 'city');
INSERT INTO `mapping` VALUES (222, '洛川', 'city');
INSERT INTO `mapping` VALUES (223, '宜川', 'city');
INSERT INTO `mapping` VALUES (224, '黄龙', 'city');
INSERT INTO `mapping` VALUES (225, '黄陵', 'city');
INSERT INTO `mapping` VALUES (226, '汉中', 'city');
INSERT INTO `mapping` VALUES (227, '汉台', 'city');
INSERT INTO `mapping` VALUES (228, '南郑', 'city');
INSERT INTO `mapping` VALUES (229, '城固', 'city');
INSERT INTO `mapping` VALUES (230, '洋县', 'city');
INSERT INTO `mapping` VALUES (231, '西乡', 'city');
INSERT INTO `mapping` VALUES (232, '勉县', 'city');
INSERT INTO `mapping` VALUES (233, '宁强', 'city');
INSERT INTO `mapping` VALUES (234, '略阳', 'city');
INSERT INTO `mapping` VALUES (235, '镇巴', 'city');
INSERT INTO `mapping` VALUES (236, '留坝', 'city');
INSERT INTO `mapping` VALUES (237, '佛坪', 'city');
INSERT INTO `mapping` VALUES (238, '榆林', 'city');
INSERT INTO `mapping` VALUES (239, '榆阳', 'city');
INSERT INTO `mapping` VALUES (240, '神木', 'city');
INSERT INTO `mapping` VALUES (241, '府谷', 'city');
INSERT INTO `mapping` VALUES (242, '横山', 'city');
INSERT INTO `mapping` VALUES (243, '靖边', 'city');
INSERT INTO `mapping` VALUES (244, '定边', 'city');
INSERT INTO `mapping` VALUES (245, '绥德', 'city');
INSERT INTO `mapping` VALUES (246, '米脂', 'city');
INSERT INTO `mapping` VALUES (247, '佳县', 'city');
INSERT INTO `mapping` VALUES (248, '吴堡', 'city');
INSERT INTO `mapping` VALUES (249, '清涧', 'city');
INSERT INTO `mapping` VALUES (250, '子洲', 'city');
INSERT INTO `mapping` VALUES (251, '安康', 'city');
INSERT INTO `mapping` VALUES (252, '汉滨', 'city');
INSERT INTO `mapping` VALUES (253, '汉阴', 'city');
INSERT INTO `mapping` VALUES (254, '石泉', 'city');
INSERT INTO `mapping` VALUES (255, '宁陕', 'city');
INSERT INTO `mapping` VALUES (256, '紫阳', 'city');
INSERT INTO `mapping` VALUES (257, '岚皋', 'city');
INSERT INTO `mapping` VALUES (258, '平利', 'city');
INSERT INTO `mapping` VALUES (259, '镇坪', 'city');
INSERT INTO `mapping` VALUES (260, '旬阳', 'city');
INSERT INTO `mapping` VALUES (261, '白河', 'city');
INSERT INTO `mapping` VALUES (262, '商洛', 'city');
INSERT INTO `mapping` VALUES (263, '商州', 'city');
INSERT INTO `mapping` VALUES (264, '洛南', 'city');
INSERT INTO `mapping` VALUES (265, '丹凤', 'city');
INSERT INTO `mapping` VALUES (266, '商南', 'city');
INSERT INTO `mapping` VALUES (267, '山阳', 'city');
INSERT INTO `mapping` VALUES (268, '镇安', 'city');
INSERT INTO `mapping` VALUES (269, '柞水', 'city');
INSERT INTO `mapping` VALUES (270, '陕北', 'region');
INSERT INTO `mapping` VALUES (271, '关中', 'region');
INSERT INTO `mapping` VALUES (272, '陕南', 'region');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province`  (
  `province_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省份名字',
  `province_introduction` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省份介绍',
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属区域',
  `geographical_position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地理位置',
  `area` float(20, 0) NULL DEFAULT NULL COMMENT '面积，单位km*km',
  `climate_condition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '气候条件',
  `population` int(11) NULL DEFAULT NULL COMMENT '人口数量',
  PRIMARY KEY (`province_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES (1, '陕西省', '       陕西，简称“陕”或“秦”，中华人民共和国省级行政区，省会西安，位于中国内陆腹地，黄河中游，东邻山西、河南，西连宁夏、甘肃，南抵四川、重庆、湖北，北接内蒙古，介于东经105°29′—111°15′，北纬31°42′—39°35′之间，总面积20.56万平方千米。中国经纬度基准点大地原点和北京时间国家授时中心位于该省 。\r\n陕西省地势呈南北高、中间低，由高原、山地、平原和盆地等多种地貌构成，其中黄土高原占全省土地面积的40%，地跨黄河、长江两大水系，横跨三个气候带，陕北北部长城沿线属中温带季风气候，关中及陕北大部属暖温带季风气候，陕南属北亚热带季风气候。\r\n       陕西是中华民族及华夏文化的重要发祥地之一，有西周、秦、汉、唐等14个政权在陕西建都。截至2020年，陕西省下辖10个地级市（其中省会西安为副省级市）、31个市辖区、7个县级市、69个县。截至2020年11月1日零时，陕西省常住人口3952.8999万人 [114]  。2020年，陕西省实现生产总值26181.86亿元，比上年增长2.2%。其中，第一产业增加值2267.54亿元，增长3.3%；第二产业11362.58亿元，增长1.4%；第三产业12551.74亿元，增长2.8%。', '中国西北地区', '西部内陆腹地', 205600, '温带季风气候，亚热带季风气候', 39529000);

-- ----------------------------
-- Table structure for region
-- ----------------------------
DROP TABLE IF EXISTS `region`;
CREATE TABLE `region`  (
  `region_id` int(11) NOT NULL AUTO_INCREMENT,
  `region_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `brief_introduction` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`region_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of region
-- ----------------------------
INSERT INTO `region` VALUES (1, '陕北', '陕北是中国的革命圣地。党中央和毛主席等老一辈无产阶级革命家在这里生活战斗过13年，留下了一大批宝贵的革命文物、革命纪念地和丰富的精神财富——陕北革命精神。全市境内的革命文物达140多处，其中最为重要的是延安市区内的凤凰山旧址、杨家岭旧址、枣园旧址、王家坪旧址、子长县瓦窑堡(原中共中央政治局会议旧址)等国家级保护文物。省级革命文物有：延安市区内的陕甘宁边区政府旧址、南泥湾旧址，吴旗县、志丹县、子长县、安塞县革命旧址、旧居、刘志丹陵园、谢子长陵园、洛川县冯家村“洛川政治局会议旧址”等。');
INSERT INTO `region` VALUES (2, '关中', '关中，地名，是指“四关”之内，即东潼关、西散关（大震关）、南武关（蓝关）、北萧关。现关中地区位于陕西省中部，包括西安、宝鸡、咸阳、渭南、铜川、杨凌五市一区，总面积55623平方公里，常住人口2385.06万（2015年底），位于中国四大地理区划之一的北方地区。');
INSERT INTO `region` VALUES (3, '陕南', '陕南北靠秦岭、南倚巴山，汉江自西向东穿流而过。陕南的汉中、安康自然条件方面具有明显的南方地区特征，主要栽种水稻，盛产桔子、茶叶。主食是大米、面食。汉中、安康尤其是汉中方言接近四川、重庆方言。商洛北部的方言接近陕西官话（中原官话的一种，也称为关中话），西部、南部各县方言比较多，分别有：下湖话、客家话、江淮话、西南官话等。');

-- ----------------------------
-- Table structure for region_to_province
-- ----------------------------
DROP TABLE IF EXISTS `region_to_province`;
CREATE TABLE `region_to_province`  (
  `region_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  INDEX `region_id2`(`region_id`) USING BTREE,
  INDEX `province_id`(`province_id`) USING BTREE,
  CONSTRAINT `province_id` FOREIGN KEY (`province_id`) REFERENCES `province` (`province_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `region_id2` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of region_to_province
-- ----------------------------
INSERT INTO `region_to_province` VALUES (1, 1);
INSERT INTO `region_to_province` VALUES (2, 1);
INSERT INTO `region_to_province` VALUES (3, 1);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `permission_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `signup_time` datetime(0) NULL DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1648157234531770370, 'litm', '34784178211e082e8d69b6a49c50608d', '0bb5dd9772d549309688e6465ace0590', NULL);
INSERT INTO `user` VALUES (1648160535978754048, 'litm2', '7170988fd87137655a0f156afd05f224', 'f78ad6c8b8354cd3954b487b9dcb42c5', '2023-04-18 11:04:28');
INSERT INTO `user` VALUES (1648163419306901504, 'litm3', '783839c2be0acd8d22b33166a4643580', 'f2933449571c4bb2ad7d25e2ecec2aaf', '2023-04-18 11:15:55');
INSERT INTO `user` VALUES (1649226813048930304, 'litm4', 'd3b515bc638d55585d851e914dff0d0f', 'a0cb8300a9694e448df25b0b65e2958c', '2023-04-21 09:41:28');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` bigint(11) NOT NULL,
  `user_id` bigint(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `role_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (5, 1648157234531770370, 2, 'user');
INSERT INTO `user_role` VALUES (6, 1648160535978754048, 2, 'user');
INSERT INTO `user_role` VALUES (7, 1648163419306901504, 2, 'user');
INSERT INTO `user_role` VALUES (8, 1649226813048930304, 2, 'user');

SET FOREIGN_KEY_CHECKS = 1;
