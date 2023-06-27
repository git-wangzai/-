# Host: localhost  (Version: 5.5.47)
# Date: 2023-07-21 10:43:44
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "auth_group"
#

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

#
# Data for table "auth_group"
#


#
# Structure for table "auth_user"
#

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_bin NOT NULL,
  `first_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

#
# Data for table "auth_user"
#

INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$uxbEcAxfw4Ad6f02IdK7oJ$8HzUOcS9SVfDIPv/2Jcbk7W8m4VS6QvX07XfCbxGFR4=','2023-03-20 12:31:49',1,'haige','','','169330@qq.com',1,1,'2023-03-20 12:27:36');

#
# Structure for table "auth_user_groups"
#

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`) USING BTREE,
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

#
# Data for table "auth_user_groups"
#


#
# Structure for table "django_content_type"
#

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

#
# Data for table "django_content_type"
#

INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','permission'),(3,'auth','group'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'login','rooms'),(8,'login','students'),(9,'login','text'),(10,'login','integrals'),(11,'login','bookings');

#
# Structure for table "django_admin_log"
#

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext COLLATE utf8_bin,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`) USING BTREE,
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

#
# Data for table "django_admin_log"
#

INSERT INTO `django_admin_log` VALUES (1,'2023-03-20 12:50:47','1','一楼  1  好自习室',1,'[{\"added\": {}}]',7,1),(2,'2023-03-20 12:51:11','2','一楼  2  号自习室',1,'[{\"added\": {}}]',7,1),(3,'2023-03-20 12:59:35','1','张三',1,'[{\"added\": {}}]',8,1),(4,'2023-03-20 13:00:06','2','user02',1,'[{\"added\": {}}]',8,1),(5,'2023-03-20 13:00:22','1','user01',2,'[{\"changed\": {\"fields\": [\"\\u59d3\\u540d\"]}}]',8,1),(6,'2023-03-20 13:04:27','3','请大家知悉，这周不开图书馆。',1,'[{\"added\": {}}]',9,1),(7,'2023-03-20 13:10:23','3','user01',1,'[{\"added\": {}}]',11,1),(8,'2023-03-20 14:16:50','3','院校简介. 邢台学院坐落于中国历史文化名城、中国优秀旅游城市、丝绸之路经济带的重要战略核心城市喀什市，是一所以培养基础教育师资和经济社会发展需要的应用型、技术技能型人才的多科性本科学校。. 学校始建于1962年，前身为新疆喀什师范专科学校，从建校到1978年底的16年间，学校是自治区5所高等院校（新疆大学、新疆工学院、八一农学院、新疆医学院、新疆喀什师范专科学校）中唯一的一所高等师范院校，在新疆特',2,'[{\"changed\": {\"fields\": [\"\\u9898\\u76ee\", \"\\u5185\\u5bb9\"]}}]',9,1),(9,'2023-03-20 14:22:15','4','院校简介. 邢台学院坐落于中国历史文化名城、中国优秀旅游城市、丝绸之路经济带的重要战略核心城市喀什市，是一所以培养基础教育师资和经济社会发展需要的应用型、技术技能型人才的多科性本科学校。. 学校始建于1962年，前身为新疆喀什师范专科学校，从建校到1978年底的16年间，学校是自治区5所高等院校（新疆大学、新疆工学院、八一农学院、新疆医学院、新疆喀什师范专科学校）中唯一的一所高等师范院校，在新疆特',1,'[{\"added\": {}}]',9,1),(10,'2023-03-20 14:22:38','5','院校简介. 邢台学院坐落于中国历史文化名城、中国优秀旅游城市、丝绸之路经济带的重要战略核心城市喀什市，是一所以培养基础教育师资和经济社会发展需要的应用型、技术技能型人才的多科性本科学校。. 学校始建于1962年，前身为新疆喀什师范专科学校，从建校到1978年底的16年间，学校是自治区5所高等院校（新疆大学、新疆工学院、八一农学院、新疆医学院、新疆喀什师范专科学校）中唯一的一所高等师范院校，在新疆特',1,'[{\"added\": {}}]',9,1),(11,'2023-03-20 14:22:57','5','院校简介. 邢台学院坐落于中国历史文化名城、中国优秀旅游城市、丝绸之路经济带的重要战略核心城市喀什市，是一所以培养基础教育师资和经济社会发展需要的应用型、技术技能型人才的多科性本科学校。. 学校始建于1962年，前身为新疆喀什师范专科学校，从建校到1978年底的16年间，学校是自治区5所高等院校（新疆大学、新疆工学院、八一农学院、新疆医学院、新疆喀什师范专科学校）中唯一的一所高等师范院校，在新疆特',3,'',9,1),(12,'2023-03-20 14:22:57','4','院校简介. 邢台学院坐落于中国历史文化名城、中国优秀旅游城市、丝绸之路经济带的重要战略核心城市喀什市，是一所以培养基础教育师资和经济社会发展需要的应用型、技术技能型人才的多科性本科学校。. 学校始建于1962年，前身为新疆喀什师范专科学校，从建校到1978年底的16年间，学校是自治区5所高等院校（新疆大学、新疆工学院、八一农学院、新疆医学院、新疆喀什师范专科学校）中唯一的一所高等师范院校，在新疆特',3,'',9,1),(13,'2023-03-20 15:12:03','1','一楼  1  号自习室',2,'[{\"changed\": {\"fields\": [\"\\u540d\\u79f0\"]}}]',7,1),(14,'2023-03-20 15:12:34','3','一楼  3号自习室',1,'[{\"added\": {}}]',7,1),(15,'2023-03-21 11:42:55','1','user01',1,'[{\"added\": {}}]',10,1),(16,'2023-03-21 15:22:58','4','user01',1,'[{\"added\": {}}]',11,1),(17,'2023-03-21 16:03:04','5','user01',1,'[{\"added\": {}}]',11,1);

#
# Structure for table "auth_permission"
#

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

#
# Data for table "auth_permission"
#

INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add rooms',7,'add_rooms'),(26,'Can change rooms',7,'change_rooms'),(27,'Can delete rooms',7,'delete_rooms'),(28,'Can view rooms',7,'view_rooms'),(29,'Can add students',8,'add_students'),(30,'Can change students',8,'change_students'),(31,'Can delete students',8,'delete_students'),(32,'Can view students',8,'view_students'),(33,'Can add text',9,'add_text'),(34,'Can change text',9,'change_text'),(35,'Can delete text',9,'delete_text'),(36,'Can view text',9,'view_text'),(37,'Can add integrals',10,'add_integrals'),(38,'Can change integrals',10,'change_integrals'),(39,'Can delete integrals',10,'delete_integrals'),(40,'Can view integrals',10,'view_integrals'),(41,'Can add bookings',11,'add_bookings'),(42,'Can change bookings',11,'change_bookings'),(43,'Can delete bookings',11,'delete_bookings'),(44,'Can view bookings',11,'view_bookings');

#
# Structure for table "auth_user_user_permissions"
#

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`) USING BTREE,
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

#
# Data for table "auth_user_user_permissions"
#


#
# Structure for table "auth_group_permissions"
#

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`) USING BTREE,
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

#
# Data for table "auth_group_permissions"
#


#
# Structure for table "django_migrations"
#

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

#
# Data for table "django_migrations"
#

INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-03-20 12:27:03'),(2,'auth','0001_initial','2023-03-20 12:27:05'),(3,'admin','0001_initial','2023-03-20 12:27:05'),(4,'admin','0002_logentry_remove_auto_add','2023-03-20 12:27:05'),(5,'admin','0003_logentry_add_action_flag_choices','2023-03-20 12:27:05'),(6,'contenttypes','0002_remove_content_type_name','2023-03-20 12:27:05'),(7,'auth','0002_alter_permission_name_max_length','2023-03-20 12:27:05'),(8,'auth','0003_alter_user_email_max_length','2023-03-20 12:27:06'),(9,'auth','0004_alter_user_username_opts','2023-03-20 12:27:06'),(10,'auth','0005_alter_user_last_login_null','2023-03-20 12:27:06'),(11,'auth','0006_require_contenttypes_0002','2023-03-20 12:27:06'),(12,'auth','0007_alter_validators_add_error_messages','2023-03-20 12:27:06'),(13,'auth','0008_alter_user_username_max_length','2023-03-20 12:27:06'),(14,'auth','0009_alter_user_last_name_max_length','2023-03-20 12:27:06'),(15,'auth','0010_alter_group_name_max_length','2023-03-20 12:27:06'),(16,'auth','0011_update_proxy_permissions','2023-03-20 12:27:06'),(17,'auth','0012_alter_user_first_name_max_length','2023-03-20 12:27:06'),(18,'login','0001_initial','2023-03-20 12:27:07'),(19,'sessions','0001_initial','2023-03-20 12:27:07'),(20,'login','0002_alter_text_text','2023-03-20 13:02:00'),(21,'login','0003_alter_bookings_period','2023-03-20 13:07:49'),(22,'login','0004_text_title_alter_text_text','2023-03-20 14:14:05'),(23,'login','0005_remove_students_integral','2023-03-21 11:36:11'),(24,'login','0006_remove_integrals_integral_integrals_title','2023-03-21 11:41:10'),(25,'login','0007_alter_integrals_text','2023-03-21 11:41:59'),(26,'login','0008_bookings_room','2023-03-21 14:18:19');

#
# Structure for table "django_session"
#

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` longtext COLLATE utf8_bin NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  KEY `django_session_expire_date_a5c62663` (`expire_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

#
# Data for table "django_session"
#

INSERT INTO `django_session` VALUES ('vzrx3n2zgv23kinm636l1g3ihyijhst5','.eJzFlsmOm0AQhl_F6rMNNPRmH5NTDlEi5RhGqJtulhmWiEWJZPnd0wUeaRgQ4MwhF5dcXcvvj9_AFUWy77Kob00T5RpdEEbHtzkl4xdTwYF-llVaO3FddU2uHChx7qet87XWpvh0r50MyGSb2W5iFPUI9nisOPWJFDQwXGqdiLPmgvmUJp5g3CQ-iTHGwvBYMx4LFgeMkkDC0NJUfWtn_byGqJKlCdHlEKIw7AU20gZimGcDVZLYwJXEEIjHQnS0hSVobKFp3wDqYw5ngolxQN8UY4crdZlXblGn9rOp67J1xwrVGKnjpi_VA3tmQnPLGFqqvihux8O_iZ0MeYKMyTUksOf5YyL6bfI06yDpTQvwwtqzEINaI9mDdKedO7Gqun7Jq3Qv2Q11G0g3FK6xJDOWeFoQLF1CxYZFhMjhmxquZELptlMnnTtZ5lVn0kYWu226Lm_Ln-sS12CyGUx_WkAX9rFAgz5-DuSDxpx27oTZmT_dTo4byjY4bqhb4yhmHINpAV_YZ-_LAtb6AV9TG6JEtodEnuD2fmqz3BR6kzQdPcEpTvaTbrtem6rb69oP6V_gsaF5hT_2lvC-EQT_DirWpoLKV5HvGMGz1YX8f-LykR_yHhSeGZVMjXq-PdlHP-xHl-s9IpjlwYvKr6zuapv48eqUIeF--_L99DkKnOckT9Dt9hdukrei:1nWLHJ:0nc76wYargUzcUML2h91wNlwSjTtw6Qe8wAs0SQOTQU','2023-04-05 00:53:09');

#
# Structure for table "room"
#

DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(22) COLLATE utf8_bin NOT NULL,
  `number` int(11) NOT NULL,
  `photo` varchar(100) COLLATE utf8_bin NOT NULL,
  `time` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

#
# Data for table "room"
#

INSERT INTO `room` VALUES (1,'一楼  1  号自习室',40,'Room/photo/2n3aun7zv8.jpg','2023-03-20 12:50:47',1),(2,'一楼  2  号自习室',54,'Room/photo/2n3aun7zv8_oRPJyy7.jpg','2023-03-20 12:51:11',1),(3,'一楼  3号自习室',40,'Room/photo/2n3aun7zv8_kBJ5OFI.jpg','2023-03-20 15:12:34',1);

#
# Structure for table "students"
#

DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(22) COLLATE utf8_bin NOT NULL,
  `password` varchar(32) COLLATE utf8_bin NOT NULL,
  `phone` varchar(11) COLLATE utf8_bin NOT NULL,
  `email` varchar(22) COLLATE utf8_bin NOT NULL,
  `time` datetime NOT NULL,
  `photo` varchar(100) COLLATE utf8_bin NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

#
# Data for table "students"
#

INSERT INTO `students` VALUES (1,'weiguanke','123','19914378079','1693305172@qq.com','2023-03-20 12:59:35','Students/photo/OIP-C_3.jfif',1),(2,'user02','123','19914378079','1693305172@qq.com','2023-03-20 13:00:06','Students/photo/OIP-C.jpg',1),(3,'user03','123','19914378079','1693305172@qq.com','2023-03-21 23:56:51','Students/photo/OIP-C_3_Icr71TE.jfif',1);

#
# Structure for table "integral"
#

DROP TABLE IF EXISTS `integral`;
CREATE TABLE `integral` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext COLLATE utf8_bin NOT NULL,
  `time` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `student_id` int(11) NOT NULL,
  `title` varchar(220) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `Integral_student_id_f50e6f94_fk_Students_id` (`student_id`) USING BTREE,
  CONSTRAINT `Integral_student_id_f50e6f94_fk_Students_id` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

#
# Data for table "integral"
#

INSERT INTO `integral` VALUES (1,'在图书馆自习室大声说话，请注意！！！！','2023-03-21 11:42:55',1,1,'大声说话');

#
# Structure for table "booking"
#

DROP TABLE IF EXISTS `booking`;
CREATE TABLE `booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `period` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `students_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `Booking_students_id_45c9c675_fk_Students_id` (`students_id`) USING BTREE,
  KEY `Booking_room_id_9ed60313_fk_Room_id` (`room_id`) USING BTREE,
  CONSTRAINT `Booking_room_id_9ed60313_fk_Room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`),
  CONSTRAINT `Booking_students_id_45c9c675_fk_Students_id` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

#
# Data for table "booking"
#

INSERT INTO `booking` VALUES (4,2,2,'2023-03-21 15:22:58',1,1,1),(5,1,1,'2023-03-21 16:03:04',1,1,1),(6,18,2,'2023-03-22 01:11:30',0,1,2),(7,2,2,'2023-03-22 01:14:44',0,1,2),(8,1,1,'2023-03-22 01:24:12',1,1,2),(9,2,1,'2023-03-22 01:24:28',0,1,2);

#
# Structure for table "text"
#

DROP TABLE IF EXISTS `text`;
CREATE TABLE `text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext COLLATE utf8_bin NOT NULL,
  `time` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `title` varchar(120) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

#
# Data for table "text"
#

INSERT INTO `text` VALUES (3,'院校简介. 邢台学院坐落于中国历史文化名城、中国优秀旅游城市、丝绸之路经济带的重要战略核心城市喀什市，是一所以培养基础教育师资和经济社会发展需要的应用型、技术技能型人才的多科性本科学校。. 学校始建于1962年，前身为新疆喀什师范专科学校，从建校到1978年底的16年间，学校是自治区5所高等院校（新疆大学、新疆工学院、八一农学院、新疆医学院、新疆喀什师范专科学校）中唯一的一所高等师范院校，在新疆特别是南疆教师教育、民族教育、社会稳定和经济发展方面发挥了不可替代的重要作用。. 1978年学校升格为本科院校，更名为喀什师范学院。','2023-03-20 13:04:27',1,'关于邢台学院');
