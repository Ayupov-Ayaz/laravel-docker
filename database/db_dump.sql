-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: mrricco
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'/storage/category/3t9s8wjfJ4dogHSONdi2Ew4PhWPHoCXlBU5epoOf.png','2019-02-03 16:02:15','2019-02-06 16:44:22'),(2,'/storage/category/VvMoSPVYF2jgnyMEAzneGJrgacH3KwfRIQN9Wt1k.png','2019-02-03 16:03:36','2019-04-04 03:44:40'),(3,'/storage/category/riqsEpLCpsW3xeP8mw6HQgJTbLda2J766VAAvLK5.png','2019-02-03 16:46:18','2019-02-06 16:43:06'),(5,'/storage/category/amzomJGMUj3PsVysozrSlbCMTXj9n7zVT1IrCpoZ.png','2019-02-03 16:49:39','2019-02-06 16:45:20'),(6,'/storage/category/ITtvgju4pZPhsyZGKgawWxazg6CtH20ULDjHyGKw.png','2019-02-03 17:57:00','2019-02-06 16:46:14'),(11,'/storage/category/stz30OI1I4nxG2Xdwy6sjqmpZ3laEExzqk0TF8og.png','2019-03-04 08:16:34','2019-04-04 17:51:14');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_translations`
--

DROP TABLE IF EXISTS `category_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_translations_category_id_locale_unique` (`category_id`,`locale`),
  KEY `category_translations_locale_index` (`locale`),
  CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_translations`
--

LOCK TABLES `category_translations` WRITE;
/*!40000 ALTER TABLE `category_translations` DISABLE KEYS */;
INSERT INTO `category_translations` VALUES (1,1,'Кетчуп','ru'),(2,1,'Ketchup','en'),(3,1,'番茄醬','ch'),(4,2,'Майонез','ru'),(5,2,'Mayonnaise','en'),(6,2,'蛋黃醬','ch'),(7,3,'Соусы','ru'),(8,3,'Sauces','en'),(9,3,'醬汁','ch'),(13,5,'Масло','ru'),(14,5,'Sunflower oil','en'),(15,5,'葵花籽油','ch'),(16,6,'Сладкое','ru'),(17,6,'Jam','en'),(18,6,'果醬','ch'),(31,11,'Томатная паста','ru'),(32,11,'en','en'),(33,11,'ch','ch');
/*!40000 ALTER TABLE `category_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'2019-02-06 17:58:48','2019-02-06 17:58:48'),(3,'2019-03-27 03:31:56','2019-03-27 03:31:56'),(4,'2019-03-28 11:34:48','2019-03-28 11:34:48');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_translations`
--

DROP TABLE IF EXISTS `city_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `city_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `city_translations_city_id_locale_unique` (`city_id`,`locale`),
  KEY `city_translations_locale_index` (`locale`),
  CONSTRAINT `city_translations_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_translations`
--

LOCK TABLES `city_translations` WRITE;
/*!40000 ALTER TABLE `city_translations` DISABLE KEYS */;
INSERT INTO `city_translations` VALUES (1,1,'Казань','ru'),(3,3,'Омск','ru'),(4,3,'en','en'),(5,3,'ch','ch'),(6,4,'Ростов-на-Дону','ru'),(7,4,'en','en'),(8,4,'ch','ch');
/*!40000 ALTER TABLE `city_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'iunir.iakupov@gmail.com','Юнир','Когда сайт будет готов?','2019-02-09 23:29:44','2019-02-09 23:29:44'),(2,'aidar@codberry.com','Айдар','кек','2019-02-18 10:56:16','2019-02-18 10:56:16'),(3,'aidar@codberry.com','Айдар','кек1','2019-02-18 10:56:50','2019-02-18 10:56:50'),(4,'anvar@a','Анвар','кек2','2019-02-18 10:57:23','2019-02-18 10:57:23');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `firm_translations`
--

DROP TABLE IF EXISTS `firm_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `firm_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firm_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `firm_translations_firm_id_locale_unique` (`firm_id`,`locale`),
  KEY `firm_translations_locale_index` (`locale`),
  CONSTRAINT `firm_translations_firm_id_foreign` FOREIGN KEY (`firm_id`) REFERENCES `firms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firm_translations`
--

LOCK TABLES `firm_translations` WRITE;
/*!40000 ALTER TABLE `firm_translations` DISABLE KEYS */;
INSERT INTO `firm_translations` VALUES (1,1,'Миладора','ru'),(2,1,'Miladora','en'),(3,1,'Miladora','ch'),(4,2,'Ласка','ru'),(5,2,'Laska','en'),(6,2,'Laska','ch'),(7,3,'Mr.Ricco','ru'),(8,3,'Mr.Ricco','en'),(9,3,'Mr.Ricco','ch'),(13,5,'PROfood','ru'),(14,5,'PROfood','en'),(15,5,'PROfood','ch'),(16,6,'Чудесная семечка','ru'),(17,6,'Chudesnaya semechka','en'),(18,6,'Chudesnaya semechka','ch');
/*!40000 ALTER TABLE `firm_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `firms`
--

DROP TABLE IF EXISTS `firms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `firms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firms`
--

LOCK TABLES `firms` WRITE;
/*!40000 ALTER TABLE `firms` DISABLE KEYS */;
INSERT INTO `firms` VALUES (1,'2019-02-03 15:47:13','2019-02-03 15:47:13',''),(2,'2019-02-03 15:47:37','2019-02-03 15:47:37',''),(3,'2019-02-03 15:48:04','2019-02-03 15:48:04',''),(5,'2019-02-03 16:44:13','2019-02-03 16:44:13',''),(6,'2019-02-03 17:40:53','2019-02-03 17:40:53','');
/*!40000 ALTER TABLE `firms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_education_translations`
--

DROP TABLE IF EXISTS `job_education_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_education_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_education_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `job_education_translations_job_education_id_locale_unique` (`job_education_id`,`locale`),
  KEY `job_education_translations_locale_index` (`locale`),
  CONSTRAINT `job_education_translations_job_education_id_foreign` FOREIGN KEY (`job_education_id`) REFERENCES `job_educations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_education_translations`
--

LOCK TABLES `job_education_translations` WRITE;
/*!40000 ALTER TABLE `job_education_translations` DISABLE KEYS */;
INSERT INTO `job_education_translations` VALUES (1,1,'Высшее','ru'),(2,2,'Среднее','ru'),(7,5,'Среднеспециальное','ru'),(8,5,'en','en'),(9,5,'ch','ch');
/*!40000 ALTER TABLE `job_education_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_educations`
--

DROP TABLE IF EXISTS `job_educations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_educations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_educations`
--

LOCK TABLES `job_educations` WRITE;
/*!40000 ALTER TABLE `job_educations` DISABLE KEYS */;
INSERT INTO `job_educations` VALUES (1,'2019-02-06 18:01:51','2019-02-06 18:01:51'),(2,'2019-02-06 18:17:01','2019-02-06 18:17:01'),(5,'2019-03-13 11:24:53','2019-03-13 11:24:53');
/*!40000 ALTER TABLE `job_educations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_employment_translations`
--

DROP TABLE IF EXISTS `job_employment_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_employment_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_employment_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `job_employment_translations_job_employment_id_locale_unique` (`job_employment_id`,`locale`),
  KEY `job_employment_translations_locale_index` (`locale`),
  CONSTRAINT `job_employment_translations_job_employment_id_foreign` FOREIGN KEY (`job_employment_id`) REFERENCES `job_employments` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_employment_translations`
--

LOCK TABLES `job_employment_translations` WRITE;
/*!40000 ALTER TABLE `job_employment_translations` DISABLE KEYS */;
INSERT INTO `job_employment_translations` VALUES (1,1,'Полный рабочий день','ru'),(2,2,'Сменный график','ru');
/*!40000 ALTER TABLE `job_employment_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_employments`
--

DROP TABLE IF EXISTS `job_employments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_employments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_employments`
--

LOCK TABLES `job_employments` WRITE;
/*!40000 ALTER TABLE `job_employments` DISABLE KEYS */;
INSERT INTO `job_employments` VALUES (1,'2019-02-06 18:00:47','2019-02-06 18:00:47'),(2,'2019-02-06 18:16:51','2019-02-06 18:16:51');
/*!40000 ALTER TABLE `job_employments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_translations`
--

DROP TABLE IF EXISTS `job_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsibilities` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `conditions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `job_translations_job_id_locale_unique` (`job_id`,`locale`),
  KEY `job_translations_locale_index` (`locale`),
  CONSTRAINT `job_translations_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_translations`
--

LOCK TABLES `job_translations` WRITE;
/*!40000 ALTER TABLE `job_translations` DISABLE KEYS */;
INSERT INTO `job_translations` VALUES (2,2,'Бренд менеджер','<p>Разработка и реализация маркетинговых планов развития бренда (исследование, анализ рынка и конкурентов, позиционирование на рынке);</p><p>Разработка ценовой политики;</p><p>Разработка планов продаж;</p><p>Анализ развития бренда;</p><p>Отслеживание ассортимента и анализ спроса товаров у конкурентов;</p><p>Осуществление креативного ведения бренда;</p><p>Участие в разработке фирменного стиля компании, организация процесса дизайна упаковки, разработка POSM (плакаты, буклеты, листовки и пр.)</p><p><br></p><p>Требования:</p><p><br></p><p>Наличие профильного образования и дополнительного образования в сфере маркетинга является преимуществом;</p><p>Уверенный пользователь ПК, пакета офисных программ и графических редакторов;</p><p>Знание основ маркетинга и менеджмента;</p><p>Знание психологии потребителей;</p><p>Развитые аналитические способности;</p><p>Логическое мышление.</p><p><br></p><p><br></p>','<p>Работа в динамично развивающейся компании;</p><p>Возможности для профессионального и карьерного роста;</p><p>Дружный молодой коллектив, яркие корпоративные мероприятия и обучение;</p><p>Подарки на праздники от Предприятия;</p><p>Компенсация мобильной связи;</p><p>График работы: Пн-Пт с 8:30 до 17:30.</p>','ru'),(3,2,'en','<p>en</p>','<p>en</p>','en'),(4,2,'en','<p>en</p>','<p>en</p>','ch'),(5,3,'Ведущий инженер-технолог по стандартизации и сертификации','<ol><li>Разработка, оформление и контроль ведения документации на продукцию (паспорта, реестр отгруженной продукции и т.д.)</li><li>Разработка и ведение нормативной технической документации (протоколы испытаний, сертификаты ГОСТ, НД)</li><li>Взаимодействие с сертифицирующими органами и испытательными лабораториями подготовка документации для сертификации продукции.</li></ol>','<ol><li>Возможности для профессионального и карьерного роста;</li><li>Официальное трудоустройство, социальный пакет;</li><li>Подарки на праздники от предприятия;</li></ol><p><br></p><p>Место работы с. Усады, Лаишевский район, ул.Ласковая;</p><p>Предоставляется вахта, которая доставляет сотрудников со всех районов города и других районов РТ.</p>','ru'),(6,3,'en','<p>en</p>','<p>en</p>','en'),(7,3,'ch','<p>ch</p>','<p>ch</p>','ch'),(8,4,'Территориальный менеджер по работе с локальными ключевыми клиентами','<p><br></p>','<p><br></p>','ru'),(9,4,'en','<p><br></p>','<p><br></p>','en'),(10,4,'ch','<p><br></p>','<p><br></p>','ch'),(11,5,'Мерчендайзер','<p>Посещение ТТ согласно маршруту;</p><p>Выкладка продукции.&nbsp;&nbsp;</p><p><br></p><p>Требования:</p><p><br></p><p>Коммуникабельность, мобильность, открытость&nbsp;</p>','<p>Перспективы профессионального развития и карьерного роста;</p><p>Компенсация ГСМ и мобильной связи;</p>','ru'),(12,5,'en','<p><br></p>','<p><br></p>','en'),(13,5,'ch','<p><br></p>','<p><br></p>','ch'),(14,6,'Территориальный менеджер по продажам','<p>Управление продажами на выделенной территории;</p><p>Выполнение планов отгрузок дистрибьюторам (Sale In);</p><p>Выполнение планов по продажам (Sale Out), каналы традиционная торговля и локальные сети;</p><p>Поиск дистрибьюторов.</p><p>Проведение и контроль трейд-маркетинговых мероприятий, управление бюджетами;</p><p>Проведение переговоров на уровне первых лиц дистрибьюторов, локальных сетей и крупных клиентов;</p><p>Анализ ситуации и эффективное использование имеющихся ресурсов для достижения целей;</p><p>Регулярные командировки.</p><p><br></p><p><strong>Требования:</strong></p><p><br></p><p>Обязателен опыт работы в области FMCG (продукты питания) на позиции: территориальный менеджер, менеджер не менее 2-х лет;</p><p>Опыт эффективного управления пулом дистрибьюторов в зоне ответственности;</p><p>Опыт успешного взаимодействия с крупными сетевыми клиентами, понимание как происходит вход, расширение матрицы, повышение уровня эффективности инвестиций;</p><p>Высокие коммуникативные навыки, умение убеждать, энергичность, активность</p><p>Умение планировать, прогнозировать;</p><p>Лидерские качества, нацеленность на результат, стрессоустойчивость;</p><p>Навыки эффективного управления персоналом;</p><p>Готовность работать в высоком темпе и решать амбициозные задачи</p>','<p>Работа в динамичной развивающейся компании АО «НЭФИС-БИОПРОДУКТ»;</p><p>Перспективы профессионального развития и карьерного роста;</p><p>Надежный соц.пакет;</p><p>Компенсация ГСМ и мобильной связи;</p><p>Достойная мотивация</p>','ru'),(15,6,'en','<p><br></p>','<p><br></p>','en'),(16,6,'ch','<p><br></p>','<p><br></p>','ch');
/*!40000 ALTER TABLE `job_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `salary` int(10) unsigned NOT NULL,
  `job_employment_id` int(10) unsigned NOT NULL,
  `job_education_id` int(10) unsigned NOT NULL,
  `city_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_job_employment_id_foreign` (`job_employment_id`),
  KEY `jobs_job_education_id_foreign` (`job_education_id`),
  KEY `jobs_city_id_foreign` (`city_id`),
  CONSTRAINT `jobs_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `jobs_job_education_id_foreign` FOREIGN KEY (`job_education_id`) REFERENCES `job_educations` (`id`),
  CONSTRAINT `jobs_job_employment_id_foreign` FOREIGN KEY (`job_employment_id`) REFERENCES `job_employments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (2,0,1,1,1,'2019-02-06 18:14:31','2019-03-28 11:08:29'),(3,0,1,2,1,'2019-02-06 18:19:07','2019-03-28 11:01:01'),(4,0,1,1,1,'2019-03-28 11:11:25','2019-03-28 11:11:25'),(5,0,1,1,4,'2019-03-28 11:37:12','2019-03-28 11:37:50'),(6,0,1,1,1,'2019-03-28 11:39:37','2019-03-28 11:39:37');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_02_01_122525_create_categories_table',1),(4,'2019_02_01_123206_create_category_translations_table',1),(5,'2019_02_01_123500_create_news_table',1),(6,'2019_02_01_123514_create_news_translations_table',1),(7,'2019_02_01_123821_create_partners_table',1),(8,'2019_02_01_123835_create_partner_translations_table',1),(9,'2019_02_01_131640_create_product_advantages_table',1),(10,'2019_02_01_131646_create_product_advantage_translations_table',1),(11,'2019_02_02_135209_create_firms_table',1),(12,'2019_02_02_135229_create_firm_translations_table',1),(13,'2019_02_02_135348_create_product_types_table',1),(14,'2019_02_02_135358_create_product_type_translations_table',1),(15,'2019_02_02_135513_create_products_table',1),(16,'2019_02_02_135524_create_product_translations_table',1),(17,'2019_02_02_142301_create_job_employments_table',1),(18,'2019_02_02_142315_create_job_employment_translations_table',1),(19,'2019_02_02_142323_create_job_educations_table',1),(20,'2019_02_02_142335_create_job_education_translations_table',1),(21,'2019_02_02_142408_create_cities_table',1),(22,'2019_02_02_142419_create_city_translations_table',1),(23,'2019_02_02_142528_create_jobs_table',1),(24,'2019_02_02_142548_create_job_translations_table',1),(25,'2019_02_02_174221_create_product_advantage_product_pivot_table',1),(26,'2019_02_04_003004_change_values_and_packs_product_table',2),(27,'2019_02_04_003705_create_packs_table',2),(28,'2019_02_04_003714_create_pack_translations_table',2),(29,'2019_02_04_003815_create_packs_product_pivot_table',2),(30,'2019_02_04_020510_create_volumes_table',2),(31,'2019_02_04_020545_create_volume_translations_table',2),(32,'2019_02_04_020605_create_product_volume_pivot_table',2),(33,'2019_02_04_045415_add_image_firms_table',2),(34,'2019_02_05_023833_add_is_new_to_products_table',3),(35,'2019_02_07_051503_create_feedback_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'/storage/news/XGYJJsovPPDIhcr5Dds87DMjJ7uvlkJ0WCVSBRvt.jpeg','2019-02-07 08:50:00','2019-02-28 07:24:43'),(3,'/storage/news/ny8VnrLFivJdD6IQ4dWYsol8Emb5jI7j2J8dNY8w.jpeg','2019-02-28 07:53:44','2019-03-27 03:59:25'),(4,'/storage/news/hcoTAKjzItPFTaQXTOcWgHehNfJbqXktdPaCoFBh.jpeg','2019-02-28 08:01:41','2019-02-28 08:01:41'),(5,'/storage/news/KlYLUxvVPx3oY27rPS2Yqdkp3NORHN2UDxegg6MQ.jpeg','2019-02-28 08:04:44','2019-02-28 08:04:44'),(6,'/storage/news/4PGT1XHDO7h06AzIxcKOPfu0NVdHnAueJVyoMW2g.jpeg','2019-02-28 08:07:08','2019-03-27 05:22:37'),(7,'/storage/news/vAm40UQRTE734lEJiwT35yxwlA61ngcmPgPMHbGc.png','2019-02-28 08:12:23','2019-03-27 09:27:18'),(8,'/storage/news/ip1ylUhetHFzsqCqcKtv0X1vmdbOcosxyBXU8xGx.jpeg','2019-02-28 08:16:20','2019-02-28 08:16:20'),(9,'/storage/news/YF3mIBHh8dyV5juoi6LQJEV4a7oEUS4sBIRlQrMg.jpeg','2019-02-28 08:18:04','2019-02-28 08:18:04'),(10,'/storage/news/kT5jHnwrq2rnUGK522gFa6XtiELTgJaV5Zn2D5oC.png','2019-02-28 08:19:14','2019-03-27 09:33:44'),(11,'/storage/news/wAcN69HSCC7Pja2PYoc9F71NTJ3SmlxgSPyQKusv.png','2019-02-28 08:27:15','2019-03-27 09:02:57'),(12,'/storage/news/xlsmA4lTnn0CzV2xZevOv5PPPviYJq3XjEuzWpar.jpeg','2019-02-28 08:29:22','2019-03-27 05:02:54'),(13,'/storage/news/DlW9ZoKscBYybnYZ6BOWzhdzGexr9ccenpSa1ixu.jpeg','2019-02-28 08:30:34','2019-03-06 08:26:05'),(14,'/storage/news/3XK4KRNAbnriySq7lxDYi1y2C6ATuVMut0skE3fC.jpeg','2019-02-28 08:32:03','2019-03-27 04:09:26'),(15,'/storage/news/uoECoPUy5NGvDQZYajdGU2HZ3WXi8wWTTPFNhwsG.jpeg','2019-02-28 08:33:16','2019-03-06 08:54:25'),(16,'/storage/news/3ZWZxO4LFgO6G5LUJSB7ZaANbZba81ZbBaGWNl4A.jpeg','2019-02-28 08:34:14','2019-03-06 08:41:28'),(17,'/storage/news/GuMf9s8OlzAggmXFaipPkmboDrVoeUvj8y7y7AbD.png','2019-02-28 08:35:22','2019-03-27 09:05:16'),(18,'/storage/news/z4ROLRpajYT2hpQmiRMBseqTyr8YXxGaAXw6DzKz.jpeg','2019-03-27 08:06:04','2019-03-28 07:43:03'),(19,'/storage/news/aHoY1IO9w9UDiOIGlwYAxKewlmzEAY75yAVFGt8g.png','2019-04-04 11:13:02','2019-04-04 11:24:00');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_translations`
--

DROP TABLE IF EXISTS `news_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `news_translations_news_id_locale_unique` (`news_id`,`locale`),
  KEY `news_translations_locale_index` (`locale`),
  CONSTRAINT `news_translations_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_translations`
--

LOCK TABLES `news_translations` WRITE;
/*!40000 ALTER TABLE `news_translations` DISABLE KEYS */;
INSERT INTO `news_translations` VALUES (1,1,'«В Москве как дома: кофе, чай и вкуснейшее варенье Mr.Ricco».','<p><span style=\"color: rgb(36, 36, 36);\">Компания «НЭФИС-БИОПРОДУКТ» приняла участие в одном из популярных московских event-событий года - фестивале «Кофе и Чай».</span></p><p>Фестиваль проходит ежегодно в одном из крупнейших парков столицы «Сокольники». На два дня парк становится настоящим раем для всех любителей тонизирующих натуральных напитков, в этот раз его посетило более 250 тысяч гостей.&nbsp;&nbsp;&nbsp;</p><p>Около 50 чайных и кофейных компаний приняли участие Кофе высокого качества, листовой чай, привезенный из разных уголков мира,&nbsp;свежий мед, выпечка,&nbsp;и, конечно, главный атрибут любого чаепития – варенье - были представлены на фестивале.</p><p><span style=\"color: rgb(36, 36, 36);\">АО «НЭФИС-БИОПРОДУКТ» презентовало новинку – варенье с четырьмя вкусами: черника, черная смородина, клюква, малина. Варенье предприятие начало выпускать в июне этого года, поэтому участие в выставке стало еще одной фокус-группой для определения мнения потребителей. Было съедено больше полусотни банок варенья, народные эксперты не скупились на комплименты.</span></p><p>«Каждый желающий мог продегустировать нашу новинку, а дети съедали просто ложками! Участники отметили натуральность продукта и вкус, многие хотели его купить на месте. Большое доверие вызывает сам бренд&nbsp;Mr.Ricco, который известен нашим покупателям своими отменными майонезами, кетчупами, соусами и растительным маслом, - поделилась Дина Ханифатуллина, дирекция маркетинга \"НЭФИС-БИОПРОДУКТ\"».</p><p>Отметим, что сладкая продукция от Mr.Ricco проходит “щадящую” пастеризацию и фасуется в стеклянную тару. Каждая крышка на банке с готовым продуктом имеет специальный клапан, который служит индикатором высокого качества, примерно такие же используют в изготовлении детского питания. Система твист-офф и резиновая прокладка создают абсолютную герметичность продукта.</p><p>Источник:<span style=\"color: transparent;\">:&nbsp;</span><a href=\"https://www.business-gazeta.ru/blog/394818\" target=\"_blank\" style=\"color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">https://www.business-gazeta.ru/blog/394818</a></p><p><span style=\"color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\"><span class=\"ql-cursor\">﻿</span></span></p><p><br></p><p><span style=\"color: transparent;\">Подробнее на «БИЗНЕС Online»</span></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>','ru'),(2,1,'en','<p>en</p>','en'),(3,1,'ch','<p>ch</p>','ch'),(7,3,'Казанский маслоэкстракционный завод провел первый форум производителей сельхозпродукции Поволжья.','<p>На первый форум производителей сельскохозяйственной продукции Поволжья приехали более 200 фермеров и руководителей агропромышленных хозяйств — не только тех, кто стабильно поставляет свою продукцию на Казанский маслоэкстракционный завод, но и потенциальных. Мероприятие прошло на двух площадках — в Безенчукском районе Самарской области и в оренбургском национальном парке «Бузулукский бор».</p><p>Все дело в том, что КМЭЗ отказался от услуг трейдеров и теперь работает напрямую с фермерами. На элеваторах проведена работа по подготовке к приемке маслосемян подсолнечника нового урожая. С этого года фермеры могут оставлять на элеваторах урожай и продать его казанскому предприятию тогда, когда в этом возникнет необходимость.</p><p>«Сырье мы закупаем в Приволжском федеральном округе, — рассказывает генеральный директор АО „КМЭЗ“&nbsp;<strong>Михаил Сыровацкий</strong>. — В большей степени это Самарская и Ульяновская области, Татарстан, а также Оренбургская, Саратовская области, Башкортостан, Марий Эл, Чувашия. Отмечу, что в Татарстане за последние 10 лет посевные площади подсолнечника увеличились с тысячи гектар до 160 тысяч».</p><p>Вот уже много лет КМЭЗ поддерживает сельхозтоваропроизводителей: предоставляет средства защиты растений, авансирует семенным материалом и денежными средствами. Также оказывается техническая и научная поддержка вплоть до завершения уборочной кампании. Это позволило расширить посевные площади подсолнечника, а масличные культуры, как известно, сверхмаржинальны и приносят стабильный доход сельхозпроизводителям.</p><p><span style=\"color: rgb(36, 36, 36);\">Неудивительно, что с каждым годом растет число фермеров, которые отказываются реализовывать урожай через трейдеров и переходят на прямые поставки Казанскому маслоэкстракционному заводу. По словам генерального директора оренбургского агропромышленного комбината «Новожедринский»&nbsp;</span><strong style=\"color: rgb(36, 36, 36);\">Алексея Нагаева</strong><span style=\"color: rgb(36, 36, 36);\">&nbsp;(предприятие пятый год выращивает подсолнечник), отказ от услуг трейдеров и прямые договоры на поставку с казанским заводом позволили значительно увеличить прибыль. «С прошлого года мы перешли на новую систему работы с КМЭЗ, — говорит Нагаев. — Весь урожай сдаю на бесплатное хранение на элеватор и продаю заводу по мере необходимости денежных средств». К слову, в рамках форума АПК «Новожедринский» был отмечен специальным дипломом как «Самый активный поставщик и за неисчерпаемую активность в работе». Важно, что фермеры в любой момент могут приехать на элеватор и посмотреть, как идет приемка маслосемян.</span></p><p><span style=\"color: rgb(36, 36, 36);\">Одна из главных причин, по которой аграрники выбирают сотрудничество с КМЭЗ, — это прозрачная и объективная цена и своевременная оплата. «В период массовой уборки нами своевременно предоставляется транспорт под вывоз подсолнечника со складов и площадок фермеров, — говорит заместитель генерального директора КМЭЗ&nbsp;</span><strong style=\"color: rgb(36, 36, 36);\">Альбина Валеева</strong><span style=\"color: rgb(36, 36, 36);\">. — Порой урожай приходится убирать с полей и в дождливую погоду. Без своевременной очистки и сушки подсолнечник теряет свои качества, становится непригоден для производства масла, поэтому по звонку фермера мы оперативно предоставляем необходимый транспорт. Словом, идем навстречу каждому».</span></p><p><span style=\"color: rgb(36, 36, 36);\">Отметим, что казанское предприятие располагает солидным автопарком — 250 единиц специализированной современной техники, предназначенной для транспортировки масличных культур. Техническая оснащенность важна и потому, что нередко приходится принимать подсолнечник с повышенной влажностью. Многие заводы установили при приеме пограничные показатели влажности, а КМЭЗ вместо отказа фермеру в приемке некондиционных семян стабильно загружает сушилки. «Бросать в беде фермеров — не дело, — говорит Валеева. — Поэтому неудивительно, что компании, которые начали с нами сотрудничать, от нас уже не уходят. Примечательно, что самарские агрохолдинги, несмотря на наличие крупных переработчиков в своем регионе, предпочитают сотрудничать все-таки с нами».</span></p><p><span style=\"color: rgb(36, 36, 36);\">В рамках форума фермеры смогли обсудить нюансы сотрудничества с КМЭЗ. Вопросов было множество. Фермер&nbsp;</span><strong style=\"color: rgb(36, 36, 36);\">Василий Малыхин</strong><span style=\"color: rgb(36, 36, 36);\">, который руководит личным хозяйством с 1985 года, последние 15 лет занимается выращиванием подсолнечника и второй год сотрудничает с Казанским МЭЗ, выразил, пожалуй, общее мнение: «Мы приятно удивлены той схемой работы, которая выстроена на заводе. Организация взаимодействия выверена до минут. Немаловажный фактор — ценовая политика и своевременные расчеты. В прошлом году мы начали сотрудничество с 2,5 тысячи тонн подсолнечника, сегодня же мы планируем поставить на КМЭЗ 6–8 тысяч тонн».</span></p><p>Фермер из Оренбурга&nbsp;<strong>Ришат Галимов</strong>&nbsp;вот уже несколько лет сдает на переработку около 7 тыс. т подсолнечника. Он подчеркивает, что новые условия сотрудничества с КМЭЗ полностью себя оправдывают. «Раньше поставки сырья на завод осуществляли через трейдеров, — говорит он. — А в этом году работаем напрямую. Очень оперативно и качественно ведется приемка продукции, руководство коммуникабельное&nbsp;— в любой момент с ним можно обсудить все детали».</p><p>Руководитель фермерского хозяйства из Оренбуржья&nbsp;<strong>Светлана Шпак</strong>&nbsp;самостоятельную работу в агропромышленной отрасли начала в 2006 году. На протяжении 10 лет сбыт продукции велся исключительно через трейдеров (ежегодно хозяйство под руководством Светланы сдает на переработку около&nbsp;3 тыс. т). «В лице КМЭЗ мы нашли надежного и серьезного производителя. Мы понимаем, что не останемся со своим урожаем наедине». Подводя итог встречи, главный технолог КМЭЗ&nbsp;<strong>Татьяна Гончаренко</strong>, обращаясь к участникам форума, отметила, что предприятие всегда готово к оперативному решению вопросов.</p><p>Добавим, что на мероприятиях КМЭЗ вручил фермерам призы. Сотрудничество оценивалось в номинациях «Успешный старт», «Самый активный поставщик», «За динамичную и качественную работу», «Надежность и профессионализм». Кроме того, были вручены сертификаты на поставку продукции на эксклюзивных условиях.</p><p>В следующем году форум планируется провести в Пензенской области. В минувшем апреле возможности сотрудничества с сельскохозяйственными предприятиями этого региона генеральный директор КМЭЗ&nbsp;<strong>Михаил Сыровацкий&nbsp;</strong>обсудил с губернатором Пензенской области&nbsp;<strong>Иваном Белозерцевым</strong>.</p><p>Источник: <span style=\"color: transparent;\">&nbsp;</span><a href=\"https://www.business-gazeta.ru/blog/397887\" target=\"_blank\" style=\"color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">https://www.business-gazeta.ru/blog/397887</a></p><p>Дата: 05.10.2018</p><p><span style=\"color: transparent;\">Подробнее на «БИЗНЕС Online»</span></p><p><br></p><p><br></p><p><span style=\"color: transparent;\">Подробнее на «БИЗНЕС Online»:&nbsp;</span></p><p><br></p><p><br></p><p><span style=\"color: transparent;\">Подробнее на «БИЗНЕС Online</span></p>','ru'),(8,3,'я','<p><br></p>','en'),(9,3,'я','<p><br></p>','ch'),(10,4,'\"НЭФИС-БИОПРОДУКТ\" и \"Казанский МЭЗ\" стали почётными участниками всероссийской выставки «Золотая осень-2018»','<p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><em>АО \"НЭФИС-БИОПРОДУКТ\", совместно с АО \"Казанский МЭЗ\" представили свою продукцию на коллективном стенде Татарстана. Где у гостей выставки была возможность не только изучить состав нашей продукции, но распробовать на вкус майонезы, кетчупы, варенье и другие соусы торговых марок Mr.Ricco и Миладора. </em></p><p class=\"ql-align-justify\"><span style=\"color: rgb(0, 0, 0);\">Российская агропромышленная выставка “Золотая осень-2019″ стартовала в Москве на ВДНХ в 20-й раз. Ее традиционно организует министерство сельского хозяйства России.</span></p><p class=\"ql-align-justify\"><span style=\"color: rgb(0, 0, 0);\">В этом году выставка собрала на своей площадке около 2,5 тысячи участников из 63 регионов России. Международная часть экспозиции “Золотой осени – 2019″ представлена предприятиями и коллективными стендами Абхазии, Нидерландов, Японии, Татарстана и других областей.</span></p><p class=\"ql-align-justify\"><span style=\"color: rgb(0, 0, 0);\">Экспозиция АО \"Нэфис-Биопродукт\" и Казанского маслоэкстракционного завода (входят в группу компаний «Нэфис»), привлекла особое внимание гостей и участников выставки своими новинками. Особый интерес вызвал кетчуп \"Со вкусом колы\".</span></p><p class=\"ql-align-justify\"><br></p><p><br></p>','ru'),(11,4,'Я','<p><br></p>','en'),(12,4,'Я','<p><br></p>','ch'),(13,5,'АО \"НЭФИС-БИОПРОДУКТ\" принимает участие в выставке «World Wide Food 2018” в г. Астана.','<p>С 18-19 октября 2018 г. АО \"НЭФИС-БИОПРОДУКТ\" принял участие в <span style=\"color: rgb(0, 0, 0);\">выставке «World Wide Food 2018” в г.Астана.  В рамках выставки были проведены не только встречи с потенциальными партнёрами, но также проводилась дегустация нашей продукции, которую оценили все наши посетители.</span></p>','ru'),(14,5,'я','<p><br></p>','en'),(15,5,'я','<p><br></p>','ch'),(16,6,'АО «НЭФИС-БИОПРОДУКТ» принял участие в Международной китайской выставке малого и среднего бизнеса в г. Гуанчжоу.','<p><span style=\"color: rgb(0, 0, 0);\">С 10-13 октября АО «НЭФИС-БИОПРОДУКТ» принял участие в Международной китайской выставке малого и среднего бизнеса в г. Гуанчжоу.</span></p><p class=\"ql-align-justify\">Мероприятие, ставшее уже традиционным, собирает представителей бизнеса из различных государств, значительную часть которых составляют субъекты малого и среднего предпринимательства, представители профильных институтов развития, а также различных организаций инфраструктуры поддержки МСП и предпринимательский объединений.</p><p class=\"ql-align-justify\">Ежегодная выставка — China International Small and Medium Enterprises Fair (CISMEF), играет важную роль в развитии среднего и малого бизнеса Китая, обеспечивающего рост занятости населения, удовлетворение растущих потребностей населения, осуществление инновационной деятельности. Предлагаемые китайскими и другими иностранными МСП товары повседневного спроса и производственные услуги жизненно важны для населения и всей экономики. Именно поэтому CISMEF поддерживается и финансируется китайским правительством.</p><p class=\"ql-align-justify\">Первая выставка CISMEF прошла в 2004 году и с тех пор стала платформой для обобщения накопленного опыта, расширения границ сотрудничества между малыми и средними предприятиями всего мира, поиска новых сфер деятельности. CISMEF предлагает участникам около 5000 стендов (4000 для китайских, 1000 для международных) общей площадью 110000 кв. м. В 2017 году свою продукцию выставили 3000 экспонентов из 23 стран, было зарегистрировано около 300&nbsp;000 посетителей. В прошлом году в работе CISMEF приняли участие 43 российских компаний из 14 субъектов РФ на объединенной экспозиции площадью 387 кв.м.</p><p class=\"ql-align-justify\">Источник: <a href=\"http://www.sppkk.ru/s-10-po-13-oktjabrja-2018-goda-v-g-guanchzhou-sostoitsja-xv-kitajskaja-mezhdunarodnaja-vystavka-malyh-i-srednih-predprijatij/\" target=\"_blank\">http://www.sppkk.ru/s-10-po-13-oktjabrja-2018-goda-v-g-guanchzhou-sostoitsja-xv-kitajskaja-mezhdunarodnaja-vystavka-malyh-i-srednih-predprijatij/</a></p><p class=\"ql-align-justify\"><br></p><p><br></p>','ru'),(17,6,'я','<p><br></p>','en'),(18,6,'я','<p><br></p>','ch'),(19,7,'Бренд “Mr.Ricco” участвует в программе лояльности «Кешбек» в приложении Едадил.','<p>С 1 октября 2018 г. бренд “Mr.Ricco” участвует в программе лояльности «Кешбек» в приложении Едадил.</p><p>Совершай любую продукцию под брендом “Mr.Ricco” в октябре и получай Кешбек.</p><p>Механика- ступенчатая накопительная:⠀</p><p>✅ Шаг 1. Купи Mr.Ricco на 100 руб. - получи Кешбек 15 руб.;⠀</p><p>✅ Шаг 2. Купи Mr.Ricco на 200 руб.- получи Кешбек 40 руб.;⠀</p><p>✅Шаг 3. Купи Mr.Ricco на 350 руб. - получи Кешбек 90 руб. ⠀</p><p>В Акции участвует любая купленная продукция бренда Mr.Ricco ( кетчуп, соусы, майонез, масло, варенье).</p><p>В программе лояльности « Кешбек» участвуют все торговые точки РФ, на чеке которых имеется QR-код.</p><p>Акция действует только на территории РФ в ТТ, на чеке которых имеется QR - код!&nbsp;</p><p><br></p><p><br></p>','ru'),(20,7,'Я','<p><br></p>','en'),(21,7,'Я','<p><br></p>','ch'),(22,8,'АО \"НЭФИС-БИОПРОДУКТ\" запустил новую ТГ \"Джемы\"','<p class=\"ql-align-justify\">АО \"НЭФИС-БИОПРОДУКТ\" запустил новую ТГ \"Джемы\" под брендом «Mr.Ricco».</p><p class=\"ql-align-justify\">Линейка джемов «Mr.Ricco» представлена 4 любимыми и популярными вкусами: «Клубничный», «Вишневый» - классические вкусы, «Брусничный» и «Лесные ягоды» - изготовлены из дикорастущих ягод, таких как брусника, клюква, земляника.</p><p class=\"ql-align-justify\">В состав джемов «Mr.Ricco» входят натуральные ягоды без добавления консервантов и красителей. Благодаря уникальной технологии производства на современном итальянском оборудовании джемы сохраняют естественный вкус и природный аромат ягод.</p><p class=\"ql-align-justify\">Джемы «Mr.Ricco»&nbsp;представлены в ярком дизайне. Эффектная слив-этикетка позволяет выгодно подчеркнуть рельеф банки. Оригинальная комбинация прозрачной пленки&nbsp;и рисунка призвана выдвинуть на первый план натуральность продукта, а так же позволяет потребителю рассмотреть содержимое.</p><p class=\"ql-align-justify\">Использовать джемы можно не только как&nbsp;самостоятельное лакомство, но и как добавку в каши, мюсли, при выпечке пирогов, кексов, печенья, при приготовлении домашних конфет, мармелада и.т.д. А как его применить, зависит только от вашего воображения!</p><p class=\"ql-align-justify\"><br></p><p><br></p>','ru'),(23,8,'я','<p><br></p>','en'),(24,8,'я','<p><br></p>','ch'),(25,9,'Подведение итогов годовой программы обучения для команды руководителей АО \"НЭФИС-БИОПРОДУКТ\".','<p><span style=\"color: rgb(0, 0, 0);\">23 ноября прошло мероприятия для команды руководителей департаментов АО «НЭФИС-БИОПРОДУКТ».</span></p><p><span style=\"color: rgb(0, 0, 0);\"><span class=\"ql-cursor\">﻿</span>Тренинг был посвящён подведению итогов годовой программы обучения, в рамках которой каждый участник на протяжении всего года прокачивал навыки личной эффективности.</span></p>','ru'),(26,9,'я','<p><br></p>','en'),(27,9,'я','<p><br></p>','ch'),(28,10,'«НЭФИС-БИОПРОДУКТ» выпустил новый соус с морепродуктами Mr.Ricco «Морской коктейль».','<p>Деликатесный соус на основе растительных масел «Mr.Ricco Морской коктейль» отличается тонким, деликатным вкусом морепродуктов и отлично подойдет для поклонников средиземноморской кухни. Он идеально сочетается с холодными закусками и&nbsp;различными пастам, а также подходит в качестве заправки к овощным салатам.</p><p>Новинка встанет в один ряд&nbsp;на полки с уже полюбившимися классическими красными, белым и азиатскими соусами, а также соусом для фаст-фуда Mr.Ricco. Ценовое предложение нового продукта останется на уровне основной линейки соусов Mr.Ricco.</p><p>«Mr.Ricco Морской коктейль» представлен в удобной&nbsp;инновационной ПЭТ-упаковке с двойной защитной крышкой, ее отличает яркий и информативный дизайн этикетки.</p><p>Источник: <a href=\"https://www.business-gazeta.ru/blog/408141\" target=\"_blank\" style=\"color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">https://www.business-gazeta.ru/blog/408141</a></p><p><span style=\"color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">Дата: 28.12.2018</span></p><p><span style=\"color: transparent;\">Подробнее на «БИЗНЕС Online»:&nbsp;</span></p><p><br></p>','ru'),(29,10,'я','<p><br></p>','en'),(30,10,'я','<p><br></p>','ch'),(31,11,'АО \"НЭФИС-БИОПРОДУКТ\" выпустил новинку - томатный соус \"Болоньезе\".','<p class=\"ql-align-justify\"><span style=\"color: black;\">В этом году ассортиментную линейку соусов ТМ Mr.Ricco пополнил уникальный вкус, который станет&nbsp;незаменимым помощником на кухне у любой хозяйки.</span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">Томатный соус «Болоньезе» считается одним из лучших блюд экономного меню. Его еще называют «Болонским» из-за его происхождения с одноименным городом в Италии-Болонья.&nbsp;Это популярный томатный соус на основе мелко-нарезанных кусочков мяса, овощей, который традиционно подается с макаронами.</span></p><p><span style=\"color: black;\">Соус настолько же вкусен, сколь и прост в приготовлении. В этом и заключается его гениальность. </span></p><p><span style=\"color: black;\">Соус «Болоньезе»&nbsp;от Mr.Ricco порадует гурманов своей непревзойденностью, выделяясь среди других рецептов пасты.&nbsp;Этот соус станет настоящей находкой&nbsp;для людей, держащих пост и соблюдающих вегетарианскую диету, поскольку не содержит животных белков.</span></p><p><span style=\"color: black;\">Продукт рассчитан на 4 порции – от 90 гр. на 1 порцию.</span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">Продукт готов к употреблению, остается только добавить его к спагетти, лазанье или&nbsp;запеканке, и ужин для всей семьи готов. </span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">﻿Вкусно готовить просто с Mr.Ricco!</span></p><p><strong style=\"color: black;\">&nbsp;</strong></p><p class=\"ql-align-justify\"><br></p>','ru'),(32,11,'я','<p><br></p>','en'),(33,11,'я','<p><br></p>','ch'),(34,12,'АО «НЭФИС-БИОПРОДУКТ» принял участие в выставке «Green Week” в г. Берлин в составе группы компаний РТ.','<p><span style=\"color: rgb(0, 0, 0);\">АО «НЭФИС-БИОПРОДУКТ» принял участие в выставке «Green Week” в г. Берлин в составе группы компаний РТ. Участниками международной выставки «Зелёная неделя» стали порядка 1700 экспонентов из более чем 60 стран мира, которые представили свыше 100 тыс. наименований продуктов питания, сельскохозяйственных животных и аграрной техники. В этом году она прошла в 84-ый раз с 18-27 января. </span></p><p><span style=\"color: rgb(51, 51, 51);\">Россия в целом была представлена на выставке национальным павильоном, организованным Российским экспортным центром, а также стендами российских регионов: Ставропольского края, Калининградской и Саратовской областей, Республики Татарстан. Более 50 российских компаний представили хлебобулочную и молочную продукции, кондитерские изделия, рыбу, растительное масло, овощи и многое другое. Всего около 200 наименований.&nbsp;</span></p><p><span style=\"color: rgb(51, 51, 51);\">В этом году организаторы “Зеленой недели” рассчитывали на 400 тысяч посетителей. В том числе экспертов и специалистов. Их расчеты оправдались в полной мере.</span></p><p><span style=\"color: rgb(0, 0, 0);\">Фото:</span><a href=\"https://www.google.ru/url?sa=i&amp;source=images&amp;cd=&amp;cad=rja&amp;uact=8&amp;ved=2ahUKEwj-1f_G6aHhAhXqsosKHSpLBLEQjB16BAgBEAQ&amp;url=https%3A%2F%2Fberlin24.ru%2Fru%2Fnews%2Fnovosti-germanii-segodnja-v-novostjah%2F6549-zelenaa-nedela-2019-itogi-perspektivy-problemy-cernye-dyry.html&amp;psig=AOvVaw2o96rFbDBgHZVaV3IquN58&amp;ust=1553758996571323\" target=\"_blank\" style=\"color: rgb(214, 214, 214); background-color: rgb(34, 34, 34);\">Berlin24.ru</a></p><p><span style=\"color: rgb(0, 0, 0);\">Источник:</span><a href=\"https://www.google.ru/url?sa=i&amp;source=images&amp;cd=&amp;cad=rja&amp;uact=8&amp;ved=2ahUKEwj-1f_G6aHhAhXqsosKHSpLBLEQjB16BAgBEAQ&amp;url=https%3A%2F%2Fberlin24.ru%2Fru%2Fnews%2Fnovosti-germanii-segodnja-v-novostjah%2F6549-zelenaa-nedela-2019-itogi-perspektivy-problemy-cernye-dyry.html&amp;psig=AOvVaw2o96rFbDBgHZVaV3IquN58&amp;ust=1553758996571323\" target=\"_blank\" style=\"color: rgb(214, 214, 214); background-color: rgb(34, 34, 34);\">Berlin24.ru</a></p><p>Дата:28.01.2019</p><p><br></p><p><br></p>','ru'),(35,12,'я','<p><br></p>','en'),(36,12,'я','<p><br></p>','ch'),(37,13,'АО \"НЭФИС-БИОПРОДУКТ\"стал титульным спонсором Mr.Ricco Школьной Футбольной Лиги.','<p><span style=\"color: rgb(36, 36, 36);\">Сегодня в Казани состоялось торжественное открытие нового сезона «Mr. Ricco Школьная Футбольная Лига» (ШФЛ). В торжественной церемонии открытия приняли участие председатель Федерации футбола РТ Александр Гусев и председатель Совета директоров АО «НЭФИС-БИОПРОДУКТ», депутат Государственного Совета РТ пятого созыва Дмитрий Самаренкин. Открытие ознаменует начало проекта в новом формате - в Казани лига пройдет впервые, спонсором выступил «НЭФИС-БИОПРОДУКТ».</span></p><p><span style=\"color: rgb(36, 36, 36);\">Соревнования по мини-футболу проводятся среди учащихся школ Казани. На сегодняшний день, лига состоит из школьников 11-14 лет, которые объединены в 32 команды, 16 из них выйдут в финал. Лига ведет персональную статистику по игрокам и состоит из двух конференций: Запад и Восток. Каждая из конференций также поделена на две группы.</span></p><p><span style=\"color: rgb(36, 36, 36);\">Школьная Футбольной Лига — уникальный для Татарстана проект, Принципы проведения основаны на организации западных студенческих лиг, а главной задачей, по мнению организаторов, должно стать удовольствие, которое получат все: участники, тренеры, и, конечно, болельщики. Команды имеют свою узнаваемую форму, логотипы, а сезон заканчивается матчем звезд. У клубов свои группы поддержки, фан-клубы и спонсоры.</span></p><p><span style=\"color: rgb(36, 36, 36);\">Накануне, в спортивном комплексе «Олимп» прошел первый матч ШФЛ. В первом туре сыграли команды I дивизиона. Победителем стала команда «Бульдоги», из школы № 9. «Очень приятно наблюдать, с какой волей и азартом играют в футбол молодые ребят. Для нас важно, что сегодня собралось так много участников, так много болельщиков! Здорово, что в современном мире мы, наконец-то, немного оторвались от гаджетов, и получили удовольствие от дружных спортивных игр.&nbsp;Пусть празднует Его Величество Футбол!» - сказал Дмитрий Самаренкин.</span></p><p>Источник: <span style=\"color: transparent;\">&nbsp;</span><a href=\"https://www.business-gazeta.ru/blog/412093\" target=\"_blank\" style=\"color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">https://www.business-gazeta.ru/blog/412093</a></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">04.02.2019</span></p><p><span style=\"color: transparent;\">Подробнее на «БИЗНЕС Online»:</span></p><p><br></p><p><br></p><p><br></p><p><br></p>','ru'),(38,13,'я','<p><br></p>','en'),(39,13,'я','<p><br></p>','ch'),(40,14,'Продукция Mr.Ricco получила звание «Лучший продукт» на международной выставке «Продэкспо-2019».','<p><span style=\"color: rgb(36, 36, 36);\">На 26-й международной выставке «Продэкспо-2019» в Москве продукция&nbsp;НЭФИС-БИОПРОДУКТ оказалась в числе лучших и удостоилась золотых и серебряных медалей, а так же высокого звания – «Лучший продукт-2019».</span></p><p><span style=\"color: rgb(36, 36, 36);\">Так, кетчуп Mr. Ricco «К сосискам и купатам», а также варенье Mr. Ricco «Малиновое» получили золотые медали, серебряными медалистами стали Mr. Ricco «Майонез &amp; укроп» и соус Mr. Ricco «Бургер». Все эти продукты входят в число новинок компании.</span></p><p><span style=\"color: rgb(36, 36, 36);\">НЭФИС-БИОПРОДУКТ принял участие в дегустационном конкурсе в рамках выставки. Для дегустации компания представила майонезы, кетчупы и соусы.</span></p><p>«Продэкспо-2019» – крупнейший в России и Восточной Европе международный форум-выставка пищевой индустрии, участие в нем считается престижным для компаний-производителей. В этом году в «Продэкспо-2019» участие приняли около 2,5 тыс. компаний из 69 стран.</p><p>Напомним, что продукция НЭФИС БИОПРОДУКТ неоднократно становилась победителем форума. Так, в 2016 году пять продуктов предприятия стали золотыми призерами.</p><p>Источник: <a href=\"https://www.business-gazeta.ru/blog/414708\" target=\"_blank\" style=\"color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">https://www.business-gazeta.ru/blog/414708</a></p><p><span style=\"color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">Дата: 25.02.2019</span></p><p><br></p><p><span style=\"color: transparent;\">Подробнее на «БИЗНЕС Online»:&nbsp;</span></p><p><br></p><p><br></p><p><span style=\"color: transparent;\">Подробнее на «БИЗНЕС Onlin</span></p><p><br></p>','ru'),(41,14,'я','<p><br></p>','en'),(42,14,'я','<p><br></p>','ch'),(43,15,'АО \"НЭФИС-БИОПРОДУКТ\"  стал участником  Международной специализированной выставки ТатАгроЭкспо.','<p>АО \"НЭФИС-БИОПРОДУКТ\" принял участие <span style=\"color: rgb(0, 0, 0);\">в Международной специализированной выставке «ТатАгроЭкспо» и Поволжском Агропромышленном Форуме. Мероприятие прошло с 13 по 15 февраля 2019 года на территории международного выставочного центра «Казань Экспо».</span></p><p class=\"ql-align-justify\">Экспозиция выставки охватила все сферы агропромышленного комплекса: сельскохозяйственную технику, оборудование и запчасти, химические средства защиты растений и удобрения, семена сельскохозяйственных культур, оборудование для переработки, упаковки и сортировки сельхозпродукции и др.</p><p class=\"ql-align-justify\">Свою продукцию представили также такие компании, как АО «ДАНОН РОССИЯ», ООО «Казанский молочный комбинат», ТК «Майский», ООО «Челны-бройлер», АО «Эссен Продакшн АГ» и др.</p><p class=\"ql-align-justify\">Помимо экспозиции, специалистам предложена насыщенная деловая программа с участием представителей органов власти, крупнейших отечественных и зарубежных компаний: круглые столы, семинары и мастер-классы по актуальным вопросам развития земледелия и животноводства.&nbsp;&nbsp;&nbsp;&nbsp;</p><p class=\"ql-align-justify\">Посетителям выставки представилась возможность приобрести качественные натуральные товары и продегустировать продукцию на ярмарке-продаже сельскохозяйственной продукции фермерских хозяйств из регионов Поволжья.</p><p><br></p>','ru'),(44,15,'я','<p><br></p>','en'),(45,15,'я','<p><br></p>','ch'),(46,16,'АО «НЭФИС-БИОПРОДУКТ» и АО «КМЭЗ» приняли участие в объединённой выставке предприятий агропромышленного комплекса РТ в Казанской Ратуше.','<p><span style=\"color: rgb(0, 0, 0);\"> АО «НЭФИС-БИОПРОДУКТ» и АО «КМЭЗ» приняли участие в объединённой выставке предприятий агропромышленного комплекса РТ в Казанской Ратуше.</span></p><p><span style=\"color: rgb(0, 0, 0);\">Выставка прошла в рамках совещания с главой Минсельхоза РФ - Дмитрием Патрушевым на тему «О планируемых объемах производства и экспорта продукции АПК регионов ПФО».</span></p><p>Дата: 22.02.2019</p><p><span style=\"color: rgb(0, 0, 0);\">⠀</span></p>','ru'),(47,16,'я','<p><br></p>','en'),(48,16,'я','<p><br></p>','ch'),(49,17,'Новинка в линейке постных майонезов - соус Ласка «Постный с жареным луком».','<p><span style=\"color: rgb(0, 0, 0);\">Майонезный соус </span>Ласка «Постный с жареным луком» имеет о<span style=\"color: rgb(0, 0, 0);\">ригинальный сливочный вкус с кусочками слегка пассерованного лука. </span></p><p><span style=\"color: black;\">Соус не содержит&nbsp;жиры животного происхождения&nbsp;и великолепно подходит для поста, вегетарианского и диетического питания. Разработан специально для любителей нежирных, облегченных продуктов, а также идеален для веганов.</span></p><p><span style=\"color: rgb(0, 0, 0);\">Прекрасно сочетается со всеми блюдами из картофеля, тушеными и свежими овощами, рыбных и мясных блюд, салатов.</span></p><p><span style=\"color: black;\">Большой объем упаковки и доступная цена позволяют потребителю со средним уровнем дохода&nbsp;насладиться приятным сливочным вкусом и почувствовать кусочки слегка пассерованного лука.</span></p><p><span style=\"color: black;\">Соус выпускается в удобной экономичной упаковке -&nbsp;380 гр.</span></p><p><span style=\"color: black;\">Представлен на полках всех крупных и мелких торговых сетей.&nbsp;</span></p><p><span style=\"color: rgb(0, 0, 0);\">⠀</span></p><p><br></p><p><span style=\"color: rgb(0, 0, 0);\">⠀</span></p><p><br></p>','ru'),(50,17,'en','<p><br></p>','en'),(51,17,'ch','<p><br></p>','ch'),(52,18,'АО \"НЭФИС-БИОПРОДУКТ\" выпускает новинку – джем «Облепиховый».','<p class=\"ql-align-justify\"><em>Джем «Облепиховый» стал новинкой в ассортименте сладкой линейки Mr Ricco. На прилавки российских магазинов продукт поступит уже в конце марта. </em></p><p class=\"ql-align-justify\">НЭФИС-БИОПРОДУКТ разнообразил ассортимент сладкой линейки Mr Ricco натуральным джемом из облепихи.&nbsp;Сырьем для изготовления продукта послужили отборные ягоды, выращенные в России.&nbsp;</p><p class=\"ql-align-justify\">Для изготовления джема ягоды размельчают и соединяют с пектином, что позволяет продукту иметь однородную, плотную текстуру. Таким образом, джем легко намазываются на хлеб или тосты и используются в выпечке.</p><p class=\"ql-align-justify\">Джем «Облепиховый» как и вся сладкая продукция от Mr.Ricco проходит “щадящую”&nbsp;пастеризацию и фасуется в стеклянную тару объемом готовой продукции 310 гр. Каждая крышка на банке с готовым продуктом имеет специальный клапан, который служит индикатором высокого качества, примерно такие же используют в изготовлении детского питания. Система твист-офф и резиновая прокладка создают абсолютную герметичность продукта.</p><p class=\"ql-align-justify\">Напомним, что НЭФИС-БИОПРОДУКТ вывел на рынок варенья и джемы в мае 2018 года. Первыми на прилавки магазинов поступили баночки с вареньем из малины, черники, чёрной смородины и клюквы, чуть позже ассортимент расширился джемами с ягодами брусники, с лесными ягодами, клубникой и вишней.</p><p class=\"ql-align-justify\">Производство «сладкой линейки» на предприятии автоматизировано, что исключает «человеческий фактор» и гарантирует стабильное качество. <span style=\"background-color: yellow;\">Процентное содержание ягод составляет не менее 35%.</span>&nbsp;</p><p class=\"ql-align-justify\"><br></p><p><br></p>','ru'),(53,18,'en','<p><br></p>','en'),(54,18,'ch','<p><br></p>','ch'),(55,19,'Успешная проверка АО \"НЭФИС-БИОПРОДУКТ\" по проверке по охране труда.','<p>Ознакомиться с документами вы можете, пройдя по ссылке: https://yadi.sk/d/tqUanbbHHw0Vcw</p>','ru'),(56,19,'en','<p><br></p>','en'),(57,19,'ch','<p><br></p>','ch');
/*!40000 ALTER TABLE `news_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pack_product`
--

DROP TABLE IF EXISTS `pack_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pack_product` (
  `pack_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pack_id`,`product_id`),
  KEY `pack_product_pack_id_index` (`pack_id`),
  KEY `pack_product_product_id_index` (`product_id`),
  CONSTRAINT `pack_product_pack_id_foreign` FOREIGN KEY (`pack_id`) REFERENCES `packs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `pack_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pack_product`
--

LOCK TABLES `pack_product` WRITE;
/*!40000 ALTER TABLE `pack_product` DISABLE KEYS */;
INSERT INTO `pack_product` VALUES (1,15),(1,19),(1,20),(1,21),(1,22),(1,28),(1,30),(1,31),(1,32),(1,34),(1,35),(1,43),(1,45),(1,53),(1,54),(1,55),(1,56),(1,57),(1,58),(1,59),(1,60),(1,61),(1,67),(1,69),(1,71),(1,72),(1,73),(1,74),(1,75),(1,76),(1,77),(1,78),(1,104),(1,106),(1,108),(1,109),(1,112),(1,113),(1,114),(1,115),(1,116),(1,117),(1,118),(2,15),(2,18),(2,19),(2,20),(2,21),(2,22),(2,24),(2,25),(2,27),(2,28),(2,32),(2,34),(2,38),(2,39),(2,40),(2,44),(2,45),(2,67),(2,72),(2,73),(2,79),(2,81),(2,82),(2,83),(2,84),(2,86),(2,87),(2,93),(2,98),(2,100),(2,101),(2,102),(2,103),(2,104),(2,105),(2,106),(2,107),(2,108),(2,109),(2,110),(2,111),(2,112),(2,113),(2,114),(2,115),(2,118),(3,21),(3,28),(3,106),(3,107),(4,35),(4,37),(4,38),(4,39),(4,64),(4,65),(4,69),(4,70),(4,79),(4,80),(4,82),(4,83),(4,84),(4,85),(4,88),(4,89),(4,90),(4,91),(4,92),(4,94),(4,95),(4,96),(4,97),(4,102),(4,103),(4,107),(4,111),(4,116),(4,117),(5,36),(5,62),(5,63),(5,66),(7,99),(7,100),(7,101),(8,41),(8,46),(8,47),(8,48),(8,49),(8,50),(8,51),(8,52),(8,119),(9,38),(9,40),(9,83);
/*!40000 ALTER TABLE `pack_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pack_translations`
--

DROP TABLE IF EXISTS `pack_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pack_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pack_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pack_trans_pack_id_locale_unique` (`pack_id`,`locale`),
  KEY `pack_translations_locale_index` (`locale`),
  CONSTRAINT `pack_translations_pack_id_foreign` FOREIGN KEY (`pack_id`) REFERENCES `packs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pack_translations`
--

LOCK TABLES `pack_translations` WRITE;
/*!40000 ALTER TABLE `pack_translations` DISABLE KEYS */;
INSERT INTO `pack_translations` VALUES (1,1,'ПЭТ-бутылка','ru'),(2,1,'','en'),(3,1,'','ch'),(4,2,'Дой-пак','ru'),(5,3,'РР-банка','ru'),(6,4,'ПЭТ-банка','ru'),(7,5,'Топ-даун','ru'),(8,6,'ПЭТ','ru'),(9,7,'Ведро','ru'),(10,8,'Стеклобанка','ru'),(11,9,'Сашет','ru'),(12,9,'en','en'),(13,9,'ch','ch');
/*!40000 ALTER TABLE `pack_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packs`
--

DROP TABLE IF EXISTS `packs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `packs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packs`
--

LOCK TABLES `packs` WRITE;
/*!40000 ALTER TABLE `packs` DISABLE KEYS */;
INSERT INTO `packs` VALUES (1,'2019-02-05 07:40:48','2019-02-05 07:40:48'),(2,'2019-02-05 15:25:31','2019-02-05 15:25:31'),(3,'2019-02-05 15:26:01','2019-02-05 15:26:01'),(4,'2019-02-05 15:26:39','2019-02-05 15:26:39'),(5,'2019-02-05 15:28:05','2019-02-05 15:28:05'),(6,'2019-02-05 15:28:20','2019-02-05 15:28:20'),(7,'2019-02-05 15:28:53','2019-02-05 15:28:53'),(8,'2019-02-05 15:29:07','2019-02-05 15:29:07'),(9,'2019-03-05 05:38:22','2019-03-05 05:38:22');
/*!40000 ALTER TABLE `packs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partner_translations`
--

DROP TABLE IF EXISTS `partner_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partner_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `partner_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `partner_translations_partner_id_locale_unique` (`partner_id`,`locale`),
  KEY `partner_translations_locale_index` (`locale`),
  CONSTRAINT `partner_translations_partner_id_foreign` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partner_translations`
--

LOCK TABLES `partner_translations` WRITE;
/*!40000 ALTER TABLE `partner_translations` DISABLE KEYS */;
INSERT INTO `partner_translations` VALUES (1,1,'Auchan Holding','Французская корпорация, представленная во многих странах мира.','ru'),(2,1,'en','en','en'),(3,1,'ch','ch','ch'),(4,2,'Розничная сеть \"Магнит\"','\"Магнит\" - одна из крупнейших торгово-розничных сетей в России.','ru'),(5,2,'en','en','en'),(6,2,'ch','ch','ch');
/*!40000 ALTER TABLE `partner_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `www` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` VALUES (1,'/storage/partner/cqgMIG35cMYi3eDH0nAouj3FNR4FttRnirj4t7RB.png','www.auchan.ru','2019-02-07 08:44:28','2019-02-07 08:44:28'),(2,'/storage/partner/KdOBNfjAnrRmFGTeCggsh6tjW9KdOex40mqLwReQ.png','www.magnit-info.ru','2019-04-02 04:01:24','2019-04-04 18:04:37');
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_advantage_product`
--

DROP TABLE IF EXISTS `product_advantage_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_advantage_product` (
  `product_advantage_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`product_advantage_id`,`product_id`),
  KEY `product_advantage_product_product_advantage_id_index` (`product_advantage_id`),
  KEY `product_advantage_product_product_id_index` (`product_id`),
  CONSTRAINT `product_advantage_product_product_advantage_id_foreign` FOREIGN KEY (`product_advantage_id`) REFERENCES `product_advantages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_advantage_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_advantage_product`
--

LOCK TABLES `product_advantage_product` WRITE;
/*!40000 ALTER TABLE `product_advantage_product` DISABLE KEYS */;
INSERT INTO `product_advantage_product` VALUES (1,15),(1,18),(1,19),(1,20),(1,21),(1,22),(1,24),(1,25),(1,27),(1,28),(1,30),(1,31),(1,32),(1,34),(1,35),(1,36),(1,37),(1,38),(1,39),(1,40),(1,41),(1,43),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(1,50),(1,51),(1,52),(1,54),(1,55),(1,56),(1,57),(1,58),(1,59),(1,60),(1,62),(1,63),(1,64),(1,65),(1,66),(1,67),(1,69),(1,70),(1,71),(1,72),(1,73),(1,74),(1,75),(1,76),(1,77),(1,78),(1,79),(1,80),(1,81),(1,82),(1,83),(1,84),(1,85),(1,86),(1,87),(1,88),(1,89),(1,90),(1,91),(1,92),(1,94),(1,95),(1,96),(1,97),(1,99),(1,100),(1,101),(1,102),(1,104),(1,105),(1,106),(1,107),(1,108),(1,109),(1,110),(1,111),(1,112),(1,113),(1,114),(1,115),(1,116),(1,117),(1,118),(1,119),(6,15),(6,18),(6,19),(6,20),(6,22),(6,24),(6,27),(6,32),(6,37),(6,39),(6,40),(6,41),(6,45),(6,46),(6,47),(6,48),(6,49),(6,50),(6,51),(6,52),(6,54),(6,55),(6,56),(6,57),(6,58),(6,59),(6,60),(6,62),(6,63),(6,64),(6,65),(6,66),(6,67),(6,69),(6,70),(6,71),(6,72),(6,73),(6,74),(6,75),(6,76),(6,77),(6,78),(6,79),(6,80),(6,81),(6,82),(6,83),(6,84),(6,85),(6,86),(6,87),(6,88),(6,89),(6,90),(6,91),(6,92),(6,94),(6,95),(6,96),(6,97),(6,99),(6,100),(6,101),(6,102),(6,104),(6,105),(6,106),(6,107),(6,108),(6,109),(6,110),(6,111),(6,112),(6,113),(6,114),(6,115),(6,116),(6,117),(6,118),(6,119),(7,51),(7,52),(7,119),(8,15),(8,18),(8,19),(8,20),(8,22),(8,24),(8,27),(8,32),(8,37),(8,39),(8,40),(8,41),(8,44),(8,45),(8,46),(8,47),(8,48),(8,51),(8,52),(8,54),(8,55),(8,56),(8,57),(8,58),(8,59),(8,60),(8,62),(8,63),(8,64),(8,65),(8,66),(8,67),(8,69),(8,70),(8,71),(8,72),(8,73),(8,74),(8,75),(8,76),(8,77),(8,78),(8,79),(8,80),(8,81),(8,82),(8,83),(8,84),(8,86),(8,87),(8,88),(8,89),(8,90),(8,91),(8,92),(8,94),(8,95),(8,96),(8,97),(8,102),(8,104),(8,105),(8,106),(8,107),(8,108),(8,109),(8,110),(8,111),(8,112),(8,113),(8,114),(8,115),(8,116),(8,117),(8,118),(8,119),(9,15),(9,22),(9,69),(9,70),(9,71),(9,72),(9,73),(9,75),(9,76),(9,80),(9,82),(9,106),(9,109),(10,88),(10,95),(11,15),(11,18),(11,38),(11,45),(11,57),(11,58),(11,81),(11,82),(11,83),(11,86),(11,87),(11,102),(11,103),(11,104),(11,106),(11,109),(11,111),(12,15),(12,18),(12,22),(12,38),(12,45),(12,81),(12,82),(12,83),(12,86),(12,87),(12,102),(12,103),(12,104),(12,105),(12,106),(12,108),(12,109),(12,111),(13,15),(13,18),(13,38),(13,45),(13,81),(13,82),(13,83),(13,86),(13,87),(13,102),(13,103),(13,104),(13,105),(13,106),(13,109),(13,111),(14,18),(14,22),(14,38),(14,45),(14,81),(14,82),(14,83),(14,87),(14,102),(14,103),(14,104),(14,106),(14,108),(14,109),(14,111),(15,40),(15,98),(16,99),(16,100),(16,101),(17,40),(17,98),(18,40),(18,98),(19,22),(19,24),(19,39),(19,40),(19,70),(19,98),(19,107),(19,108),(19,110),(19,116),(19,117),(20,99),(20,100),(20,101),(20,116),(20,117),(21,99),(21,100),(21,101),(22,99),(22,100),(22,101),(23,57),(23,58),(23,59),(24,40),(24,57),(24,58),(24,59),(25,57),(25,58),(25,59),(26,57),(26,59),(27,41),(27,46),(27,47),(27,48),(27,51),(27,52),(29,41),(29,46),(29,47),(29,48),(30,41),(30,46),(30,47),(30,48),(31,15),(31,18),(31,20),(31,22),(31,24),(31,27),(31,39),(31,40),(31,41),(31,44),(31,45),(31,46),(31,47),(31,48),(31,51),(31,52),(31,56),(31,61),(31,70),(31,93),(31,107),(31,110),(31,111),(31,114),(31,116),(31,117),(31,118),(31,119),(32,15),(32,18),(32,20),(32,22),(32,27),(32,45),(32,56),(32,61),(32,108),(32,109),(32,116),(32,117),(32,118),(32,119),(33,56),(33,61),(34,15),(34,109),(35,22),(35,108),(39,41),(39,113),(39,114),(40,109),(41,39),(41,106),(42,73),(42,118);
/*!40000 ALTER TABLE `product_advantage_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_advantage_translations`
--

DROP TABLE IF EXISTS `product_advantage_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_advantage_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_advantage_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `advantage_trans_advantage_id_locale_unique` (`product_advantage_id`,`locale`),
  KEY `product_advantage_translations_locale_index` (`locale`),
  CONSTRAINT `product_advantage_translations_product_advantage_id_foreign` FOREIGN KEY (`product_advantage_id`) REFERENCES `product_advantages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_advantage_translations`
--

LOCK TABLES `product_advantage_translations` WRITE;
/*!40000 ALTER TABLE `product_advantage_translations` DISABLE KEYS */;
INSERT INTO `product_advantage_translations` VALUES (1,1,'Вкус','ru'),(2,1,'Taste','en'),(3,1,'味道','ch'),(11,6,'Качество','ru'),(12,7,'Натуральные ягоды','ru'),(13,7,'я','en'),(14,7,'я','ch'),(15,8,'Без ГМО','ru'),(16,8,'я','en'),(17,8,'я','ch'),(18,9,'Без красителей','ru'),(19,9,'en','en'),(20,9,'ch','ch'),(21,10,'Нежный грибной вкус','ru'),(22,10,'en','en'),(23,10,'ch','ch'),(24,11,'Оrganic','ru'),(25,11,'en','en'),(26,11,'ch','ch'),(27,12,'Без консервантов','ru'),(28,12,'en','en'),(29,12,'ch','ch'),(30,13,'Без крахмала','ru'),(31,13,'en','en'),(32,13,'ch','ch'),(33,14,'Без ароматизаторов','ru'),(34,14,'en','en'),(35,14,'ch','ch'),(36,15,'Для веганов','ru'),(37,15,'en','en'),(38,15,'ch','ch'),(39,16,'HoReCa','ru'),(40,16,'en','en'),(41,16,'ch','ch'),(42,17,'Без животных жиров','ru'),(43,17,'en','en'),(44,17,'ch','ch'),(45,18,'Низкое содержание жира','ru'),(46,18,'en','en'),(47,18,'ch','ch'),(48,19,'Доступная цена','ru'),(49,19,'en','en'),(50,19,'ch','ch'),(51,20,'Запекание','ru'),(52,20,'en','en'),(53,20,'ch','ch'),(54,21,'Основа для соуса','ru'),(55,21,'en','en'),(56,21,'ch','ch'),(57,22,'Декорирование блюд','ru'),(58,22,'en','en'),(59,22,'ch','ch'),(60,23,'Подходит для жарки','ru'),(61,23,'en','en'),(62,23,'ch','ch'),(63,24,'Подходит для заправки салатов','ru'),(64,24,'en','en'),(65,24,'ch','ch'),(66,25,'Для выпечки','ru'),(67,25,'en','en'),(68,25,'ch','ch'),(69,26,'Для приготовления домашних соусов','ru'),(70,26,'en','en'),(71,26,'ch','ch'),(72,27,'Уникальная технология производства в сочетании с новым итальянским оборудованием','ru'),(73,27,'en','en'),(74,27,'ch','ch'),(78,29,'Герметичная упаковка с системой твист-офф, которая  позволяет сохранить естественный вкус и запах продукта','ru'),(79,29,'en','en'),(80,29,'ch','ch'),(81,30,'Без использования ароматизаторов и красителей','ru'),(82,30,'en','en'),(83,30,'ch','ch'),(84,31,'Отечественный производитель','ru'),(85,31,'en','en'),(86,31,'ch','ch'),(87,32,'Соответствует ГОСТу','ru'),(88,32,'en','en'),(89,32,'ch','ch'),(90,33,'Содержит витамины Е и Omega6','ru'),(91,33,'en','en'),(92,33,'ch','ch'),(93,34,'Продукт года-2014','ru'),(94,34,'en','en'),(95,34,'ch','ch'),(96,35,'Продукт года-2015','ru'),(97,35,'en','en'),(98,35,'ch','ch'),(99,36,'Продукт года-2016','ru'),(100,36,'en','en'),(101,36,'ch','ch'),(102,37,'Продукт года-2017','ru'),(103,37,'en','en'),(104,37,'ch','ch'),(105,38,'Продукт года-2018','ru'),(106,38,'en','en'),(107,38,'ch','ch'),(108,39,'Продукт года-2019','ru'),(109,39,'en','en'),(110,39,'ch','ch'),(111,40,'ПРОВЕРЕНО РОСКАЧЕСТВОМ','ru'),(112,40,'en','en'),(113,40,'ch','ch'),(114,41,'Победитель программы \"Контрольная закупка\"','ru'),(115,41,'en','en'),(116,41,'ch','ch'),(117,42,'Продукт года -2013','ru'),(118,42,'en','en'),(119,42,'ch','ch');
/*!40000 ALTER TABLE `product_advantage_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_advantages`
--

DROP TABLE IF EXISTS `product_advantages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_advantages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_advantages`
--

LOCK TABLES `product_advantages` WRITE;
/*!40000 ALTER TABLE `product_advantages` DISABLE KEYS */;
INSERT INTO `product_advantages` VALUES (1,'2019-02-03 16:12:28','2019-02-03 16:12:28'),(6,'2019-02-07 18:19:32','2019-02-07 18:19:32'),(7,'2019-02-28 11:07:01','2019-02-28 11:07:01'),(8,'2019-02-28 11:07:21','2019-02-28 11:07:21'),(9,'2019-03-04 08:09:04','2019-03-04 08:09:04'),(10,'2019-03-04 08:09:32','2019-03-04 08:09:32'),(11,'2019-03-04 10:08:53','2019-03-04 10:08:53'),(12,'2019-03-04 10:09:17','2019-03-04 10:09:17'),(13,'2019-03-04 10:09:30','2019-03-04 10:09:30'),(14,'2019-03-04 10:09:56','2019-03-04 10:09:56'),(15,'2019-03-05 05:27:18','2019-03-05 05:27:18'),(16,'2019-03-05 05:27:45','2019-03-05 05:27:45'),(17,'2019-03-05 05:28:05','2019-03-05 05:28:05'),(18,'2019-03-05 05:28:46','2019-03-05 05:28:46'),(19,'2019-03-05 10:26:01','2019-03-05 10:26:01'),(20,'2019-03-11 07:57:54','2019-03-11 07:57:54'),(21,'2019-03-11 07:58:19','2019-03-11 07:58:19'),(22,'2019-03-11 07:58:53','2019-03-11 07:58:53'),(23,'2019-03-11 09:58:36','2019-03-11 09:58:36'),(24,'2019-03-11 09:58:54','2019-03-11 09:58:54'),(25,'2019-03-11 09:59:25','2019-03-11 09:59:25'),(26,'2019-03-11 09:59:54','2019-03-11 09:59:54'),(27,'2019-03-11 10:10:14','2019-03-11 10:10:14'),(29,'2019-03-11 10:11:00','2019-03-11 10:11:00'),(30,'2019-03-11 10:11:28','2019-03-11 10:11:28'),(31,'2019-03-11 10:11:44','2019-03-11 10:11:44'),(32,'2019-03-11 11:07:58','2019-03-11 11:07:58'),(33,'2019-03-11 11:08:15','2019-03-11 11:08:15'),(34,'2019-03-12 03:52:39','2019-03-12 03:52:39'),(35,'2019-03-12 03:52:54','2019-03-12 03:52:54'),(36,'2019-03-12 03:53:14','2019-03-12 03:53:14'),(37,'2019-03-12 03:53:27','2019-03-12 03:53:27'),(38,'2019-03-12 03:53:48','2019-03-12 03:53:48'),(39,'2019-03-12 03:54:02','2019-03-12 03:54:02'),(40,'2019-03-13 07:49:49','2019-03-13 07:49:49'),(41,'2019-03-13 07:50:19','2019-03-13 07:50:19'),(42,'2019-04-01 10:24:16','2019-04-01 10:24:16');
/*!40000 ALTER TABLE `product_advantages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_translations`
--

DROP TABLE IF EXISTS `product_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `special` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_translations_product_id_locale_unique` (`product_id`,`locale`),
  KEY `product_translations_locale_index` (`locale`),
  CONSTRAINT `product_translations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_translations`
--

LOCK TABLES `product_translations` WRITE;
/*!40000 ALTER TABLE `product_translations` DISABLE KEYS */;
INSERT INTO `product_translations` VALUES (35,15,'Кетчуп Mr.Ricco','Для гриля и шашлыка','Кетчуп Mr.Ricco «Для гриля и шашлыка» - классический натуральный томатный кетчуп сочетает в себе особый набор специй, благодаря которым вкус шашлыка станет еще ярче.','<p class=\"ql-align-justify\"><strong>Кетчупы Mr.Ricco ORGANIC готовятся по специальной сложной технологии, позволяющей полностью отказаться от загустителей и стабилизаторов. Они полностью натуральный: в его состав входят только томаты, соль, сахар и специи. Отказ от использования крахмала позволяет добавлять при приготовлении лишь минимально необходимое количество соли и специй, которые не заглушают, а только подчеркивают натуральный томатный вкус продукта.</strong></p><p><br></p><p><br></p>','ru'),(36,15,'en','en','en','<p>en</p>','en'),(37,15,'ch','ch','ch','<p>ch</p>','ch'),(44,18,'Кетчуп Mr.Ricco','С чесноком','Кетчуп Mr.Ricco «С чесноком» - классический натуральный томатный кетчуп, приправленный пряными нотами трав с кусочками чеснока.','<p class=\"ql-align-justify\"><strong>Кетчупы Mr.Ricco ORGANIC готовятся по специальной сложной технологии, позволяющей полностью отказаться от загустителей и стабилизаторов. Они полностью натуральные: в его состав входят только томаты, соль, сахар и специи. Отказ от использования крахмала позволяет добавлять при приготовлении лишь минимально необходимое количество соли и специй, которые не заглушают, а только подчеркивают натуральный томатный вкус продукта.</strong></p><p><br></p><p><br></p>','ru'),(45,18,'en','en','en','<p>en</p>','en'),(46,18,'ch','ch','ch','<p>ch</p>','ch'),(47,19,'Кетчуп Mr.Ricco','К курице с карри','Пряная острота карри с переплетением ярких вкусовых нот куркумы, кориандра и гвоздики в тандеме воплощают непревзойдённый вкус кетчупа Mr.Ricco «К курице с карри», который подарит незабываемый аромат сочному куриному мясу, приготовленному на углях.','<p><strong>Уникальный состав трав в кетчупах Mr.Ricco «Grill Menu» призван придать простым блюдам новый, необычный оттенок вкуса. Каждый кетчуп изготовлен по специально-подобранной изысканной рецептуре. </strong></p><p><br></p><p><br></p>','ru'),(48,19,'en','en','en','<p>en</p>','en'),(49,19,'ch','ch','ch','<p>ch</p>','ch'),(50,20,'Кетчуп Mr.Ricco','К ребрышкам','Яркое сочетание красного перца, розмарина, зелени петрушки и чеснока раскрывает новый вкус кетчупа Mr.Ricco «К ребрышкам».  Оригинальный вкус кетчупа с нотками душистой зелени великолепно сочетается  с хрустящими ребрышками барбекю, приготовленными на гриле.','<p><strong>Уникальный состав трав в кетчупах Mr.Ricco «Grill Menu» призван придать простым блюдам новый, необычный оттенок вкуса. Каждый кетчуп изготовлен по специально-подобранной изысканной рецептуре. </strong></p><p><br></p><p><br></p>','ru'),(51,20,'en','en','en','<p>en</p>','en'),(52,20,'ch','ch','ch','<p>ch</p>','ch'),(53,21,'Кетчуп Миладора','Томатный','Описание','<p>Особенности</p>','ru'),(54,21,'en','en','en','<p>en</p>','en'),(55,21,'ch','ch','ch','<p>ch</p>','ch'),(56,22,'Кетчуп Миладора','Шашлычный','Кетчуп Миладора «Шашлычный» - классический натуральный томатный кетчуп сочетает в себе особый набор специй, благодаря которым вкус шашлыка станет еще ярче.','<p class=\"ql-align-justify\"><strong>Кетчупы \"Миладора\" содержат натуральные специи,кусочки перцев и овощей. В продукте полностью отсутствуют ГМО, ароматизаторы и красители. Кетчупы \"Миладора\" - это гарантированно качественные российские продукты по доступной цене.</strong></p><p><br></p><p><br></p>','ru'),(57,22,'en','en','en','<p>en</p>','en'),(58,22,'ch','ch','ch','<p>ch</p>','ch'),(62,24,'Кетчуп Миладора','Лечо','Много кусочков натуральных овощей и неизменный домашний вкус в сочетании с безупречным качеством достойны вашего выбора!','<p>В приготовлении кетчупа  Миладора \"Лечо\"  применяется технология – под воздействием определенной температуры происходит загущение овоща, в результате чего вырабатывается пектин – вещество, известное своими многочисленными полезными свойствами.</p>','ru'),(63,24,'en','en','en','<p>en</p>','en'),(64,24,'ch','ch','ch','<p>ch</p>','ch'),(65,25,'Кетчуп Mr.Ricco','Со вкусом бекона','Прекрасную альтернативу ингредиентам идеального завтрака – томатам и бекону, составит новый кетчуп Mr.Ricco «Со вкусом бекона».','<p><span style=\"color: rgb(0, 0, 0);\">Насыщенный аромат бекона с тонким оттенком копчености сделает невероятным любое блюдо, будь то овощи-гриль, лазанья или паста.</span></p>','ru'),(66,25,'en','en','en','<p>en</p>','en'),(67,25,'ch','ch','ch','<p>ch</p>','ch'),(71,27,'Кетчуп Mr.Ricco','Средиземноморский с вялеными томатами','Изысканное сочетание вяленых томатов с пряной зеленью орегано».','<p><span style=\"color: rgb(0, 0, 0);\">Интерес к средиземноморской кухне постоянно растет. С одной стороны, средиземноморские блюда изысканны, а с другой –&nbsp;легки и полезны. Изысканное сочетание вяленых томатов с пряной зеленью орегано - настоящее произведение средиземноморский кухни, которое&nbsp;вдохновило Mr.Ricco на создание новинки. В компании томатного кетчупа Mr.Ricco «Средиземноморский с вялеными томатами» гребешки, мидии и креветки приобретут еще более насыщенный вкус, а&nbsp;вкус любимой пасты и мясных блюд раскроется с совершенно новой стороны.</span></p>','ru'),(72,27,'en','en','en','<p>en</p>','en'),(73,27,'ch','ch','ch','<p>ch</p>','ch'),(74,28,'Кетчуп Mr.Ricco','Томатный','Кетчуп Mr.Ricco ORGANIC Pomodoro Speciale – 100% натуральный кетчуп, без загустителей и без добавления крахмала.','<p><span style=\"color: rgb(76, 76, 76);\">Mr.Ricco – это первый российский бренд, который стал использовать в своем производстве новую для Российского рынка технологию приготовления кетчупа.</span></p>','ru'),(75,28,'en','en','en','<p>en</p>','en'),(76,28,'ch','ch','ch','<p>ch</p>','ch'),(80,30,'Соус Mr.Ricco','Цезарь','Описание','<p>Описание</p>','ru'),(81,30,'en','en','en','<p>en</p>','en'),(82,30,'ch','ch','ch','<p>ch</p>','ch'),(83,31,'Соус Mr.Ricco','Горчичный','Описание','<p>Особенности</p>','ru'),(84,31,'en','en','en','<p>en</p>','en'),(85,31,'ch','ch','ch','<p>ch</p>','ch'),(86,32,'Соус Mr.Ricco','Чесночный','Соус Mr.Ricco \"Чесночный\" -популярный соус на основе растительных масел, характеризующийся великолепным сочетанием свежего чеснока, весеннего лука и горчицы.','<p>Особенности</p>','ru'),(87,32,'en','en','en','<p>en</p>','en'),(88,32,'ch','ch','ch','<p>ch</p>','ch'),(92,34,'Соус Mr.Ricco','Грибной','Cоус Mr.Ricco «Грибной» в своем составе содержит натуральные, выращенные в специальных условиях, и поэтому полностью безопасные грибы, качество которых проходит тщательную проверку в несколько этапов. Такой соус с кусочками настоящих грибов прекрасно дополнит ваши любимые блюда и порадует своим мягким, нежным вкусом.','<p>Особенности</p>','ru'),(93,34,'en','en','en','<p>en</p>','en'),(94,34,'ch','ch','ch','<p>ch</p>','ch'),(95,35,'Соус Миладора','Чесночный','\"Миладора Чесночный\"-это гармоничное сочетание чеснока и весеннего лука, оттененное ароматом сливок.','<p>Особенности</p>','ru'),(96,35,'en','en','en','<p>en</p>','en'),(97,35,'ch','ch','ch','<p>ch</p>','ch'),(98,36,'Томатный соус Mr.Ricco','Сацебели','Соус Mr. Ricco «Сацебели» - это пряный томатный соус, изготовленный по классической грузинской рецептуре, сочетающий вкус натуральных томатов, трав, душистых специй и грецкого ореха. Соус придется по вкусу тем, кто испытывает давнюю любовь к грузинской кухне или хотел бы к ней прикоснуться.','<p>Особенности</p>','ru'),(99,36,'en','en','en','<p>en</p>','en'),(100,36,'ch','ch','ch','<p>ch</p>','ch'),(101,37,'Томатный соус Миладора','Краснодарский','\"Миладора Краснодарский\"-это томатный соус с переплетением сладких и кислых ноток, с неповторимым оттенком пряных трав.','<p>Особенности</p>','ru'),(102,37,'en','en','en','<p>en</p>','en'),(103,37,'ch','ch','ch','<p>ch</p>','ch'),(104,38,'Майонез Mr.Ricco','На перепелином яйце','Майонез Mr.Ricco \"На перепелином яйце\" - это 100% органический состав с нежным классическим вкусом.','<p>Первый майонез \"На перепелиных яйцах\", выпускаемый с 2005-го года.</p><p><br></p><p>Обладает званием \"МАЙОНЕЗ №1 в России\" среди майонезов на перепелиных яйцах.</p><p><br></p><p>Обладатель звания \"Продукт года-2014\", \"Продукт года-2015\".</p>','ru'),(105,38,'en','en','en','<p>en</p>','en'),(106,38,'ch','ch','ch','<p>ch</p>','ch'),(107,39,'Майонез Миладора','Провансаль','Майонез \"Миладора\" - это качественный натуральный продукт, который содержит исключительно натуральные ингредиенты, такие как яичные желтки и подсолнечное масло.  Традиционный майонез приготовленный из высококачественных ингредиентов. Для придания особого вкуса используется горчица.','<p>Майонез Миладора \"Провансаль\" является победителем программы Первого канала - \"Контрольная закупка\".</p><p><span style=\"color: rgb(76, 76, 76);\">Майонез «Миладора Провансаль»&nbsp;показал самые лучшие результаты по всем параметрам.&nbsp;Наш майонез самый вкусный и густой по мнению обычных потребителей: он стал лидером отборочного тура, в котором посетители магазина пробуют несколько представленных обезличенных майонезов и выбирают лучший по вкусовым качествам, консистенции, внешнему виду и аромату.</span></p><p><br></p><p><br></p>','ru'),(108,39,'en','en','en','<p>en</p>','en'),(109,39,'ch','ch','ch','<p>ch</p>','ch'),(110,40,'Майонезный соус Ласка','Постный','Майонезные соусы «Ласка постный» и «Ласка постный с грибами»  не содержат  жиры животного происхождения  и великолепно подходят для поста, вегетарианского и диетического питания. Разработан специально для любителей нежирных, облегченных продуктов. Большой объем упаковки и доступная цена позволяют потребителю со средним уровнем дохода  насладиться приятным сливочным вкусом и почувствовать кусочки настоящих ароматных грибов. Соусы выпускаются в удобной упаковке -  210 гр., 380 гр. Представлены на полках всех крупных и мелких торговых сетей.','<p>Универсальной заправкой для легкого салата станет постный майонезный соус «Ласка» без холестерина и животных жиров. Добавьте в салат совсем немного такого соуса, и ваше блюдо заиграет новыми вкусами!</p>','ru'),(111,40,'en','en','en','<p>en</p>','en'),(112,40,'ch','ch','ch','<p>ch</p>','ch'),(113,41,'Варенье Mr.Ricco','Малиновое','Малиновое варенье Mr.Ricco - отличается не только великолепным вкусом, но также и своими прекрасными целебными свойствами.  Ягоды малины содержат органические кислоты, натуральные витамины, эфирное масло, пектины и другие полезные вещества.  Фитонциды, содержащиеся в варенье, признанные природным антибиотиком, являются хорошими антиоксидантами, ускоряющими обмен веществ в организме человека.','<p>В составе варенья Mr. Ricco содержатся исключительно ягоды с сахаром, сваренные в собственном сиропе без добавления воды и каких-либо дополнительных ингредиентов. Отметим, что варенье Mr.Ricco проходит “щадящую” пастеризацию и фасуется в стеклянную тару, дизайн которой запатентован АО «НЭФИС-БИОПРОДУКТ». Каждая крышка на банке с готовым продуктом имеет специальный клапан, который служит индикатором высокого качества, примерно такие же используют в изготовлении детского питания.&nbsp;Низкотемпературный режим уваривания и выпарки влаги позволяет максимально сохранить все полезные натуральные свойства ягод и фруктов, а щадящая технология оставляет ягоды целыми, сохраняя их форму и не деформируя.&nbsp;&nbsp;Процентное содержание ягод в готовом варенье Mr.Ricco&nbsp;составляет не менее 45%!</p>','ru'),(114,41,'en','en','en','<p>en</p>','en'),(115,41,'ch','ch','ch','<p>ch</p>','ch'),(116,43,'Масло подсолнечное Mr.Ricco','Рафинированное','Масло высшего сорта - высокие потребительские качества: низкая кислотность -  высокое качество сырья, масло имеет светлый цвет, что говорит о повышенном качестве продукта, не содержит примесей','<p>Преимущества рафинированного масла \"Mr.Ricco\":</p><ul><li><span style=\"color: rgb(192, 0, 0);\">Инновационная технология бережной очистки: </span><span style=\"color: black;\">многоступенчатый процесс натуральной очистки удаляет вредные вещества, но сохраняет природную пользу;</span></li><li><span style=\"color: rgb(192, 0, 0);\">Смесь отборных семян </span><span style=\"color: black;\">молочной спелости и полнозрелых семян, созревших в экологически чистой зон;</span></li><li><span style=\"color: rgb(192, 0, 0);\">Экологическая чистота: </span><span style=\"color: rgb(0, 0, 0);\">отборное </span><span style=\"color: black;\">сырье + только натуральные способы очистки + непрерывный контроль качества «БИО-КОНТРОЛЬ»;</span></li><li><span style=\"color: black;\">При нагревании не подвержено температурному окислению, что говорит об отсутствии в нем вредных канцерогенов.</span></li></ul><p><br></p>','ru'),(117,43,'en','en','en','<p>en</p>','en'),(118,43,'ch','ch','ch','<p>ch</p>','ch'),(119,44,'Кетчуп Mr.Ricco','Со вкусом колы','Кетчуп Mr.Ricco \"Со вкусом колы\" - это необычное сочетание аромата спелых помидоров и знакомого с детства вкуса любимой газировки.','<p class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0);\">Насыщенный темно-коричневый цвет кетчупа ассоциирует его с напитком «Кола», а непревзойденный аромат привнесет нотку пикантности в &nbsp;привычные блюда. Кетчуп Mr.Ricco  «Со вкусом колы» станет прекрасным дипом для картофеля фри, ароматным топингом  к мясу, кроме того он отлично подойдет для маринада барбекю.</strong></p><p><br></p><p><br></p>','ru'),(120,44,'en','en','en','<p>en</p>','en'),(121,44,'ch','ch','ch','<p>ch</p>','ch'),(122,45,'Кетчуп Mr.Ricco','Острый','Кетчуп Mr.Ricco «Острый» - классический натуральный томатный кетчуп с добавлением острого перца.','<p class=\"ql-align-justify\"><strong>Кетчупы Mr.Ricco ORGANIC готовятся по специальной сложной технологии, позволяющей полностью отказаться от загустителей и стабилизаторов. Они полностью натуральный: в его состав входят только томаты, соль, сахар и специи. Отказ от использования крахмала позволяет добавлять при приготовлении лишь минимально необходимое количество соли и специй, которые не заглушают, а только подчеркивают натуральный томатный вкус продукта.</strong></p><p><br></p><p><br></p>','ru'),(123,45,'en','en','en','<p>en</p>','en'),(124,45,'ch','ch','ch','<p>ch</p>','ch'),(125,46,'Варенье Mr.Ricco','Черничное','Черничное варенье Mr.Ricco содержит  северные лесные ягоды, обладающие кисло-сладким вяжущим вкусом. Полезные свойства черники настолько сильны, что она по праву может считаться не просто ягодой, а лекарственным средством.','<p>В составе варенья Mr. Ricco содержатся исключительно ягоды с сахаром, сваренные в собственном сиропе без добавления воды и каких-либо дополнительных ингредиентов. Отметим, что варенье Mr.Ricco проходит “щадящую” пастеризацию и фасуется в стеклянную тару, дизайн которой запатентован АО «НЭФИС-БИОПРОДУКТ». Каждая крышка на банке с готовым продуктом имеет специальный клапан, который служит индикатором высокого качества, примерно такие же используют в изготовлении детского питания.&nbsp;Низкотемпературный режим уваривания и выпарки влаги позволяет максимально сохранить все полезные натуральные свойства ягод и фруктов, а щадящая технология оставляет ягоды целыми, сохраняя их форму и не деформируя.&nbsp;&nbsp;Процентное содержание ягод в готовом варенье Mr.Ricco&nbsp;составляет не менее 45 %!</p>','ru'),(126,46,'ь','ь','ь','<p><br></p>','en'),(127,46,'ь','ь','ь','<p><br></p>','ch'),(128,47,'Варенье Mr.Ricco','Черносмородиновое','Черносмородиновое варенье Mr.Ricco обладает приятным кисло-сладким специфическим вкусом и сильным ароматом. Особенно ценится ягода за содержание в ней огромного количества витамина «С». Черносмородиновое варенье является профилактическим средством.','<p>В составе варенья Mr. Ricco содержатся исключительно ягоды с сахаром, сваренные в собственном сиропе без добавления воды и каких-либо дополнительных ингредиентов. Отметим, что варенье Mr.Ricco проходит “щадящую” пастеризацию и фасуется в стеклянную тару, дизайн которой запатентован АО «НЭФИС-БИОПРОДУКТ». Каждая крышка на банке с готовым продуктом имеет специальный клапан, который служит индикатором высокого качества, примерно такие же используют в изготовлении детского питания.&nbsp;Низкотемпературный режим уваривания и выпарки влаги позволяет максимально сохранить все полезные натуральные свойства ягод и фруктов, а щадящая технология оставляет ягоды целыми, сохраняя их форму и не деформируя.&nbsp;&nbsp;Процентное содержание ягод в готовом варенье Mr.Ricco&nbsp;составляет не менее 45%!</p>','ru'),(129,47,'я','я','я','<p><br></p>','en'),(130,47,'я','я','я','<p><br></p>','ch'),(131,48,'Варенье Mr.Ricco','Клюквенное','Клюквенное варенье Mr.Ricco  изготовлено из экологически чистых ягод дикорос, выращенных в натуральной, природной среде, которые содержат полную коллекцию полезных и целебных свойств, присущих этим ягодам. Это и приятная терпкость, и сочность, и, конечно, неповторимый остро-сладкий вкус с тонкой кислинкой.','<p>В составе варенья Mr. Ricco содержатся исключительно ягоды с сахаром, сваренные в собственном сиропе без добавления воды и каких-либо дополнительных ингредиентов. Отметим, что варенье Mr.Ricco проходит “щадящую” пастеризацию и фасуется в стеклянную тару, дизайн которой запатентован АО «НЭФИС-БИОПРОДУКТ». Каждая крышка на банке с готовым продуктом имеет специальный клапан, который служит индикатором высокого качества, примерно такие же используют в изготовлении детского питания.&nbsp;Низкотемпературный режим уваривания и выпарки влаги позволяет максимально сохранить все полезные натуральные свойства ягод и фруктов, а щадящая технология оставляет ягоды целыми, сохраняя их форму и не деформируя.&nbsp;&nbsp;Процентное содержание ягод в готовом варенье Mr.Ricco&nbsp;составляет не менее 45%!</p>','ru'),(132,48,'Я','я','я','<p>Я</p>','en'),(133,48,'я','я','ь','<p>Я</p>','ch'),(134,49,'Джем Mr.Ricco','Вишневый','Вишневый джем «Mr.Ricco» обладает потрясающим ароматом и невероятно приятным, ярким вкусом спелых ягод, которыми так любят лакомиться и взрослые и дети и пожилые люди. Ягоды вишни содержат в себе букет витаминов, органических кислот и важные минеральные вещества.','<p>В состав джема «Mr.Ricco» входят натуральные ягоды без добавления консервантов и красителей. Благодаря уникальной технологии производства на современном итальянском оборудовании джем сохраняет естественный вкус и природный аромат ягод.</p>','ru'),(135,49,'я','ь','ь','<p><br></p>','en'),(136,49,'я','я','ь','<p><br></p>','ch'),(137,50,'Джем Mr.Ricco','Клубничный','Клубничный джем «Mr.Ricco» отличается не только великолепным вкусом, но также и своими прекрасными свойствами. Ягоды клубники высоко ценятся за высокое содержание клетчатки и минеральных веществ, которые способствуют профилактике авитоминоза.','<p>В состав джема Mr.Ricco \"Клубничный\" входят натуральные ягоды без добавления консервантов и красителей. Благодаря уникальной технологии производства на современном итальянском оборудовании джем сохраняет естественный вкус и природный аромат ягод.</p>','ru'),(138,50,'я','я','я','<p><br></p>','en'),(139,50,'я','я','я','<p><br></p>','ch'),(140,51,'Джем Mr.Ricco','Брусничный','Брусничный джем «Mr.Ricco» изготовлен из ягод брусники, которая произрастает в диких условиях, где не используются искусственные, синтетические удобрения. Поэтому ягоды сохраняют всю силу микроэлементов и витаминов. Брусника содержит различные органические кислоты.','<p>В состав джема Mr.Ricco \"Брусничный\" входят натуральные ягоды без добавления консервантов и красителей. Благодаря уникальной технологии производства на современном итальянском оборудовании джем сохраняет естественный вкус и природный аромат ягод.</p>','ru'),(141,51,'я','ь','ь','<p><br></p>','en'),(142,51,'я','я','ь','<p><br></p>','ch'),(143,52,'Джем Mr.Ricco','Лесные ягоды','Джем лесные ягоды «Mr.Ricco» помимо прекрасного вкуса является кладезем полезных микроэлементов и витаминов, так как в его состав входят 4 прекрасные лесные ягоды: брусника, клюква, малина и земляника. Замечательный «квартет» из четырех ягод может похвастаться высоким сожанием витамина «С», который является профилактическим средством авитаминоза, и задает тонус всему организму.','<p>В состав джема Mr.Ricco \"Лесные ягоды\"&nbsp;входят натуральные ягоды без добавления консервантов и красителей. Благодаря уникальной технологии производства на современном итальянском оборудовании джем сохраняет естественный вкус и природный аромат ягод.</p>','ru'),(144,52,'я','ь','ь','<p><br></p>','en'),(145,52,'я','я','ь','<p><br></p>','ch'),(146,53,'Масло подсолнечное Миладора','Рафинированное','Биологически ценный пищевой продукт, в котором содержатся витамины Е и omega 6.','<p>Преимущества рафинированного масла \"Миладора\":</p><ul><li><span style=\"color: rgb(192, 0, 0);\">Инновационная технология бережной очистки: </span><span style=\"color: black;\">многоступенчатый процесс натуральной очистки удаляет вредные вещества, но сохраняет природную пользу;</span></li><li><span style=\"color: rgb(192, 0, 0);\">Смесь отборных семян </span><span style=\"color: black;\">молочной спелости и полнозрелых семян, созревших в экологически чистой зон;</span></li><li><span style=\"color: rgb(192, 0, 0);\">Экологическая чистота: </span><span style=\"color: rgb(0, 0, 0);\">отборное </span><span style=\"color: black;\">сырье + только натуральные способы очистки + непрерывный контроль качества «БИО-КОНТРОЛЬ»;</span></li><li><span style=\"color: black;\">При нагревании не подвержено температурному окислению, что говорит об отсутствии в нем вредных канцерогенов.</span></li></ul><p><br></p>','ru'),(147,53,'я','я','я','<p><br></p>','en'),(148,53,'я','я','я','<p><br></p>','ch'),(149,54,'Масло подсолнечное  Mr.Ricco','Рафинированное \"С добавлением оливкового масла\"','Инновационный продукт – Линейка подсолнечных масел «MIX» под премиальной маркой  «Mr.Ricco».  Линейка масел  соединяет воедино, удобство приготовления от рафинированного подсолнечного масла и пользу с неповторимым вкусом от нерафинированных натуральных масел: кукурузного, оливкового, льняного и масла авокадо. Для удобства хозяек,  линейка масел «Mr.Ricco» выпущена в популярной фасовке - 1л.','<p class=\"ql-align-justify\">В <strong>Подсолнечном масле Mr.Ricco с добавлением оливкового масла</strong> используется нерафинированное оливковое масло класса Extra Virgin. Натуральное масло оливы издавна ценится благодаря своему высокому содержанию антиоксидантов и витамина E. Оливковое масло также известно своим благотворным&nbsp;влиянием на состояние кожи, ногтей и волос, а также омолаживающими свойствами.&nbsp;</p><p><br></p>','ru'),(150,54,'я','ь','ь','<p><br></p>','en'),(151,54,'я','я','ь','<p><br></p>','ch'),(152,55,'Масло подсолнечное Чудесная семечка','Рафинированное','Масло произведено из отборных созревших семян с использованием натуральных способов очистки.','<p><span style=\"color: black;\">100 % натуральное масло с использованием качественного сырья. Прекрасно подойдет для заправки салатов и жарки.</span></p><p><br></p>','ru'),(153,55,'я','я','я','<p><br></p>','en'),(154,55,'я','я','я','<p><br></p>','ch'),(155,56,'Масло подсолнечное Миладора','Нерафинированное','Масло подсолнечное Миладора Нерафинированное отжимается из семян подсолнечника с минимальной обработкой, что позволяет сохранить естественный вкус жареных семян подсолнечника и ярко выраженный запах и вкус.','<p class=\"ql-align-justify\">Содержит витамины Е, Omega 6. Вкус украсит любую холодную закуску, маринад. Идеален для заправки салатов.&nbsp;&nbsp;</p><p><br></p>','ru'),(156,56,'я','ь','ь','<p><br></p>','en'),(157,56,'я','я','ь','<p><br></p>','ch'),(158,57,'Масло подсолнечное  Mr.Ricco','Рафинированное \"С добавлением масла авокадо\"','Инновационный продукт – Линейка подсолнечных масел «MIX» под премиальной маркой  «Mr.Ricco».  Линейка масел  соединяет воедино, удобство приготовления от рафинированного подсолнечного масла и пользу с неповторимым вкусом от нерафинированных натуральных масел: кукурузного, оливкового, льняного и масла авокадо. Для удобства хозяек,  линейка масел «Mr.Ricco» выпущена в популярной фасовке - 1л.','<p>В&nbsp;&nbsp;<strong>Подсолнечном масле Mr.Ricco с добавлением масла авокадо</strong> содержится качественное нерафинированное масло авокадо Extra Virgin. Весь мир активно переходит на здоровое питание &nbsp;и потребление авокадо в развитых странах растет бешеными темпами. Фрукт стал популярным из-за увлечения людей продуктами с высоким содержанием белка, полезных кислот и витаминов.&nbsp;Оригинальный дуэт подсолнечного масла и масла авокадо - это идеальный баланс благородных&nbsp;традиций вкуса, который придаст любимым блюдам ноту пикантной экзотики.&nbsp;</p>','ru'),(159,57,'я','ь','ь','<p><br></p>','en'),(160,57,'я','я','ь','<p><br></p>','ch'),(161,58,'Масло подсолнечное  Mr.Ricco','Рафинированное \"С добавлением  кукурузного масла\"','Инновационный продукт – Линейка подсолнечных масел «MIX» под премиальной маркой  «Mr.Ricco».  Линейка масел  соединяет воедино, удобство приготовления от рафинированного подсолнечного масла и пользу с неповторимым вкусом от нерафинированных натуральных масел: кукурузного, оливкового, льняного и масла авокадо. Для удобства хозяек,  линейка масел «Mr.Ricco» выпущена в популярной фасовке - 1л.','<p><strong>Подсолнечное масло Mr.Ricco с добавлением кукурузного масла</strong> содержит натуральное нерафинированное масло кукурузы, полезные свойства которого признаны кулинарами, докторами и косметологами со всего мира. Благодаря богатому витаминами и микроэлементами составу кукурузное масло называют «жидким золотом», а умелые хозяйки активно используют его на кухне. Теперь это стало еще проще и доступнее, ведь масло подсолнечное Mr.Ricco с добавлением кукурузного масла имеет приемлемую цену, а сбалансированный вкус позволяет использовать его в приготовлении любимых блюд, не нарушая привычной вкусовой палитры.</p>','ru'),(162,58,'я','ь','ь','<p><br></p>','en'),(163,58,'я','я','ь','<p><br></p>','ch'),(164,59,'Масло подсолнечное  Mr.Ricco','Нерафинированное','Масло подсолнечное  Mr.Ricco Нерафинированное отжимается из семян подсолнечника с минимальной обработкой, что позволяет сохранить естественный вкус жареных семян подсолнечника и ярко выраженный запах и вкус.','<p class=\"ql-align-justify\"><span style=\"color: rgb(56, 47, 43);\">Содержит витамины Е, Omega 6. Вкус украсит любую холодную закуску, маринад. Идеален для заправки салатов.&nbsp;&nbsp;</span></p><p><br></p>','ru'),(165,59,'я','ь','ь','<p><br></p>','en'),(166,59,'я','я','ь','<p><br></p>','ch'),(167,60,'Масло подсолнечное  Mr.Ricco','Рафинированное \"С добавлением  льняного масла\"','Инновационный продукт – линейка подсолнечных масел «MIX» под премиальной маркой  «Mr.Ricco».  Линейка масел  соединяет воедино, удобство приготовления от рафинированного подсолнечного масла и пользу с неповторимым вкусом от нерафинированных натуральных масел: кукурузного, оливкового, льняного и масла авокадо. Для удобства хозяек,  линейка масел «Mr.Ricco» выпущена в популярной фасовке - 1л.','<p class=\"ql-align-justify\">В <strong>Подсолнечном масле Mr.Ricco с добавлением льняного масла</strong> содержится нерафинированное масло льна. Еще в древние времена в медицине активно применяли льняное масло для лечения болезней желудка, ожогов и ран. Сегодня оно особенно ценится за высокое содержание полинасыщенных жирных кислот, и всего пара чайных ложек такого масла способны удовлетворить суточную потребность организма в них. Заправляя любимые блюда и салаты подсолнечным маслом Mr.Ricco с добавлением льняного масла, можно разнообразить привычный рацион питания, сделав его более полезным.&nbsp;&nbsp;</p><p><br></p>','ru'),(168,60,'я','ь','ь','<p><br></p>','en'),(169,60,'я','я','ь','<p><br></p>','ch'),(170,61,'Масло подсолнечное  Ласка','Рафинированное','Масло произведено из отборных созревших семян с использованием натуральных способов очистки.','<p>Преимущества рафинированного масла \"Ласка\":</p><ul><li><span style=\"color: rgb(192, 0, 0);\">Инновационная технология бережной очистки: </span><span style=\"color: black;\">многоступенчатый процесс натуральной очистки удаляет вредные вещества, но сохраняет природную пользу;</span></li><li><span style=\"color: rgb(192, 0, 0);\">Смесь отборных семян </span><span style=\"color: black;\">молочной спелости и полнозрелых семян, созревших в экологически чистой зон;</span></li><li><span style=\"color: rgb(192, 0, 0);\">Экологическая чистота: </span><span style=\"color: rgb(0, 0, 0);\">отборное </span><span style=\"color: black;\">сырье + только натуральные способы очистки + непрерывный контроль качества «БИО-КОНТРОЛЬ»;</span></li><li><span style=\"color: black;\">При нагревании не подвержено температурному окислению, что говорит об отсутствии в нем вредных канцерогенов.</span></li></ul><p><br></p>','ru'),(171,61,'я','я','Я','<p><br></p>','en'),(172,61,'я','я','ь','<p><br></p>','ch'),(173,62,'Томатный соус Mr.Ricco','Барбекю','я','<p><br></p>','ru'),(174,62,'en','en','en','<p><br></p>','en'),(175,62,'ch','ch','ch','<p><br></p>','ch'),(176,63,'Томатный соус Mr.Ricco','Сальса','я','<p><br></p>','ru'),(177,63,'en','en','en','<p><br></p>','en'),(178,63,'ch','ch','ch','<p><br></p>','ch'),(179,64,'Томатный соус Миладора','Татарский','\"Миладора Татарский\"-это томатный соус, гармонично сочетающий в себе аромат базилика, кориандра, кумина, сладкой паприки и чеснока.','<p><br></p>','ru'),(180,64,'en','en','en','<p><br></p>','en'),(181,64,'ch','ch','ch','<p><br></p>','ch'),(182,65,'Соус Миладора','Грибной','\"Миладора Грибной\"-это нежный соус с натуральными лесными грибами, шампиньонами и луком.','<p>Соус содержит натуральные ингредиенты, которые проходят тщательный контроль качества.</p>','ru'),(183,65,'en','en','en','<p><br></p>','en'),(184,65,'ch','ch','ch','<p><br></p>','ch'),(185,66,'Томатный соус Mr.Ricco','Чили','Соус Mr.Ricco \"Чили\" создан специально для тех, кто любит поострее. Это соус на томатной основе с натуральными кусочками перца чили и чеснока, дополненный ноткой лимонного сока и специями.','<p><br></p>','ru'),(186,66,'en','en','en','<p><br></p>','en'),(187,66,'ch','ch','ch','<p><br></p>','ch'),(188,67,'Соус Mr.Ricco','Грибной','Соус Mr.Ricco \"Грибной\"-нежный соус с лесными грибами и неповторимым ароматом свежей зелени.','<p><br></p>','ru'),(189,67,'en','en','en','<p><br></p>','en'),(190,67,'ch','ch','ch','<p><br></p>','ch'),(194,69,'Соус Миладора','Сырный','Миладора \"Сырный\"-это насыщенный сырный соус, вобравший в себя лучшие вкусовые качества сыра Чеддер.','<p><br></p>','ru'),(195,69,'en','en','en','<p>Продукт года-2013.</p>','en'),(196,69,'ch','ch','ch','<p><br></p>','ch'),(197,70,'Томатная паста Миладора','Томатная паста','Гармоничный продукт с оригинальным, свежим вкусом, насыщенным цветом и ароматом.','<p>Томатная паста \"Миладора\" может быть использована для приготовления заправок для супов, заготовок на зиму, соусов и подливок, а также как основа для пиццы и для приготовления томатного сока в домашних условиях.</p>','ru'),(198,70,'en','en','en','<p><br></p>','en'),(199,70,'ch','ch','ch','<p><br></p>','ch'),(200,71,'Соус Mr.Ricco','Тар-тар','Соус Mr.Ricco \"Тар-тар\" - деликатесный соус с натуральными маринованными огурчиками и укропом, белым и зеленым луком.','<p><br></p>','ru'),(201,71,'en','en','en','<p><br></p>','en'),(202,71,'ch','ch','ch','<p><br></p>','ch'),(203,72,'Соус Mr.Ricco','Чесночный','Соус Mr.Ricco \"Чесночный\"- популярный соус на основе растительных масел, характеризующийся великолепным сочетанием свежего чеснока, весеннего лука и горчицы.','<p><br></p>','ru'),(204,72,'en','en','en','<p><br></p>','en'),(205,72,'ch','ch','ch','<p><br></p>','ch'),(206,73,'Соус Mr.Ricco','Сырный','Соус Mr.Ricco \"Сырный\"- настоящий сырный соус, для создания которого  использовались четыре изысканных сорта сыра: Гауда, Данбо, Блю и Камамбер.','<p>Соус содержит натуральные ингредиенты, которые проходят тщательный контроль.</p>','ru'),(207,73,'en','en','en','<p><br></p>','en'),(208,73,'ch','ch','ch','<p><br></p>','ch'),(209,74,'Соус Mr.Ricco','Бургер','Mr.Ricco \"Бургер\"- классический гамбургер соус с приятно сливочно-острым вкусом с легким оттенком копчености.','<p><br></p>','ru'),(210,74,'en','en','en','<p><br></p>','en'),(211,74,'ch','ch','ch','<p><br></p>','ch'),(212,75,'Соус Mr.Ricco','С маслом авокадо и васаби','Соус Mr.Ricco \"С маслом авокадо и васаби\" обладает тонким жгучим вкусом японской горчицы.','<p class=\"ql-align-justify\"><strong>Соус азиатского направления, отличительной особенностью которого стало сочетание совершенно непохожих вкусовых нот: остроты, кислоты и сладости. </strong></p><p>Идеально раскрывает свой вкус в заправках для салатов и соленьях, является неотъемлемым ингредиентом для изготовления суши, роллов.</p>','ru'),(213,75,'en','en','en','<p><br></p>','en'),(214,75,'ch','ch','ch','<p><br></p>','ch'),(215,76,'Соус Mr.Ricco','С маслом авокадо и имбирем','Соус Mr.Ricco \"С маслом авокадо и имбирем\" отличает характерный пикантный аромат, который способен придать любому привычному блюду новый вкус.','<p class=\"ql-align-justify\"><strong>Соус азиатского направления, отличительной особенностью которого стало сочетание совершенно непохожих вкусовых нот: остроты, кислоты и сладости. </strong></p><p><br></p><p>Прекрасно дополняет блюда из рыбы, мяса и морепродуктов, незаменим в употреблении роллов и блюд японской кухни.</p>','ru'),(216,76,'en','en','en','<p><br></p>','en'),(217,76,'ch','ch','ch','<p><br></p>','ch'),(218,77,'Соус Mr.Ricco','С маслом авокадо и кунжутом','Соус Mr.Ricco  \"С маслом авокадо и кунжутом\" сочетает в себе кисло-соленый  и теплый кунжутный вкусовые оттенки, которые придают блюду неповторимы богатый вкус.','<p class=\"ql-align-justify\">Соус азиатского направления, отличительной особенностью&nbsp;которого стало сочетание совершенно непохожих&nbsp;вкусовых нот: остроты, кислоты и сладости.&nbsp;</p><p><br></p><p>Его хорошо использовать в качестве дрессинга для салатов из курицы, с тигровыми креветками и как соус для жареного мяса. Неизменно подходит к роллам.</p>','ru'),(219,77,'en','en','en','<p><br></p>','en'),(220,77,'ch','ch','ch','<p><br></p>','ch'),(221,78,'Соус Mr.Ricco','Морской коктейль','Соус Mr.Ricco \"Морской коктейль\" - деликатесный соус с пикантной ароматикой, отличающийся богатым сочетанием вкусов креветки, икры и краба.','<p>Призван подчеркнуть вкусовую гамму морепродуктов, сделав их непревзойденный аромат еще более насыщенным. Отлично подойдет к пасте, снэкам, мясным и овощным блюдам, идеален в качестве начинки для холодных закусок.</p>','ru'),(222,78,'en','en','en','<p><br></p>','en'),(223,78,'ch','ch','ch','<p><br></p>','ch'),(224,79,'Соус Mr.Ricco','Болоньезе','Ароматные спагетти под соусом \"Болоньезе\" от Mr.Ricco порадуют гурманов своей непревзойденностью, выделяясь среди других  рецептов пасты.','<p>Этот соус станет настоящей находкой для людей, держащих пост и соблюдающих вегетарианскую диету, поскольку не содержит животных  белков. Продукт готов к употреблению, остается только добавить его к спагетти, лазанье или запеканке. </p>','ru'),(225,79,'en','en','en','<p><br></p>','en'),(226,79,'ch','ch','ch','<p><br></p>','ch'),(227,80,'Соус Mr.Ricco','Болоньезе','Ароматные спегетти','<p>Этот соус станет настоящей находкой для людей, держащих пост и соблюдающих вегетарианскую диету, поскольку не содержит животных белков. Продукт готов к употреблению, остается только добавить его к спагетти, лазанье или запеканке.</p>','ru'),(228,80,'en','en','en','<p><br></p>','en'),(229,80,'ch','ch','ch','<p><br></p>','ch'),(230,81,'Майонез Mr.Ricco\"','Оливковый','Традиционный нежный сбалансированный вкус с добавлением натурального оливкового масла.','<p>Удостоен звания \"Продукт года-2015\". В рецептуре Mr.Ricco \"ORGANIC\" не используются консерванты, крахмал и ароматизаторы.</p>','ru'),(231,81,'en','en','en','<p><br></p>','en'),(232,81,'ch','ch','ch','<p><br></p>','ch'),(233,82,'Майонез Mr.Ricco','Провансаль','Традиционный майонез, приготовленный без использования консервантов, крахмала и ароматизаторов.','<p>Майонез Mr.Ricco ORGANIC \"Провансаль\" - обладатель таких наград, как : Знак качества, победитель программы \"Контрольная закупка\" и \"Продукт года-2013\".</p>','ru'),(234,82,'en','en','en','<p><br></p>','en'),(235,82,'ch','ch','ch','<p><br></p>','ch'),(236,83,'Майонез Mr.Ricco','С маслом авокадо','Mr.Ricco «С маслом авокадо» ORGANIC - нежный сбалансированный вкус с добавлением масла авокадо первого отжима из Новой Зеландии.','<p class=\"ql-align-justify\"><strong style=\"color: rgb(76, 76, 76);\">Отличает Mr.Ricco «С маслом авокадо» от линейки других майонезов Mr.Ricco ORGANIC нежно зеленый цвет, который дает плод авокадо, и необычный мягкий вкус. Также, благодаря богатому составу микроэлементов, масло авокадо наделяет майонез Mr.Ricco «С маслом авокадо» ORGANIC полезными свойствами.</strong></p><p><br></p><p><br></p>','ru'),(237,83,'en','en','en','<p><br></p>','en'),(238,83,'ch','ch','ch','<p><br></p>','ch'),(239,84,'Майонез Миладора','Оливковый','Вкус натуральных оливок наилучшим образом дополнит вкус любимых овощей, поэтому для таких салатов рекомендуем  выбрать майонез «Оливковый» торговой марки  Миладора.','<p><span style=\"color: rgb(76, 76, 76);\">Отдав предпочтение майонезу в удобной ПЭТ-банке, можете быть уверены – первозданные вкус и свежесть майонеза сохранились в неизменном виде!</span></p><p><br></p><p><br></p>','ru'),(240,84,'en','en','en','<p><br></p>','en'),(241,84,'ch','ch','ch','<p><br></p>','ch'),(242,85,'Майонез Миладора','С лимонным соком','Майонез \"Миладора\" - это качественный натуральный продукт, который содержит исключительно натуральные ингредиенты, такие как яичные желтки и подсолнечное масло.','<p><span style=\"color: rgb(76, 76, 76);\">Майонез Миладора \"С лимонным соком\" превосходно дополнит любые блюда. Натуральный лимонный сок в составе продукта подчеркивает уникальный вкус и аромат основных ингредиентов, способствует лучшему усвоению пищи и делает этот майонез особенным.</span></p>','ru'),(243,85,'en','en','en','<p><br></p>','en'),(244,85,'ch','ch','ch','<p><br></p>','ch'),(245,86,'Майонез Mr.Ricco','C соком лайма','Майонез Mr.Ricco \"С соком лайма\" - это экзотический свежий вкус с пикантной кислинкой.','<p class=\"ql-align-justify\">Майонез Mr.Ricco «с соком лайма»&nbsp;идеально подходит&nbsp;практически для всего, особенно, если продукты приготовлены на гриле ли на пару.</p><p class=\"ql-align-justify\">Для тех, &nbsp;кто предпочитает «легкое» питание, майонез Mr.Ricco «с соком лайма», &nbsp;станет любимой заправкой к салатам в \"средиземноморском стиле\", &nbsp;подчеркнут вкус основных ингредиентов, &nbsp;например, таких как, свежая зелень, свежие томаты, сладкий перец, лук, козий сыр.</p><p class=\"ql-align-justify\">Кроме того, майонез Mr.Ricco «с соком лайма»&nbsp;можно использовать как готовый соус для любимых видов морепродуктов, мяса и курицы.</p><p><br></p>','ru'),(246,86,'en','en','en','<p><br></p>','en'),(247,86,'ch','ch','ch','<p><br></p>','ch'),(248,87,'Майонез Mr.Ricco','Classico','Майонез Mr.Ricco \"Classico\" обладает нежным сбалансированным вкусом, который идеально подойдет в качестве заправки к любому салату.','<p>Майонез Mr.Ricco \"Classico\" имеет жирность 61%, благодаря этому сохраняется густая консистенция и сливочный вкус.</p>','ru'),(249,87,'en','en','en','<p><br></p>','en'),(250,87,'ch','ch','ch','<p><br></p>','ch'),(251,88,'Майонез Mиладора','Майонез & грибы','Новая линейка майонезов ТМ \"Миладора\" - это новый взгляд на майонезы и соусы! \"Майонез &\" - совершенно новый продукт \"два в одном\"! Это фьюжн потребления, когда в самый популярный вкус \"Провансаль\" добавили самые востребованные ингредиенты соусов.','<p class=\"ql-align-justify\"><strong>Благодаря жирности майонеза сохраняется густая консистенция и сливочный вкус, а укроп, сыр, чеснок, грибы привносят новую волну ощущений в традиционный рецепт.</strong></p><p><br></p><p><br></p>','ru'),(252,88,'en','en','en','<p><br></p>','en'),(253,88,'ch','ch','ch','<p><br></p>','ch'),(254,89,'Майонез Mиладора','Майонез & Сыр','Новая линейка майонезов ТМ \"Миладора\" - это новый взгляд на майонезы и соусы! \"Майонез &\" - совершенно новый продукт \"два в одном\"! Это фьюжн потребления, когда в самый популярный вкус \"Провансаль\" добавили самые востребованные ингредиенты соусов.','<p><strong>Благодаря жирности майонеза сохраняется густая консистенция и сливочный вкус, а укроп, сыр, чеснок, грибы привносят новую волну ощущений в традиционный рецепт.</strong></p>','ru'),(255,89,'en','en','en','<p><br></p>','en'),(256,89,'ch','ch','ch','<p><br></p>','ch'),(257,90,'Майонез Mиладора','Майонез & чеснок','Новая линейка майонезов ТМ \"Миладора\" - это новый взгляд на майонезы и соусы! \"Майонез &\" - совершенно новый продукт \"два в одном\"! Это фьюжн потребления, когда в самый популярный вкус \"Провансаль\" добавили самые востребованные ингредиенты соусов.','<p><strong>Благодаря жирности майонеза сохраняется густая консистенция и сливочный вкус, а укроп, сыр, чеснок, грибы привносят новую волну ощущений в традиционный рецепт.</strong></p>','ru'),(258,90,'en','en','en','<p><br></p>','en'),(259,90,'ch','ch','ch','<p><br></p>','ch'),(260,91,'Майонез Mиладора','Майонез & укроп','Новая линейка майонезов ТМ \"Миладора\" - это новый взгляд на майонезы и соусы! \"Майонез &\" - совершенно новый продукт \"два в одном\"! Это фьюжн потребления, когда в самый популярный вкус \"Провансаль\" добавили самые востребованные ингредиенты соусов.','<p>Благодаря жирности майонеза сохраняется густая консистенция и сливочный вкус, а укроп, сыр, чеснок, грибы привносят новую волну ощущений в традиционный рецепт.</p>','ru'),(261,91,'en','en','en','<p><br></p>','en'),(262,91,'ch','ch','ch','<p><br></p>','ch'),(263,92,'Майонез Mr.Ricco','С маслом авокадо','Mr.Ricco «С маслом авокадо» ORGANIC - нежный сбалансированный вкус с добавлением масла авокадо первого отжима из Новой Зеландии.','<p>Отличает Mr.Ricco «С маслом авокадо» от линейки других майонезов Mr.Ricco ORGANIC нежно зеленый цвет, который дает плод авокадо, и необычный мягкий вкус.&nbsp;</p>','ru'),(264,92,'en','en','en','<p><br></p>','en'),(265,92,'ch','ch','ch','<p><br></p>','ch'),(266,93,'Майонез Ласка','Постный с грибами','Майонезные соусы «Ласка постный» и «Ласка постный с грибами»  не содержат  жиры животного происхождения  и великолепно подходят для поста, вегетарианского и диетического питания. Разработан специально для любителей нежирных, облегченных продуктов. Большой объем упаковки и доступная цена позволяют потребителю со средним уровнем дохода  насладиться приятным сливочным вкусом и почувствовать кусочки настоящих ароматных грибов. Соусы выпускаются в удобной упаковке -  210 гр., 380 гр. Представлены на полках всех крупных и мелких торговых сетей.','<p>Оригинальный сливочный вкус с нотками пикантности благодаря кусочкам настоящих грибов. Соус станет настоящей находкой не только для постных, но и для веганских блюд.</p>','ru'),(267,93,'en','en','en','<p><br></p>','en'),(268,93,'ch','ch','ch','<p><br></p>','ch'),(269,94,'Майонез Mr.Ricco','Майонез & Сыр','\"Майонез &\" станет идеальным помощником всех хозяек, ведь он помогает сэкономить время на приготовление еды. Больше не нужно натирать сыр или готовить грибы - все уже сделано за Вас, просто добавьте \"Майонез &\"! Новые линейки представлены сразу в 4-х вкусах: сыр, чеснок, укроп и грибы. Удобная ПЭТ-банка надежно сохраняет продукт в течение 7 месяцев, а большой объем делает покупку экономной. Уникальная слив-этикетка с броским дизайном выгодно выделяет продукт на полке, привлекая внимание потребителей.','<p>Вкус \"Майонезов &amp;\" более нежный и сливочный, чем у соусов, за счет жирности продукта, хотя содержание вкусовых ингредиентов на порядок выше. Это позволит приготовить те блюда, которые  соусами приготовить нельзя. Помимо классического потребления с салатами, закусками и вторыми блюдами \"Майонез &amp;\" открывает возможность для нового тренда - потребление со снэками! Попробуй всю линейку и выбери свой идеальный вкус \"Майонеза &amp;\".</p>','ru'),(270,94,'en','en','en','<p><br></p>','en'),(271,94,'ch','ch','ch','<p><br></p>','ch'),(272,95,'Майонез Mr.Ricco','Майонез & Белый гриб','\"Майонез &\" станет идеальным помощником всех хозяек, ведь он помогает сэкономить время на приготовление еды. Больше не нужно натирать сыр или готовить грибы - все уже сделано за Вас, просто добавьте \"Майонез &\"! Новые линейки представлены сразу в 4-х вкусах: сыр, чеснок, укроп и грибы. Удобная ПЭТ-банка надежно сохраняет продукт в течение 7 месяцев, а большой объем делает покупку экономной. Уникальная слив-этикетка с броским дизайном выгодно выделяет продукт на полке, привлекая внимание потребителей.','<p class=\"ql-align-justify\"><strong>Вкус \"Майонезов &amp;\" более нежный и сливочный, чем у соусов, за счет жирности продукта, хотя содержание вкусовых ингредиентов на порядок выше. Это позволит приготовить те блюда, которые &nbsp;соусами приготовить нельзя. Помимо классического потребления с салатами, закусками и вторыми блюдами \"Майонез &amp;\" открывает возможность для нового тренда - потребление со снэками! Попробуй всю линейку и выбери свой идеальный вкус \"Майонеза &amp;\".</strong></p><p><br></p><p><br></p>','ru'),(273,95,'en','en','en','<p><br></p>','en'),(274,95,'ch','ch','ch','<p><br></p>','ch'),(275,96,'Майонез Mr.Ricco','Майонез & Укроп','\"Майонез &\" станет идеальным помощником всех хозяек, ведь он помогает сэкономить время на приготовление еды. Больше не нужно натирать сыр или готовить грибы - все уже сделано за Вас, просто добавьте \"Майонез &\"! Новые линейки представлены сразу в 4-х вкусах: сыр, чеснок, укроп и грибы. Удобная ПЭТ-банка надежно сохраняет продукт в течение 7 месяцев, а большой объем делает покупку экономной. Уникальная слив-этикетка с броским дизайном выгодно выделяет продукт на полке, привлекая внимание потребителей.','<p><strong>Вкус \"Майонезов &amp;\" более нежный и сливочный, чем у соусов, за счет жирности продукта, хотя содержание вкусовых ингредиентов на порядок выше. Это позволит приготовить те блюда, которые &nbsp;соусами приготовить нельзя. Помимо классического потребления с салатами, закусками и вторыми блюдами \"Майонез &amp;\" открывает возможность для нового тренда - потребление со снэками! Попробуй всю линейку и выбери свой идеальный вкус \"Майонеза &amp;\".</strong></p>','ru'),(276,96,'en','en','en','<p><br></p>','en'),(277,96,'ch','ch','ch','<p><br></p>','ch'),(278,97,'Майонез Mr.Ricco','Майонез & Чеснок','\"Майонез &\" станет идеальным помощником всех хозяек, ведь он помогает сэкономить время на приготовление еды. Больше не нужно натирать сыр или готовить грибы - все уже сделано за Вас, просто добавьте \"Майонез &\"! Новые линейки представлены сразу в 4-х вкусах: сыр, чеснок, укроп и грибы. Удобная ПЭТ-банка надежно сохраняет продукт в течение 7 месяцев, а большой объем делает покупку экономной. Уникальная слив-этикетка с броским дизайном выгодно выделяет продукт на полке, привлекая внимание потребителей.','<p><strong>Вкус \"Майонезов &amp;\" более нежный и сливочный, чем у соусов, за счет жирности продукта, хотя содержание вкусовых ингредиентов на порядок выше. Это позволит приготовить те блюда, которые &nbsp;соусами приготовить нельзя. Помимо классического потребления с салатами, закусками и вторыми блюдами \"Майонез &amp;\" открывает возможность для нового тренда - потребление со снэками! Попробуй всю линейку и выбери свой идеальный вкус \"Майонеза &amp;\".</strong></p>','ru'),(279,97,'en','en','en','<p><br></p>','en'),(280,97,'ch','ch','ch','<p><br></p>','ch'),(281,98,'Майонез Ласка','Постный с жареным луком','Оригинальный сливочный вкус с кусочками слегка пассерованного лука.','<p><span style=\"color: rgb(0, 0, 0);\">Идеален для веганов. Прекрасно сочетается со всеми блюдами из картофеля, тушеными и свежими овощами, рыбных и мясных блюд, салатов.</span></p>','ru'),(282,98,'en','en','en','<p><br></p>','en'),(283,98,'ch','ch','ch','<p><br></p>','ch'),(284,99,'Майонез PROfood','HoReCa','Майонез PROfood создан специально для клиентов канала HoReCa. Его особая рецептура полностью соответствует требованиям профессиональных участников рынка общественного питания. Он обладает сбалансированным вкусом и оптимальной консистенцией, не растекается в салатах и не перебивает вкус основных ингредиентов. Продукт идеально подходит для запекания, образуя золотистую корочку и придавая пикантность блюду. Разнообразные варианты упаковки и фасовки удовлетворяют потребности клиентов канала HoReCa различных форматов.','<p>Благодаря высокому содержанию яичного желтка, при запекании образует ровную золотистую корочку.</p>','ru'),(285,99,'en','en','en','<p><br></p>','en'),(286,99,'ch','ch','ch','<p><br></p>','ch'),(287,100,'Майонез PROfood','HoReCa','Майонез PROfood создан специально для клиентов канала HoReCa. Его особая рецептура полностью соответствует требованиям профессиональных участников рынка общественного питания. Он обладает сбалансированным вкусом и оптимальной консистенцией, не растекается в салатах и не перебивает вкус основных ингредиентов. Продукт идеально подходит для запекания, образуя золотистую корочку и придавая пикантность блюду. Разнообразные варианты упаковки и фасовки удовлетворяют потребности клиентов канала HoReCa различных форматов.','<p>Идеально подходит для оформления блюд. Специальная рецептура предотвращает впитывание соуса в продукты.</p>','ru'),(288,100,'en','en','en','<p><br></p>','en'),(289,100,'ch','ch','ch','<p><br></p>','ch'),(290,101,'Майонез PROfood','HoReCa 56%','Майонез PROfood создан специально для клиентов канала HoReCa. Его особая рецептура полностью соответствует требованиям профессиональных участников рынка общественного питания. Он обладает сбалансированным вкусом и оптимальной консистенцией, не растекается в салатах и не перебивает вкус основных ингредиентов. Продукт идеально подходит для запекания, образуя золотистую корочку и придавая пикантность блюду. Разнообразные варианты упаковки и фасовки удовлетворяют потребности клиентов канала HoReCa различных форматов.','<p>Идеально подходит для оформления блюд. Специальная рецептура предотвращает впитывание соуса в продукты.</p>','ru'),(291,101,'en','en','en','<p><br></p>','en'),(292,101,'ch','ch','ch','<p><br></p>','ch'),(293,102,'Майонез Mr.Ricco','На перепелином яйце','Майонез Mr.Ricco \"На перепелином яйце\" - это 100% органический состав с нежным классическим вкусом.','<p>Первый майонез \"На перепелиных яйцах\", выпускаемый с 2005-го года.</p><p>Обладает званием \"МАЙОНЕЗ №1 в России\" среди майонезов на перепелиных яйцах.</p><p>Обладатель звания \"Продукт года-2014\", \"Продукт года-2015\".</p><p><br></p>','ru'),(294,102,'en','en','en','<p><br></p>','en'),(295,102,'ch','ch','ch','<p><br></p>','ch'),(296,103,'Майонез Mr.Ricco','Провансаль','Традиционный майонез, приготовленный без использования консервантов, крахмала и ароматизаторов.','<p>Майонез Mr.Ricco ORGANIC \"Провансаль\" - обладатель таких наград, как : Знак качества, победитель программы \"Контрольная закупка\" и \"Продукт года-2013\".</p>','ru'),(297,103,'en','en','en','<p><br></p>','en'),(298,103,'ch','ch','ch','<p><br></p>','ch'),(299,104,'Майонез Mиладора','Провансаль','Майонез \"Миладора\" - это качественный натуральный продукт, который содержит исключительно натуральные ингредиенты, такие как яичные желтки и подсолнечное масло.  Традиционный майонез приготовленный из высококачественных ингредиентов. Для придания особого вкуса используется горчица.','<p>Майонез Миладора \"Провансаль\" является победителем программы Первого канала - \"Контрольная закупка\".</p>','ru'),(300,104,'en','en','en','<p><br></p>','en'),(301,104,'ch','ch','ch','<p><br></p>','ch'),(302,105,'Майонез Mиладора','Оливковый','Майонез \"Миладора\" - это качественный натуральный продукт, который содержит исключительно натуральные ингредиенты, такие как яичные желтки и подсолнечное масло.','<p>Майонез Миладора \"Оливковый\"- традиционный вкус майонеза с содержанием натурального оливкового масла, с добавлением уксуса и горчицы. Важнейшим компонентом майонеза является натуральное оливковое масло.</p>','ru'),(303,105,'en','en','en','<p><br></p>','en'),(304,105,'ch','ch','ch','<p><br></p>','ch'),(305,106,'Кетчуп Mr.Ricco','Томатный','100% натуральный кетчуп с мягким вкусом спелых томатов. Без загустителей и без добавления крахмала.','<p>Кетчупы Mr.Ricco ORGANIC готовятся по специальной сложной технологии, позволяющей полностью отказаться от загустителей и стабилизаторов. Они полностью натуральный: в его состав входят только томаты, соль, сахар и специи. Отказ от использования крахмала позволяет добавлять при приготовлении лишь минимально необходимое количество соли и специй, которые не заглушают, а только подчеркивают натуральный томатный вкус продукта.</p>','ru'),(306,106,'en','en','en','<p><br></p>','en'),(307,106,'ch','ch','ch','<p><br></p>','ch'),(308,107,'Кетчуп Миладора','Томатный','Традиционный томатный вкус спелых и сочных томатов. Прекрасное дополнение к пасте, мясным и рыбным блюдам.','<p>В приготовлении кетчупа Миладора \"Томатный\" применяется технология – под воздействием определенной температуры происходит загущение овоща, в результате чего вырабатывается пектин – вещество, известное своими многочисленными полезными свойствами.</p>','ru'),(309,107,'en','en','en','<p><br></p>','en'),(310,107,'ch','ch','ch','<p><br></p>','ch'),(311,108,'Кетчуп Миладора','Шашлычный','Кетчуп Миладора «Шашлычный» - классический натуральный томатный кетчуп сочетает в себе особый набор специй, благодаря которым вкус шашлыка станет еще ярче.','<p class=\"ql-align-justify\"><strong>Кетчупы \"Миладора\" содержат натуральные специи, кусочки перцев и овощей. В продукте полностью отсутствуют ГМО, ароматизаторы и красители. Кетчупы \"Миладора\" - это гарантированно качественные российские продукты по доступной цене.</strong></p><p><br></p><p><br></p>','ru'),(312,108,'en','en','en','<p><br></p>','en'),(313,108,'ch','ch','ch','<p><br></p>','ch'),(314,109,'Кетчуп Mr.Ricco','Для гриля и шашлыка','Кетчуп Mr.Ricco «Для гриля и шашлыка» - классический натуральный томатный кетчуп сочетает в себе особый набор специй, благодаря которым вкус шашлыка станет еще ярче.','<p class=\"ql-align-justify\"><strong>Кетчупы Mr.Ricco ORGANIC готовятся по специальной сложной технологии, позволяющей полностью отказаться от загустителей и стабилизаторов. Они полностью натуральные: в его состав входят только томаты, соль, сахар и специи. Отказ от использования крахмала позволяет добавлять при приготовлении лишь минимально необходимое количество соли и специй, которые не заглушают, а только подчеркивают натуральный томатный вкус продукта.</strong></p><p><br></p><p><br></p>','ru'),(315,109,'en','en','en','<p><br></p>','en'),(316,109,'ch','ch','ch','<p><br></p>','ch'),(317,110,'Кетчуп Миладора','Острый','Кетчуп Миладора\"Острый\"-это гармоничное сочетание томатов и острого перца Чили с пикантной ноткой базилика и чеснока, что позволяет подчеркнуть вкусовые составляющие блюда.','<p class=\"ql-align-justify\"><strong>В приготовлении кетчупа &nbsp;Миладора \"Острый\"  применяется технология – под воздействием определенной температуры происходит загущение овоща, в результате чего вырабатывается пектин – вещество, известное своими многочисленными полезными свойствами.</strong></p><p><br></p><p><br></p>','ru'),(318,110,'en','en','en','<p><br></p>','en'),(319,110,'ch','ch','ch','<p><br></p>','ch'),(320,111,'Кетчуп Mr.Ricco','Острый','Кетчуп Mr.Ricco «Острый» - классический натуральный томатный кетчуп с добавлением острого перца.','<p><strong>Кетчупы Mr.Ricco ORGANIC готовятся по специальной сложной технологии, позволяющей полностью отказаться от загустителей и стабилизаторов. Они полностью натуральный: в его состав входят только томаты, соль, сахар и специи. Отказ от использования крахмала позволяет добавлять при приготовлении лишь минимально необходимое количество соли и специй, которые не заглушают, а только подчеркивают натуральный томатный вкус продукта.</strong></p>','ru'),(321,111,'en','en','en','<p><br></p>','en'),(322,111,'ch','ch','ch','<p><br></p>','ch'),(323,112,'Кетчуп Mr.Ricco','К ребрышкам','Яркое сочетание красного перца, розмарина, зелени петрушки и чеснока раскрывает новый вкус кетчупа Mr.Ricco «К ребрышкам».  Оригинальный вкус кетчупа с нотками душистой зелени великолепно сочетается  с хрустящими ребрышками барбекю, приготовленными на гриле.','<p><strong>Уникальный состав трав в кетчупах Mr.Ricco «Grill Menu» призван придать простым блюдам новый, необычный оттенок вкуса. Каждый кетчуп изготовлен по специально-подобранной изысканной рецептуре. </strong></p><p><br></p>','ru'),(324,112,'en','en','en','<p><br></p>','en'),(325,112,'ch','ch','ch','<p><br></p>','ch'),(326,113,'Кетчуп Mr.Ricco','К сосискам и купатам','Острый и жгучий вкус горчичного семени  в составе кетчупа Mr.Ricco «К сосискам и купатам» создан специально для мясных блюд. Уникальное сочетание остроты натуральных специй придаст купатам и сосискам  неповторимый пикантный вкус.','<p><strong>Уникальный состав трав в кетчупах Mr.Ricco «Grill Menu» призван придать простым блюдам новый, необычный оттенок вкуса. Каждый кетчуп изготовлен по специально-подобранной изысканной рецептуре. </strong></p><p><br></p><p><br></p>','ru'),(327,113,'en','en','en','<p><br></p>','en'),(328,113,'ch','ch','ch','<p><br></p>','ch'),(329,114,'Кетчуп Mr.Ricco','К сосискам и купатам','Mr.Ricco «К сосискам и купатам». Острый и жгучий вкус горчичного семени  в составе кетчупа Mr.Ricco «К сосискам и купатам» создан специально для мясных блюд. Уникальное сочетание остроты натуральных специй придаст купатам и сосискам  неповторимый пикантный вкус.','<p class=\"ql-align-justify\">Уникальный состав трав в кетчупах Mr.Ricco «Grill Menu» призван придать&nbsp;простым блюдам новый, необычный оттенок вкуса.&nbsp;Каждый кетчуп изготовлен по специально-подобранной изысканной рецептуре. Обладатель Золотой медали и звания \"Продукт года-2019\" на международном конкурсе \"Лучший продукт\".</p><p><br></p>','ru'),(330,114,'en','en','en','<p><br></p>','en'),(331,114,'ch','ch','ch','<p><br></p>','ch'),(332,115,'Кетчуп Mr.Ricco','К курице с карри','Пряная острота  карри с переплетением ярких вкусовых нот куркумы, кориандра и гвоздики в тандеме воплощают непревзойдённый вкус кетчупа Mr.Ricco «К курице с карри», который подарит незабываемый аромат  сочному куриному мясу, приготовленному на углях.','<p><strong>Уникальный состав трав в кетчупах Mr.Ricco «Grill Menu» призван придать простым блюдам новый, необычный оттенок вкуса. Каждый кетчуп изготовлен по специально-подобранной изысканной рецептуре. </strong></p><p><br></p><p><br></p>','ru'),(333,115,'en','en','en','<p><br></p>','en'),(334,115,'ch','ch','ch','<p>ch</p>','ch'),(335,116,'Соус Миладора','Сырный','Миладора \"Сырный\" - это насыщенный сырный соус, вобравший в себя лучшие вкусовые качества сыра Чеддер.','<p>Соус содержит натуральные ингредиенты, которые проходят тщательный контроль.</p>','ru'),(336,116,'en','en','en','<p><br></p>','en'),(337,116,'ch','ch','ch','<p><br></p>','ch'),(338,117,'Соус Миладора','Чесночный','Соус Миладора \"Чесночный\" - это гармоничное сочетание чеснока и весеннего лука, оттененное ароматом сливок.','<p>Соус содержит натуральные ингредиенты, которые проходят тщательный контроль качества.</p>','ru'),(339,117,'en','en','en','<p>en</p>','en'),(340,117,'ch','ch','ch','<p>ch</p>','ch'),(341,118,'Соус Mr.Ricco','Сырный','Соус Mr.Ricco \"Сырный\" - это настоящий сырный соус, для создания которого использовались четыре изысканных сорта сыра: Гауда, Данбо, Блю и Камамбер.','<p>Соус содержит натуральные ингредиенты, которые проходят тщательный контроль.</p>','ru'),(342,118,'en','en','en','<p><br></p>','en'),(343,118,'ch','ch','ch','<p><br></p>','ch'),(344,119,'Джем Mr.Ricco','Облепиховый','Джем Mr.Ricco \"Облепиховый\" содержит натуральные ягоды облепихи, выращенные в России.','<p>В состав джема «Mr.Ricco» входят натуральные ягоды без добавления консервантов и красителей. Благодаря уникальной технологии производства на современном итальянском оборудовании джем сохраняет естественный вкус и природный аромат ягод.</p>','ru'),(345,119,'en','en','en','<p><br></p>','en'),(346,119,'ch','ch','ch','<p><br></p>','ch');
/*!40000 ALTER TABLE `product_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type_translations`
--

DROP TABLE IF EXISTS `product_type_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_type_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_type_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_type_translations_product_type_id_locale_unique` (`product_type_id`,`locale`),
  KEY `product_type_translations_locale_index` (`locale`),
  CONSTRAINT `product_type_translations_product_type_id_foreign` FOREIGN KEY (`product_type_id`) REFERENCES `product_types` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type_translations`
--

LOCK TABLES `product_type_translations` WRITE;
/*!40000 ALTER TABLE `product_type_translations` DISABLE KEYS */;
INSERT INTO `product_type_translations` VALUES (1,1,'Провансаль','ru'),(2,1,'Provansal','en'),(3,1,'蛋黃醬','ch'),(6,3,'На перепелином яйце','ru'),(7,3,'On quail egg','en'),(8,3,'在鵪鶉蛋上','ch'),(9,4,'Оливковый','ru'),(10,4,'Olive','en'),(11,4,'橄','ch'),(12,5,'С маслом авокадо','ru'),(13,5,'With avocado oil','en'),(14,5,'用鱷梨油','ch'),(15,6,'С соком лайма','ru'),(16,6,'With lime juice','en'),(17,6,'用酸橙汁','ch'),(18,7,'Classico','ru'),(19,7,'Classico','en'),(20,7,'經典','ch'),(21,8,'Майонез&Сыр','ru'),(22,8,'Mayonnaise&Cheese','en'),(23,8,'蛋黃醬奶酪','ch'),(24,9,'Майонез&Чеснок','ru'),(25,9,'Mayonnaise&Garlic','en'),(26,9,'蛋黃醬和大蒜','ch'),(27,10,'Майонез&Укроп','ru'),(28,10,'Mayonnaise&Dill','en'),(29,10,'蛋黃醬和蒔蘿','ch'),(30,11,'Майонез&Авокадо','ru'),(31,11,'Mayonnaise&Avocado','en'),(32,11,'蛋黃醬和鱷梨','ch'),(33,12,'Домашний','ru'),(34,12,'Domashniy','en'),(35,12,'Domashniy','ch'),(36,13,'С лимонным соком','ru'),(37,13,'With lemon juice','en'),(38,13,'用檸檬汁','ch'),(39,14,'Майонез&Грибы','ru'),(40,14,'Mayonnaise&Mushrooms','en'),(41,14,'蛋黃醬蘑菇','ch'),(42,15,'Томатный','ru'),(43,15,'Tomato','en'),(44,15,'番茄','ch'),(45,16,'Для гриля и шашлыка','ru'),(46,16,'Grill and Barbecue','en'),(47,16,'燒烤和燒烤','ch'),(48,17,'Острый','ru'),(49,17,'Hot','en'),(50,17,'熱','ch'),(51,18,'С чесноком','ru'),(52,18,'With garlic','en'),(53,18,'用大蒜','ch'),(54,19,'Шашлычный','ru'),(55,19,'Barbecue','en'),(56,19,'燒烤','ch'),(57,20,'Лечо','ru'),(58,20,'Lecho','en'),(59,20,'Lecho','ch'),(60,21,'Томатная паста','ru'),(61,21,'Tomato paste','en'),(62,21,'番茄醬','ch'),(63,22,'Белые соусы','ru'),(64,22,'White sauce','en'),(65,22,'白汁','ch'),(66,23,'Цезарь','ru'),(67,23,'Caesar','en'),(68,23,'凱撒','ch'),(69,24,'Горчичный','ru'),(70,24,'Mustard','en'),(71,24,'芥末','ch'),(72,25,'Чесночный','ru'),(73,25,'Garlic','en'),(74,25,'大蒜','ch'),(75,26,'Грибной','ru'),(76,26,'Mushroom','en'),(77,26,'蘑菇','ch'),(78,27,'Тар-тар','ru'),(79,27,'Tartar','en'),(80,27,'韃靼','ch'),(81,28,'Сырный','ru'),(82,28,'Cheese','en'),(83,28,'起司','ch'),(84,29,'Бургер','ru'),(85,29,'Burger','en'),(86,29,'漢堡包','ch'),(87,30,'С маслом авокадо и васаби','ru'),(88,30,'With avocado oil and wasabi','en'),(89,30,'配牛油果和芥末','ch'),(90,31,'С маслом авокадо и имбирем','ru'),(91,31,'With avocado oil and ginger','en'),(92,31,'配牛油果和生薑','ch'),(93,32,'С маслом авокадо и кунжутом','ru'),(94,32,'With avocado oil and sesame','en'),(95,32,'配牛油果和芝麻','ch'),(96,33,'Красные соусы','ru'),(97,33,'Red sauce','en'),(98,33,'紅醬','ch'),(99,34,'Сацебели','ru'),(100,34,'Satsebeli','en'),(101,34,'Satsebeli','ch'),(102,35,'Чили','ru'),(103,35,'Chili','en'),(104,35,'辣椒','ch'),(105,36,'Барбекю','ru'),(106,36,'Barbecue','en'),(107,36,'燒烤','ch'),(108,37,'Сальса','ru'),(109,37,'Salsa','en'),(110,37,'莎莎','ch'),(111,38,'Краснодарский','ru'),(112,38,'Krasnodarsky','en'),(113,38,'克拉斯諾達爾','ch'),(114,39,'Татарский','ru'),(115,39,'Tatar','en'),(116,39,'韃靼','ch'),(117,40,'Постный','ru'),(118,40,'Non-dairy','en'),(119,40,'非乳製品','ch'),(120,41,'Постный с грибами','ru'),(121,41,'Non-dairy with mushrooms','en'),(122,41,'非乳製品與蘑菇','ch'),(123,42,'Рафинированное','ru'),(124,42,'Refined','en'),(125,42,'精製','ch'),(126,43,'Нерафинированное','ru'),(127,43,'Unrefined','en'),(128,43,'粗','ch'),(129,44,'Майонез&Белый гриб','ru'),(130,44,'Mayonnaise&Boletus Mushroom','en'),(131,44,'蛋黃醬和牛肝菌蘑菇','ch'),(132,45,'Морской коктейль','ru'),(133,45,'Seafood Cocktail','en'),(134,45,'海鮮雞尾酒','ch'),(135,46,'Болоньезе','ru'),(136,46,'Bolognaise','en'),(137,46,'肉醬','ch'),(138,47,'Малиновое','ru'),(139,47,'Raspberry','en'),(140,47,'覆盆子','ch'),(141,48,'Черничное','ru'),(142,48,'Blueberry','en'),(143,48,'藍莓','ch'),(144,49,'Черносмородиновое','ru'),(145,49,'Black currant','en'),(146,49,'黑醋栗','ch'),(147,50,'Клюквенное','ru'),(148,50,'Cranberry','en'),(149,50,'酸果蔓','ch'),(150,51,'Классический','ru'),(151,51,'Classical','en'),(152,51,'古典','ch'),(153,52,'К сосискам и купатам','ru'),(154,53,'К курице с карри','ru'),(155,54,'К ребрышкам','ru'),(156,55,'Со вкусом бекона','ru'),(157,56,'Со вкусом колы','ru'),(158,57,'Средиземноморский с вялеными томатами','ru'),(160,59,'Вишневый','ru'),(161,59,'я','en'),(162,59,'я','ch'),(163,60,'Клубничный','ru'),(164,60,'я','en'),(165,60,'я','ch'),(166,61,'Брусничный','ru'),(167,61,'я','en'),(168,61,'я','ch'),(169,62,'Лесные ягоды','ru'),(170,62,'я','en'),(171,62,'я','ch'),(172,63,'Mr.Ricco рафинированное \"С добавлением  оливкового масла\"','ru'),(173,63,'я','en'),(174,63,'я','ch'),(175,64,'Постный с жареным луком','ru'),(176,64,'en','en'),(177,64,'ch','ch'),(178,65,'PROfood 67%','ru'),(179,65,'en','en'),(180,65,'ch','ch'),(181,66,'PROfood 56%','ru'),(182,66,'en','en'),(183,66,'ch','ch'),(184,67,'Mr.Ricco рафинированное \"С добавлением  льняного масла\"','ru'),(185,67,'en','en'),(186,67,'ch','ch'),(187,68,'Облепиховый','ru'),(188,68,'en','en'),(189,68,'ch','ch');
/*!40000 ALTER TABLE `product_type_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_types`
--

DROP TABLE IF EXISTS `product_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_types`
--

LOCK TABLES `product_types` WRITE;
/*!40000 ALTER TABLE `product_types` DISABLE KEYS */;
INSERT INTO `product_types` VALUES (1,'2019-02-03 16:05:01','2019-02-03 16:05:01'),(3,'2019-02-03 17:12:50','2019-02-03 17:12:50'),(4,'2019-02-03 17:14:48','2019-02-03 17:14:48'),(5,'2019-02-03 17:15:46','2019-02-03 17:15:46'),(6,'2019-02-03 17:16:26','2019-02-03 17:16:26'),(7,'2019-02-03 17:17:22','2019-02-03 17:17:22'),(8,'2019-02-03 17:18:04','2019-02-03 17:18:04'),(9,'2019-02-03 17:19:06','2019-02-03 17:19:06'),(10,'2019-02-03 17:19:32','2019-02-03 17:19:32'),(11,'2019-02-03 17:19:59','2019-02-03 17:19:59'),(12,'2019-02-03 17:20:54','2019-02-03 17:20:54'),(13,'2019-02-03 17:21:39','2019-02-03 17:21:39'),(14,'2019-02-03 17:22:30','2019-02-03 17:22:30'),(15,'2019-02-03 17:23:14','2019-02-03 17:23:14'),(16,'2019-02-03 17:24:14','2019-02-03 17:24:14'),(17,'2019-02-03 17:24:39','2019-02-03 17:24:39'),(18,'2019-02-03 17:25:10','2019-02-03 17:25:10'),(19,'2019-02-03 17:26:05','2019-02-03 17:26:05'),(20,'2019-02-03 17:26:35','2019-02-03 17:26:35'),(21,'2019-02-03 17:28:10','2019-02-03 17:28:10'),(22,'2019-02-03 17:29:45','2019-02-03 17:29:45'),(23,'2019-02-03 17:30:24','2019-02-03 17:30:24'),(24,'2019-02-03 17:30:37','2019-02-03 17:30:37'),(25,'2019-02-03 17:31:21','2019-02-03 17:31:21'),(26,'2019-02-03 17:31:49','2019-02-03 17:31:49'),(27,'2019-02-03 17:32:35','2019-02-03 17:32:35'),(28,'2019-02-03 17:32:52','2019-02-03 17:32:52'),(29,'2019-02-03 17:33:12','2019-02-03 17:33:12'),(30,'2019-02-03 17:33:30','2019-02-03 17:33:30'),(31,'2019-02-03 17:33:49','2019-02-03 17:33:49'),(32,'2019-02-03 17:34:05','2019-02-03 17:34:05'),(33,'2019-02-03 17:34:21','2019-02-03 17:34:21'),(34,'2019-02-03 17:34:51','2019-02-03 17:34:51'),(35,'2019-02-03 17:35:07','2019-02-03 17:35:07'),(36,'2019-02-03 17:35:58','2019-02-03 17:35:58'),(37,'2019-02-03 17:36:20','2019-02-03 17:36:20'),(38,'2019-02-03 17:36:50','2019-02-03 17:36:50'),(39,'2019-02-03 17:37:02','2019-02-03 17:37:02'),(40,'2019-02-03 17:37:54','2019-02-03 17:37:54'),(41,'2019-02-03 17:38:25','2019-02-03 17:38:25'),(42,'2019-02-03 17:40:18','2019-02-03 17:40:18'),(43,'2019-02-03 17:41:45','2019-02-03 17:41:45'),(44,'2019-02-03 17:45:13','2019-02-03 17:45:13'),(45,'2019-02-03 17:51:31','2019-02-03 17:51:31'),(46,'2019-02-03 17:52:49','2019-02-03 17:52:49'),(47,'2019-02-03 17:54:38','2019-02-03 17:54:38'),(48,'2019-02-03 17:55:11','2019-02-03 17:55:11'),(49,'2019-02-03 17:56:04','2019-02-03 17:56:04'),(50,'2019-02-03 17:56:26','2019-02-03 17:56:26'),(51,'2019-02-03 18:03:47','2019-02-03 18:03:47'),(52,'2019-02-05 16:06:38','2019-02-05 16:06:38'),(53,'2019-02-05 17:04:39','2019-02-05 17:04:39'),(54,'2019-02-05 17:08:57','2019-02-05 17:08:57'),(55,'2019-02-05 17:42:19','2019-02-05 17:42:19'),(56,'2019-02-05 17:42:49','2019-02-05 17:42:49'),(57,'2019-02-05 17:43:11','2019-02-05 17:43:11'),(59,'2019-02-28 09:17:25','2019-02-28 09:17:25'),(60,'2019-02-28 09:17:47','2019-02-28 09:17:47'),(61,'2019-02-28 09:18:07','2019-02-28 09:18:07'),(62,'2019-02-28 09:18:25','2019-02-28 09:18:25'),(63,'2019-03-04 04:41:40','2019-03-04 04:41:40'),(64,'2019-03-05 05:06:24','2019-03-05 05:06:24'),(65,'2019-03-05 05:16:26','2019-03-05 05:16:26'),(66,'2019-03-05 05:16:41','2019-03-05 05:16:41'),(67,'2019-03-11 09:54:25','2019-03-11 09:54:25'),(68,'2019-04-03 11:20:14','2019-04-03 11:20:14');
/*!40000 ALTER TABLE `product_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_volume`
--

DROP TABLE IF EXISTS `product_volume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_volume` (
  `volume_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`volume_id`,`product_id`),
  KEY `product_volume_volume_id_index` (`volume_id`),
  KEY `product_volume_product_id_index` (`product_id`),
  CONSTRAINT `product_volume_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_volume_volume_id_foreign` FOREIGN KEY (`volume_id`) REFERENCES `volumes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_volume`
--

LOCK TABLES `product_volume` WRITE;
/*!40000 ALTER TABLE `product_volume` DISABLE KEYS */;
INSERT INTO `product_volume` VALUES (5,38),(6,32),(6,34),(6,39),(6,40),(6,72),(6,73),(6,87),(6,93),(6,98),(6,104),(7,38),(7,81),(7,82),(7,83),(7,102),(8,70),(9,30),(9,31),(9,32),(9,34),(9,35),(9,49),(9,50),(9,51),(9,52),(9,67),(9,69),(9,71),(9,72),(9,73),(9,74),(9,75),(9,76),(9,77),(9,78),(9,118),(9,119),(10,36),(10,66),(11,62),(12,63),(13,15),(13,18),(13,19),(13,20),(13,21),(13,22),(13,24),(13,25),(13,27),(13,28),(13,44),(13,45),(13,107),(13,108),(13,109),(13,110),(13,113),(14,40),(14,93),(14,98),(15,79),(16,39),(16,84),(16,87),(16,104),(16,105),(17,38),(17,41),(17,46),(17,47),(17,48),(17,81),(17,82),(17,83),(17,86),(18,88),(18,89),(18,90),(18,91),(18,94),(18,95),(18,96),(18,97),(19,39),(19,84),(19,95),(20,38),(20,82),(20,83),(20,92),(20,95),(20,102),(20,104),(21,35),(21,65),(21,69),(21,95),(21,116),(21,117),(22,64),(22,95),(23,70),(23,79),(23,80),(23,95),(24,37),(24,95),(25,21),(25,22),(25,95),(25,107),(25,108),(26,15),(26,19),(26,20),(26,28),(26,45),(26,95),(26,106),(26,109),(26,111),(26,112),(26,114),(26,115),(27,39),(27,84),(27,85),(27,95),(27,104),(28,88),(28,89),(28,90),(28,91),(28,94),(28,95),(28,96),(28,97),(29,38),(30,39),(30,104),(31,87),(32,38),(32,81),(32,82),(32,83),(32,103),(33,21),(33,107),(34,28),(35,21),(35,107),(36,28),(37,101),(38,100),(38,101),(39,99),(39,100),(39,101),(40,53),(40,55),(40,56),(40,59),(41,43),(41,54),(41,57),(41,58),(41,60),(41,61),(42,43),(42,53),(42,55),(42,61);
/*!40000 ALTER TABLE `product_volume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fat` int(11) NOT NULL,
  `exp` int(11) NOT NULL,
  `packs` int(11) NOT NULL,
  `calorie` int(11) NOT NULL,
  `temperature_from` int(11) NOT NULL,
  `temperature_to` int(11) NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `firm_id` int(10) unsigned NOT NULL,
  `product_type_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_new` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`),
  KEY `products_firm_id_foreign` (`firm_id`),
  KEY `products_product_type_id_foreign` (`product_type_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `products_firm_id_foreign` FOREIGN KEY (`firm_id`) REFERENCES `firms` (`id`),
  CONSTRAINT `products_product_type_id_foreign` FOREIGN KEY (`product_type_id`) REFERENCES `product_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (15,'/storage/product/mZJ0Z4n7Xm9UkKyyxdPd86SmzC1wO28zh6TyopDh.png','/storage/product/FPPTNrMAuAVKbSJVo3cdJahQ81S7EJ3jN5Up4zdi.png','https://www.youtube.com',0,18,12,110,0,25,1,3,16,'2019-02-05 16:31:44','2019-04-01 09:59:54',0),(18,'/storage/product/9H0ZduwquaBurIBMGWxpt2zSQDAJhPsevjTrpBuH.png','/storage/product/EDLRijpZVfyjy4hrUHutTY5he4sJrl4GgDpJuyKU.png','https://www.youtube.com',0,18,16,110,0,25,1,3,18,'2019-02-05 17:02:21','2019-03-13 10:47:05',0),(19,'/storage/product/oOMuQwcWdD4FYy1CMhp1dZPEKZpfh4I340rYq1p4.png','/storage/product/aFdZDYhOLj7o2HVp2tPsqW9NpteXVxN9J4SbvRrm.png','https://www.youtube.com',0,18,16,110,0,25,1,3,53,'2019-02-05 17:08:01','2019-03-12 04:42:51',0),(20,'/storage/product/HP5UV2vEaG2ySjucTXtn5AfoMXNQATJwFXEFHd9v.png','/storage/product/oYjmZdzyNZZJQ38eluRzxptbSVMn6y6QtVrfKz8R.png','https://www.youtube.com',0,18,16,110,0,25,1,3,54,'2019-02-05 17:12:05','2019-03-13 10:32:43',0),(21,'/storage/product/BKESzXUsce4YFPyhB7oXfZ5aYYQqTfvBSnkCuAfE.png','/storage/product/t4ExPA4UOc0A8nmJoZK5bUXuj9Jf57wjb62zIgC5.png','https://www.youtube.com',-1,6,12,111,1,11,1,1,15,'2019-02-05 17:28:02','2019-02-07 08:41:05',0),(22,'/storage/product/9EUrzPte7ckzNHVS3pkTFdezVI0j4urFYD9yRNGU.png','/storage/product/3tHd1nn0bRjX43CcEXwfYQzkPn3iV18J3aaOrWMj.png','https://www.youtube.com',0,6,12,75,0,25,1,1,19,'2019-02-05 17:33:09','2019-04-01 09:57:46',0),(24,'/storage/product/vVgUoURE0QXVLUt9PKHUVIxXf3jBNN9VL5krFFJ7.png','/storage/product/w45K2FNtpUCWd28sg2hXIu85tOykDIIz0NLjFEHp.png','https://www.youtube.com',0,6,12,75,0,25,1,1,20,'2019-02-05 17:39:21','2019-03-12 05:14:15',0),(25,'/storage/product/L0F1b56At285nuAonFXxhzgYGXQXsB5ofsQrOwzC.png','/storage/product/46H2LqOa1XR0XQszqclm0CPAMCNwvYmeGBEUPt82.png','https://www.youtube.com',-1,18,16,111,1,11,1,3,55,'2019-02-05 17:47:06','2019-02-07 08:39:59',1),(27,'/storage/product/8567i2i6sMIzq7o9HQqFV0jxqOFkfGJb4aPJG9Id.png','/storage/product/ZlP6of0XUbGhk16bRdG32DAUf8tkqUzZM4CfT9wO.png','https://www.youtube.com',0,18,16,106,0,25,1,3,57,'2019-02-05 17:55:15','2019-03-13 10:16:22',1),(28,'/storage/product/6k1L3HE7jYtVqICY1LJ7dynBtGiKVVwiF9Jj3lAi.png','/storage/product/QSUnx56tRoYkBSuNk0Nd6vbCP9xRjmsX8FAgqWBg.png','https://www.youtube.com',0,18,16,280,0,25,1,3,15,'2019-02-06 14:51:10','2019-03-13 10:39:10',0),(30,'/storage/product/oNj2gDq83PWAvcA0au2hcizvNOl3SAY3lPhoUF0Z.png','/storage/product/BoQJw0UTajV5EA65NTXbpjNgqEojZXEaFjg8Uca3.png','https://www.youtube.com',0,7,12,280,0,25,3,3,23,'2019-02-06 15:22:55','2019-03-04 07:03:53',0),(31,'/storage/product/BcqxluJEG0eJ3DZ49O43u3ajgZFvcJCV7BgtATGf.png','/storage/product/63yo0GwJkckyIdVgDLaect1c7qYQTMQcNt6rHGSW.png','https://www.youtube.com',0,7,12,280,0,25,3,3,24,'2019-02-06 15:27:45','2019-03-04 06:57:11',0),(32,'/storage/product/PkMVCBXN1DGd2Hf72ouGtjDUryLtTWOFnMZlw2nY.png','/storage/product/IFMVDOXUs5dNCYD6DyKzjXvxezcfs419e5lvkSbj.png','https://www.youtube.com',0,7,12,280,0,25,3,3,25,'2019-02-06 15:31:14','2019-03-04 07:43:46',0),(34,'/storage/product/nyMkQEEvdYedsyknam8Cs0hL4bwU8JRhIcDzy25H.png','/storage/product/cKKD0AKpIEcZwqJmYX2qaf9GG8ABcd9jQ401gzss.png','https://www.youtube.com',0,7,12,280,0,25,3,3,26,'2019-02-06 15:44:08','2019-04-01 10:12:59',0),(35,'/storage/product/9lcamig3owQVRub2we6vkIYd0CWIMEEYADj5sCNX.png','/storage/product/aNS8rzBVLonOgkthADtrL1HtlUGgIjS1jBrVt4Ii.png','https://www.youtube.com',0,7,12,280,0,25,3,1,25,'2019-02-06 15:49:01','2019-03-04 07:21:38',0),(36,'/storage/product/MOGqEuhQY127siSo3P67npdVUvhsyeRuDGxtr8Vk.png','/storage/product/hov6QzEjlaWCnwbk5uXuEagY5i82iLMW60tTrr5k.png','https://www.youtube.com',0,6,12,280,0,25,3,3,34,'2019-02-06 15:53:13','2019-03-04 07:04:41',0),(37,'/storage/product/hJL8JxrfwBNzsaL4Ge1SzYkaHjy0k9DuKcPcECsm.png','/storage/product/DyzQGmnRbbsy5Az02x8HRGXgutLe7ZsM8Jl0MAYs.png','https://www.youtube.com',0,6,12,280,0,25,3,1,38,'2019-02-06 16:07:21','2019-03-04 07:20:00',0),(38,'/storage/product/mcNNYB3HDoLQTgULeXGmoO5f9DBEcFK38dacRKft.png','/storage/product/V9ruxVWyHFop3VS3wXrJ1EeT0VJAXYaON85I7R9c.png','',67,5,30,300,0,25,2,3,3,'2019-02-06 16:12:22','2019-04-04 04:17:54',0),(39,'/storage/product/lLgcC6DgE2R9H9WFU6derRpdLeczPafOFIi5hsFa.png','/storage/product/Nq21nSJHVzDhRDsJkoYU3FaI4kFZzkbUvNlHKekk.png','https://www.youtube.com',61,6,18,300,0,25,2,1,1,'2019-02-06 16:16:57','2019-04-01 02:50:11',0),(40,'/storage/product/xxVhN9inostV6UkoemZ7nZRFpVzZCMPEUailY04X.png','/storage/product/9oRL7CollxKNsGwb0JFQarxGzfn4QQisOmjHbJlB.png','',56,6,18,521,0,14,2,2,40,'2019-02-06 16:20:04','2019-03-11 10:47:40',0),(41,'/storage/product/VNq4B9jtSSRFWmRRwz4EtNR1wgjM9iH3pXg7IWX2.png','/storage/product/VbU3ryPXQ43Fz5jgXqqbncx7APUMMRbjoQnNX4CV.png','https://www.youtube.com',0,12,8,274,2,25,6,3,47,'2019-02-06 16:23:27','2019-03-13 11:10:45',1),(43,'/storage/product/UjEPYxyJJhzndhxGQD8RDYzEdkR87aShxoKaQJVk.png','/storage/product/AuzmP6Tv5SJj4MaEb5VZJSj276G9Gu4BR4hvezXi.png','https://www.youtube.com',0,12,15,300,0,25,5,3,42,'2019-02-06 16:30:09','2019-04-01 08:01:44',0),(44,'/storage/product/5aReDVCjzUX0yIEi55ptnAO5ZsZB0OxLDbGE3fBH.png','/storage/product/V1LfdKmMXqvu0om5TpJNnfhjKOd8IMdBxocs7Jo8.png','https://www.youtube.com',0,18,16,106,0,25,1,3,56,'2019-02-06 18:32:22','2019-03-13 10:10:14',1),(45,'/storage/product/hlqfXgJFyyIbWbzhBhklnOQSbf4RLixDGncIo0AC.png','/storage/product/ECtFScofXaCf3otaywTw0zMeQOu2wufTPEOj7ef0.png','https://www.youtube.com',0,18,16,110,0,24,1,3,17,'2019-02-06 18:39:05','2019-03-13 10:40:00',0),(46,'/storage/product/4lrEArXq1UDal5EyXVVcVkNV8yWv4N6gClQ0pcws.png','/storage/product/T8Poc7d0RIZ90vf5NteXix9dZzKg8636gN9b0KqM.png','',0,12,8,274,2,25,6,3,48,'2019-02-28 05:48:45','2019-04-01 04:07:42',1),(47,'/storage/product/3l76acDYrrROIta9OGvr7GdBWJL8NZpiodqIA1CD.png','/storage/product/zoKwxfBJbgWEQMrsQNhRcPLbwEriHAst8b5KU5AP.png','',0,12,8,274,2,25,6,3,49,'2019-02-28 07:07:42','2019-03-13 11:09:21',1),(48,'/storage/product/1HdUgb8CMQIDU3xqIU0AqUsL91Egob8uNFyIL9y7.png','/storage/product/vQMHrjlM6KDX3PJabwlzONTKDCI3KerFslowpToi.png','',0,12,8,274,2,25,6,3,50,'2019-02-28 09:29:02','2019-03-13 11:09:01',1),(49,'/storage/product/GsxieNQYJ202pqJyFCyhKHtC9wKC4ju8OQwPtwtT.png','/storage/product/ehDV48m1pop1CtStFp3gEE1NCFg0vDvUvORXqpt1.png','',0,12,8,240,0,25,6,3,59,'2019-02-28 10:49:06','2019-03-13 10:58:48',1),(50,'/storage/product/PFY1iT1yKeKxuutE0jdapk6JjX0r8MHmm7YWJzIQ.png','/storage/product/8jUi2W14yF9jPsPWlfHQZZz3XPcjdnrwCGgLBryJ.png','',0,12,8,240,0,25,6,3,60,'2019-02-28 10:51:31','2019-03-13 10:57:40',1),(51,'/storage/product/2SlDo3gXbxpLaAHriwmRwSKbIIngiViippHw1TNR.png','/storage/product/GhcZ1fUcvM42BYb0b4dBy5YBxvzniHNEK12shTbr.png','',0,12,8,240,0,25,6,3,61,'2019-02-28 10:54:32','2019-03-13 11:00:28',1),(52,'/storage/product/bS5vjOttdvBx7SuDE0oKNJZFObBNHA7Gaafj2EyE.png','/storage/product/sOYDOjuehWF23ka5H88QD7XikU4fPDsQkuwmV3wJ.png','',0,12,8,240,0,25,6,3,62,'2019-02-28 10:56:21','2019-03-13 10:55:24',1),(53,'/storage/product/HJlg66ajknQ53tADdFyiUytcfnWr43eJc8r3oyCo.png','/storage/product/GokfQrqfpol0dZYudrxfiX3BHeTIVCRx7QksAsVZ.png','',1,12,15,1,1,1,5,1,42,'2019-03-04 03:39:24','2019-04-01 08:27:33',0),(54,'/storage/product/SgdywrA5CCbO3Lr2WmpdapOpxDEXzlPNUPh7geOI.png','/storage/product/TqLGFMVs7OFVzf7zDpOA29bOCGISZAIpRpHRSnCJ.png','',0,12,15,0,0,25,5,3,63,'2019-03-04 04:47:22','2019-04-01 07:58:43',0),(55,'/storage/product/GgAy27g76A9g0CxnPs2EcRvAw9OMH8Ild4pgQXEb.png','/storage/product/qAKo4p01avxJymhy2PD7XSRcsQ2Rd7JPHjNO4DWV.png','',0,12,15,1,0,25,5,6,42,'2019-03-04 04:56:22','2019-04-01 08:29:27',0),(56,'/storage/product/slzSBxtzUPxh5xvD8NIL4mprskIOocLnCfJTnQu7.png','/storage/product/tOySbMJoHOum3wfzkmRpasQ9WT2xkhnm0HBVv6qb.png','',0,12,15,0,0,25,5,1,43,'2019-03-04 04:59:31','2019-03-11 11:09:32',0),(57,'/storage/product/kMmF3m0Y26UFanRrzWlF3bKzqif6pfQwEoo2ZioQ.png','/storage/product/5FD6KrPJTQpQhLuOyuSRMIA0O1dmRKRX5rV2hJ6W.png','',0,12,15,0,0,25,5,3,63,'2019-03-04 05:02:59','2019-03-11 10:04:15',0),(58,'/storage/product/GgwjJXx3ALTK9xjMAx4tLlgV96ji7PiLZsr8lv2t.png','/storage/product/UhUefjObh3urv591cZ8SDLG2VWiQ58yVlJ7iUz2r.png','',0,12,15,0,0,25,5,3,42,'2019-03-04 05:08:48','2019-04-01 03:19:35',0),(59,'/storage/product/9yHx81sd9LDtQS9VDSf2G5YlZchGL6QGYH8EKrcH.png','/storage/product/hfv6CtPdIIsPdEWu5fxjYOxdKo0VY06XJHVbBajW.png','',0,12,15,0,0,25,5,3,43,'2019-03-04 05:11:41','2019-03-11 10:59:13',0),(60,'/storage/product/VHtaYyPrD9ZCJHDtfw39CaTR5GHbjRbR3iiYv0Jm.png','/storage/product/4ckC46QUcjvmb3fjrpKVVIkTvOvnPoMW9HXHPPuc.png','',0,12,15,0,0,25,5,3,67,'2019-03-04 05:13:50','2019-03-11 09:55:41',0),(61,'/storage/product/pWmcXLxJJb0K7vd4wFBimdO0dh3ZAbnkp0zu0OwK.png','/storage/product/quEygQf7MPTYy54VeEvRW4gc25TBigbdF3uV68b5.png','',0,12,15,0,0,25,5,2,42,'2019-03-04 05:16:05','2019-04-01 08:21:32',0),(62,'/storage/product/1xuvRGuf7GmLohxsgrCt6oCMasHKQYfMqBFqbXe4.png','/storage/product/rtjb0XD1lIfUjpaSYzkBQB3HJwfmojDH5Luaf6lk.png','',1,6,12,60,0,25,3,3,36,'2019-03-04 07:08:52','2019-03-04 09:55:46',0),(63,'/storage/product/eAfqgkskDGEME2sIODvUt4WbBE4KwV2YwundBvMq.png','/storage/product/ZrYDXb4VSlohygQC0YeNyZNg0LX0vDyTL3m6Twxd.png','',0,6,12,0,0,25,3,3,37,'2019-03-04 07:12:27','2019-03-04 07:12:27',0),(64,'/storage/product/arx1bHmr9yH7m5ixtvkj45h8jgHx5G3W1XZlVcdf.png','/storage/product/t9l6Mr3K6mDYwYnKBExJ7R3h1rgNVkHL86Bbex7a.png','',0,6,12,0,0,25,3,1,39,'2019-03-04 07:17:25','2019-03-04 07:17:25',0),(65,'/storage/product/oEpw3iuAHRBDjbyznKHV3jcjP6RmyBaq8FaU65nt.png','/storage/product/1wmdG6EKntjxHyO5zHLwRsspy47uHXATgSvrLuAv.png','',28,7,12,280,0,24,3,1,26,'2019-03-04 07:25:05','2019-04-01 08:38:56',0),(66,'/storage/product/zlsySNw5tM0heBVmyCgYqUV9wB7j8VcOeq0LurM5.png','/storage/product/1fpAn9lbEIqGEYxOzt1gQsQcYWG2S9qPaAhhViHj.png','',0,6,12,0,0,25,3,3,35,'2019-03-04 07:29:42','2019-03-04 07:29:42',0),(67,'/storage/product/FYGEuyxThgUz0Ht0HzueZRpyGU9a7GrgAYPDWhEw.png','/storage/product/aX7canBjRs3CCjuybiemh1DibcPrWyOYjMtZBwGU.png','',28,6,12,280,0,24,3,3,26,'2019-03-04 07:38:40','2019-04-01 10:11:37',0),(69,'/storage/product/WIBHtRQjOPLg2cca8qZaC8zHbRzxAOFdTjtvsXN7.png','/storage/product/rVN3dstecoqFu8oUvTfu9kn7oanakfICpM5sSS1e.png','',0,7,12,0,0,25,3,1,28,'2019-03-04 08:13:42','2019-04-01 10:26:28',0),(70,'/storage/product/QEG6z6bAWfU2IcaFKR9Q2ZkACgRaxqkFECmzP1ZR.png','/storage/product/VbGO4D7qleJtMJIvC3jEGirV1U7oP2pgEyJFTDZm.png','',0,6,12,0,0,25,11,1,1,'2019-03-04 08:19:02','2019-03-28 09:06:35',0),(71,'/storage/product/x5lF3txjo3qnBtartepgDKRec2ryWXqWdlcH8fxb.png','/storage/product/Zt0BXizsbZW2TtXxtZGPR5PVbu5hN3kGOo8bREz7.png','',0,7,12,0,0,25,3,3,27,'2019-03-04 08:27:12','2019-03-04 08:27:12',0),(72,'/storage/product/EbGiJ9kyXKc5eTYIbGS3u9syKHG1UXdaFmTjS4A4.png','/storage/product/n1bymBSAfnUEGQoW7e9TPBJdfeKGRNWbSKo91xWr.png','',28,7,16,280,0,24,3,3,25,'2019-03-04 08:33:34','2019-03-04 09:52:36',0),(73,'/storage/product/KWmMnLMmjsHaxuKHpnr1hYcqvbUWfF85gKMWeggE.png','/storage/product/37VXW44W1CiXuu8p5hwmC9MSz8FuNMuBeDKF5j3a.png','',0,7,12,0,0,25,3,3,28,'2019-03-04 08:39:29','2019-04-01 10:28:10',0),(74,'/storage/product/AiaDGtI4Id7p5TrzJSolMJpUPGPuy3AIFQP7LKEl.png','/storage/product/MJJrHYCl7DC3aZNP7mi9x9zUr1kFJdNZwRHMFmbU.png','',0,7,12,0,0,25,3,3,29,'2019-03-04 08:50:15','2019-03-27 07:29:35',0),(75,'/storage/product/AQ9OgoeBb8NboO47Bb7hN6Ed6GCG9Fn0J8GygiMb.png','/storage/product/QKJfte5UYSTw6bTzAk7J08Oyps4Zj38P2NJaE1A3.png','',0,7,12,0,0,25,3,3,30,'2019-03-04 08:56:39','2019-03-13 07:41:32',0),(76,'/storage/product/CPHndy7DoQna74WyuwfJFm53wVch081QWzoVKNlc.png','/storage/product/wwvQF34lns2vBjW7wHa10ENkkQtFJY2SkYZ1Hvb8.png','',28,7,12,280,0,24,3,3,31,'2019-03-04 09:03:18','2019-03-13 07:40:58',0),(77,'/storage/product/EQ4sBMrZn1wcUjg4OtGdY6LdB6iUsMSQ90dsr1qQ.png','/storage/product/eR1ruVarY6DuhG1SL3Mf55mNeSFMRW2MjLQr3ymL.png','',28,7,12,280,0,24,3,3,32,'2019-03-04 09:24:19','2019-03-13 07:39:52',0),(78,'/storage/product/L8aBXfkEwr9GHCn8yz0WpHkEwUTf5UAIhdKfaEBB.png','/storage/product/0P2DW6l0CiPVfCt6UG0Qx5zqwoBV8vM2YrZD86dO.png','',28,7,12,280,0,24,3,3,45,'2019-03-04 09:31:41','2019-03-11 10:31:03',1),(79,'/storage/product/kkjqkANyB6D50GT1i4krOZIqP4q0Vmy8sbjXz1ed.png','/storage/product/Z2FL1aZDJ3fWRME1mKdzoxSY1VwkWz4WtrnP8jfu.png','',1,6,12,70,0,25,3,3,46,'2019-03-04 09:42:00','2019-03-04 09:42:00',0),(80,'/storage/product/O1f7YOp7t6OjyZO53pQWSF65gld2rrxNnBVX1xd5.png','/storage/product/eVnco8ZfoCA77jkRhNc8xX8I6Zuyy9EV08eADgl1.png','',1,6,12,70,0,25,3,3,46,'2019-03-04 09:45:24','2019-03-04 09:47:09',1),(81,'/storage/product/rVcjJiFlW6QEwEGG06gFtoXC27D7T8ThOD8pQfJ7.png','/storage/product/L1wrexapwBzMjgpX6gMiZR0ofUau84PlwuqyoLcX.png','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/rMrC11kZYRI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>',67,5,18,670,0,14,2,3,4,'2019-03-04 10:07:57','2019-04-01 09:03:49',0),(82,'/storage/product/Rp1GFp38TCID5SwYBFFGzn2WbVNiWivRVpFc0cfF.png','/storage/product/QRwB4xf7gwMhSJgVTpehgZcW1jEvIs8ATt8bWVW0.png','',67,5,18,670,0,14,2,3,1,'2019-03-04 10:20:53','2019-04-01 10:34:04',0),(83,'/storage/product/gtr1hU9bKgJUePBY8GRxfKjwjnx7HlAQuyc0OFyW.png','/storage/product/WEDReeoEKmO7ehS8I1Z6A4SCjeGzYOlyegqXCy5h.png','',67,5,18,670,0,14,2,3,5,'2019-03-05 03:20:49','2019-04-01 10:10:36',0),(84,'/storage/product/tt651kpmqJWS6HhCYk1zsp1xdmmzmBcDsJY0EtGR.png','/storage/product/zRgnb5KkNSIO9totQq7VkCctlwQKmebnonFCwvoy.png','',50,5,12,500,0,14,2,1,4,'2019-03-05 03:25:25','2019-03-05 03:25:25',0),(85,'/storage/product/2UIl5PYe22dPeJ3GEm6ZfERM6Erl4P32PTWL0L1h.png','/storage/product/0sylwecQGYXUBECNqYQ6YdIfW5CYjmQ6lxOg9jNP.png','',50,5,8,500,0,14,2,1,13,'2019-03-05 03:29:01','2019-03-11 09:44:50',0),(86,'/storage/product/4wdYfQknl5bUC5ygb0NUf9wykOcwQ1QyHZvSV7ov.png','/storage/product/RrQI1Ul5Pl5AlRxrLsLDr3QVM9LdQNaeQlieJYSy.png','',67,5,12,670,0,14,2,3,6,'2019-03-05 03:50:05','2019-03-27 10:23:07',0),(87,'/storage/product/Y4Nuu9JmKj3AfeDxqcv9YWs8hKAGTH3PZIsjE8Dq.png','/storage/product/HPemxF6OtRQRSoXgXIMODlkLBq1BeWmajJ01QNVT.png','',61,5,18,610,0,14,2,3,7,'2019-03-05 03:58:46','2019-03-27 10:37:29',0),(88,'/storage/product/EML2yiTHKmnZ6e3KJ13i4KdxdxYJo9PSDB8NX7nw.png','/storage/product/8PIrVVL4DvDr3LPp2fHakTMywCKwoxxONE1duYzk.png','',50,7,12,500,0,14,2,1,14,'2019-03-05 04:06:03','2019-03-11 09:03:41',0),(89,'/storage/product/7XDl749hC2Z6BNWnSsrDhQoHmqiCBsUxkSA4wAsF.png','/storage/product/qixHOpY5l7M2iarnkrK8KrOTPSbV5A72LWMtGgV6.png','',50,7,12,500,0,14,2,1,8,'2019-03-05 04:10:03','2019-03-11 09:01:11',0),(90,'/storage/product/k4KbXD79hlaDB1lq30x1fDZdpN8WWRE91zFvoezx.png','/storage/product/GRuQBu9mESUZRGw1cro6f7YYc7CzFlCEW3zz9W0F.png','',50,7,12,500,0,14,2,1,9,'2019-03-05 04:16:55','2019-03-11 09:00:16',0),(91,'/storage/product/xeX990IjwBLyrxiyE462DC50gCZAxGZytZaNJHSm.png','/storage/product/m1jreXbWeM2ApKW1vQ2GTJo4T5nEuOK6857wpPUk.png','',50,7,12,500,0,14,2,1,10,'2019-03-05 04:19:39','2019-03-11 08:59:29',0),(92,'/storage/product/HDjv2Lg0BmjnRdAnGx1MHxgPwtc5D6MTtC1YwB6S.png','/storage/product/oofDInyYIOccw3ZyrqB7kTam6Ursn70XPkh6Pxph.png','',67,5,18,670,0,14,2,3,5,'2019-03-05 04:46:35','2019-04-01 10:09:54',0),(93,'/storage/product/E2xvmLWvXtfr0J5lFO8YBY3Jou9iAO2eUZ0SEbZ3.png','/storage/product/2WK4ApF7gnRpD8GynCdWxZX0CBg3nDB7nR14UYWp.png','',35,6,18,350,0,14,2,2,41,'2019-03-05 04:52:48','2019-03-11 10:52:00',0),(94,'/storage/product/NyMWp6w66gc4GrkWsrlRKQOqGInR84iwEERMQ9xY.png','/storage/product/MjMocyuPnGBhcn02B7YpnDcct1l9BVzCjPe3O1f8.png','',50,7,12,500,0,14,2,3,8,'2019-03-05 04:56:59','2019-03-11 08:48:56',0),(95,'/storage/product/e3hZ58IxrwwOjHnfmcsPKoqwLHGkrWH4kAIsIBLw.png','/storage/product/zOwZ3vvw0DHPyh5d1QWHaEphoU6mkk8pUv3y758w.png','',50,7,12,500,0,14,2,3,44,'2019-03-05 04:59:49','2019-03-11 08:54:20',0),(96,'/storage/product/aIb3gxRCxSaKZmrTE7FTrPu9l2aG5SziXzzatugV.png','/storage/product/2Ko2gN1nVK9jcjhBIhxu010EtB8TbTsMLNElx0E0.png','',50,7,12,500,0,14,2,3,10,'2019-03-05 05:01:54','2019-03-11 08:51:55',0),(97,'/storage/product/zxef1CJvHRo2X5E688fZ8RSvE04H5Zjatqkt7XA7.png','/storage/product/jvkjzjbKmVSxQSBeUWDFqujyLkPNUo8kMXiIxeve.png','',50,7,12,500,0,14,2,3,9,'2019-03-05 05:03:50','2019-03-11 08:51:09',0),(98,'/storage/product/yfRN0UUW7oWJ5bWWtd1oNZfu13CAOF9K8nGcOU87.png','/storage/product/24p1AcGESdqqJPufeFqKFQUX1F2BJn9T2kdjx5uk.png','',35,6,18,340,0,14,2,2,64,'2019-03-05 05:13:16','2019-03-11 10:39:44',1),(99,'/storage/product/R8M6PvqWh5KJ16UONyvHpr2DyUtqk1arpibrqOrr.png','/storage/product/sQo8kiYFp6pcBQOVUSsDv4OBeYBoF8daO2Vxop3U.png','',67,6,1,670,0,14,2,5,65,'2019-03-05 05:20:55','2019-03-27 11:00:54',0),(100,'/storage/product/ijE72PrbM3b0F2PasmJktt0lSqkvdJQqJrYfNZCv.png','/storage/product/ay6aAmwK6aCQaf438X0Xjyo7zXLeAXoz4CYIEdT6.png','',56,6,1,520,0,14,2,5,66,'2019-03-05 05:25:19','2019-03-11 08:13:56',0),(101,'/storage/product/DEyhaHhOEdfRcNWOsSL3tparQjTihZHIX0a8ind1.png','/storage/product/EN1gN0Kd3Yt9WEGSQmQZYColmoVPEElyGtqwEAs4.png','',56,6,4,520,0,14,2,5,66,'2019-03-05 05:34:54','2019-03-11 08:09:45',0),(102,'/storage/product/KeG1DhrdnHqKUsGyFyb9FdqTfUp7G4WeqEcncgex.png','/storage/product/sENaOVfswm4uoPKRjx62OGksubirw7kS0HTHEXlm.png','',67,5,12,670,0,14,2,3,3,'2019-03-05 09:07:22','2019-04-01 09:11:15',0),(103,'/storage/product/1W8dDbk03aO6MN03LMic74JG3fnCbQ0O2rUlgZFb.png','/storage/product/vaA1WSMEDmBpTzcC5TIeDqBNUuUZWr7VM7DW44Ef.png','',67,5,12,670,0,14,2,3,1,'2019-03-05 09:12:53','2019-04-01 10:31:45',0),(104,'/storage/product/UHvsBQXV0wfkTosBU9QOuG9Mc64zdU2iWse1sxpS.png','/storage/product/qiu39ZtvSex18jeqAEEvO7sWzSET8a1Uoq4AfBZz.png','',50,6,12,500,0,14,2,1,1,'2019-03-05 09:47:08','2019-04-01 09:12:09',0),(105,'/storage/product/Ajp1J6rUDWxOJVjg7Fu0vpuhKjQ1e01VvSb0BejH.png','/storage/product/DwfRmAIjtXMoXO4PXOvllkAHKCpRJqBEBKZ8KOwq.png','',61,5,12,610,0,14,2,1,4,'2019-03-05 09:52:53','2019-03-11 09:07:44',0),(106,'/storage/product/rEg3TNe4AXRssUwLt0MojIIHQnLEsaavr95NxxNw.png','/storage/product/PA0ls7TZFd7lZWLrU4DQ48w5KRizgVJSB47h7MO0.png','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KVlbiHqcVwk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>',0,18,12,110,0,24,1,3,15,'2019-03-05 10:11:29','2019-04-01 09:58:55',0),(107,'/storage/product/EpWdblOkTyNeaXM4OaE6zHAUDeteRFcrCECGBDuG.png','/storage/product/kaZkugjBXryf0L1ANOfhLJw5Vsx3MOnHf7dD1pkn.png','',0,6,12,75,0,25,1,1,15,'2019-03-05 10:20:19','2019-03-13 07:25:08',0),(108,'/storage/product/W09MXbZuqDDG399JGPlgANLb9VKaURwfnEMGVxjL.png','/storage/product/4YqPRD0yON32MnLbG9mkcrCR3jHPvlyCUO7JXWiw.png','',0,6,12,75,0,25,1,1,19,'2019-03-05 10:24:38','2019-04-01 09:55:13',0),(109,'/storage/product/qrWiHH1IVBOWu0nxZOYH16VwPOOdkxb7wSvMjN0H.png','/storage/product/XzP7DZKhAKYjFDxITfufGzjz1XIS7j5ATT7KW70I.png','',0,18,16,110,0,25,1,3,16,'2019-03-05 10:29:49','2019-04-01 10:00:36',0),(110,'/storage/product/JgnEZ9qpnQmxz5CDIELz3B7uZxuwOBPPy2FUV0Ar.png','/storage/product/tkb3BWhOb9DisIsy7tSUBPPBtCqB0mYIBcbok8zt.png','',0,6,12,75,0,25,1,1,17,'2019-03-05 10:33:27','2019-03-12 05:25:57',0),(111,'/storage/product/oeeeZiD9lyvuXcZwcVsyaqBGZMtTa1gTIYxtNkYk.png','/storage/product/2Ec91YaoOzgRPJo1RhYWpVlgaXnqa0PMglboG6QF.png','',0,18,12,110,0,24,1,3,17,'2019-03-05 11:17:51','2019-03-13 09:48:54',0),(112,'/storage/product/CMWqJzYjQPtBNpuZ6CX6yAsv5AdRzS1N0RZT4q2Q.png','/storage/product/IyyjzMVVzxuEwpbII4RdDyZgjuHeAJm4KNUFidbh.png','',0,18,12,110,0,25,1,3,54,'2019-03-05 11:26:37','2019-03-12 04:45:49',0),(113,'/storage/product/YPXSA66XYcr8WkEfjXZHtJYK5XzCavyVX7OX4FGL.png','/storage/product/6BlRppz58xYBUfNQbkgwrZB8dWg5PYWZtoaF5X0H.png','',0,18,16,110,0,25,1,3,52,'2019-03-05 11:33:30','2019-03-12 04:17:59',0),(114,'/storage/product/4FmLsBzryJ1jVPny2n0ZPdJWn6fo61rssqxsHbqc.png','/storage/product/UrRcHRHv9dCzTx9AoRnHGSeIT7EEw894Jm6UHtKe.png','',0,18,12,110,0,25,1,3,52,'2019-03-05 11:36:41','2019-03-12 04:07:36',0),(115,'/storage/product/socBQTs4q5NojG5vFM1NMAL6zrAbSJwokCX3kPLd.png','/storage/product/RBkaaU951JOJq2FDiSQo6IakZ6atI5zSmnZlv3w2.png','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KVlbiHqcVwk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>',0,18,12,110,0,25,1,3,53,'2019-03-05 11:41:48','2019-04-04 17:33:54',0),(116,'/storage/product/zw7loTXAwwuFRnGuTvAtL6RLyjlXagdoie4Dr6Ux.png','/storage/product/aliyA9zs3BRfrCbhrQcmDvLrh2WArc2uHzIXrNFa.png','',28,7,12,280,0,24,3,1,28,'2019-04-01 08:45:37','2019-04-01 08:45:37',0),(117,'/storage/product/vC8OxpqFeTsrhqzkhVWQZa3ovSSGaz9WJOq0JI8o.png','/storage/product/bvHeh5pIoOTjuMEcA5wUi9zKHXuyhnmBWVKIgTaV.png','',28,7,12,280,0,24,3,1,25,'2019-04-01 08:49:38','2019-04-01 08:49:38',0),(118,'/storage/product/DYVFtjOk3m86bF6opFY9mAZxnHxN6WCFcX3au1HY.png','/storage/product/u1Tsq5yG6cWg9yu15mlzzrkAZESYCzDtLycTYpKd.png','',28,7,12,280,0,25,3,3,28,'2019-04-01 10:23:47','2019-04-01 10:29:32',0),(119,'/storage/product/nqor1kTxoIw1vFpBsTT3Rf54gUsTKoNnhFVy20Pf.png','/storage/product/7oaq9znkQQ6zkSMOxbAav6r6ZHgwJmu59k4gs62l.png','',0,12,8,240,0,25,6,3,68,'2019-04-03 11:23:47','2019-04-04 02:57:16',1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@admin.com',NULL,'$2y$10$SmQTyjLP7aVO/4/Itc/80e8E4k5EKjtuqYeVPKgdAhI.mZOB5OvVe','2pXPTVyLVQCpK4nVqzoLPhq5bOUOvFGYJxZhpZALlafVJqMUIq8m6n3OHdLm','2019-02-03 10:01:34','2019-02-03 10:01:34');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volume_translations`
--

DROP TABLE IF EXISTS `volume_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `volume_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `volume_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vol_trans_vol_id_locale_unique` (`volume_id`,`locale`),
  KEY `volume_translations_locale_index` (`locale`),
  CONSTRAINT `volume_translations_volume_id_foreign` FOREIGN KEY (`volume_id`) REFERENCES `volumes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volume_translations`
--

LOCK TABLES `volume_translations` WRITE;
/*!40000 ALTER TABLE `volume_translations` DISABLE KEYS */;
INSERT INTO `volume_translations` VALUES (6,4,'10 мл','ru'),(7,5,'145 мл','ru'),(8,6,'210 мл','ru'),(9,7,'220 мл','ru'),(10,8,'270 мл','ru'),(11,9,'310 мл','ru'),(12,10,'335 мл','ru'),(13,11,'340 мл','ru'),(14,12,'345 мл','ru'),(15,13,'350 мл','ru'),(16,14,'380 мл','ru'),(17,15,'385 мл','ru'),(18,16,'390 мл','ru'),(19,17,'400 мл','ru'),(20,18,'420 мл','ru'),(21,19,'435 мл','ru'),(22,20,'450 мл','ru'),(23,21,'460 мл','ru'),(24,21,'','en'),(25,21,'','ch'),(26,22,'480 мл','ru'),(27,23,'490 мл','ru'),(28,24,'500 мл','ru'),(29,25,'550 мл','ru'),(30,26,'570 мл','ru'),(31,27,'670 мл','ru'),(32,28,'700 мл','ru'),(33,29,'750 мл','ru'),(34,30,'775 мл','ru'),(35,31,'780 мл','ru'),(36,32,'800 мл','ru'),(37,33,'940 мл','ru'),(38,34,'960 мл','ru'),(39,35,'2440 мл','ru'),(40,36,'2500 мл','ru'),(41,37,'3000 мл','ru'),(42,38,'5000 мл','ru'),(43,39,'10000 мл','ru'),(44,40,'0,9 л','ru'),(45,41,'1 л','ru'),(46,42,'4,9 л','ru'),(47,43,'10 г','ru');
/*!40000 ALTER TABLE `volume_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volumes`
--

DROP TABLE IF EXISTS `volumes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `volumes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volumes`
--

LOCK TABLES `volumes` WRITE;
/*!40000 ALTER TABLE `volumes` DISABLE KEYS */;
INSERT INTO `volumes` VALUES (4,'2019-02-05 15:32:23','2019-02-05 15:32:23'),(5,'2019-02-05 15:32:32','2019-02-05 15:32:32'),(6,'2019-02-05 15:32:40','2019-02-05 15:32:40'),(7,'2019-02-05 15:32:49','2019-02-05 15:32:49'),(8,'2019-02-05 15:32:58','2019-02-05 15:32:58'),(9,'2019-02-05 15:33:09','2019-02-05 15:33:09'),(10,'2019-02-05 15:33:18','2019-02-05 15:33:18'),(11,'2019-02-05 15:33:29','2019-02-05 15:33:29'),(12,'2019-02-05 15:33:38','2019-02-05 15:33:38'),(13,'2019-02-05 15:33:47','2019-02-05 15:33:47'),(14,'2019-02-05 15:33:57','2019-02-05 15:33:57'),(15,'2019-02-05 15:34:07','2019-02-05 15:34:07'),(16,'2019-02-05 15:34:28','2019-02-05 15:34:28'),(17,'2019-02-05 15:34:49','2019-02-05 15:34:49'),(18,'2019-02-05 15:34:58','2019-02-05 15:34:58'),(19,'2019-02-05 15:35:08','2019-02-05 15:35:08'),(20,'2019-02-05 15:35:37','2019-02-05 15:35:37'),(21,'2019-02-05 15:36:44','2019-02-05 15:36:44'),(22,'2019-02-05 15:37:06','2019-02-05 15:37:06'),(23,'2019-02-05 15:37:16','2019-02-05 15:37:16'),(24,'2019-02-05 15:37:25','2019-02-05 15:37:25'),(25,'2019-02-05 15:37:34','2019-02-05 15:37:34'),(26,'2019-02-05 15:37:52','2019-02-05 15:37:52'),(27,'2019-02-05 15:38:02','2019-02-05 15:38:02'),(28,'2019-02-05 15:38:12','2019-02-05 15:38:12'),(29,'2019-02-05 15:38:21','2019-02-05 15:38:21'),(30,'2019-02-05 15:38:29','2019-02-05 15:38:29'),(31,'2019-02-05 15:43:16','2019-02-05 15:43:16'),(32,'2019-02-05 15:43:26','2019-02-05 15:43:26'),(33,'2019-02-05 15:43:36','2019-02-05 15:43:36'),(34,'2019-02-05 15:43:54','2019-02-05 15:43:54'),(35,'2019-02-05 15:44:12','2019-02-05 15:44:12'),(36,'2019-02-05 15:45:07','2019-02-05 15:45:07'),(37,'2019-02-05 15:45:29','2019-02-05 15:45:29'),(38,'2019-02-05 15:45:43','2019-02-05 15:45:43'),(39,'2019-02-05 15:45:55','2019-02-05 15:45:55'),(40,'2019-02-05 15:46:32','2019-02-05 15:46:32'),(41,'2019-02-05 15:46:56','2019-02-05 15:46:56'),(42,'2019-02-05 15:47:08','2019-02-05 15:47:08'),(43,'2019-02-06 14:35:19','2019-02-06 14:35:19');
/*!40000 ALTER TABLE `volumes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-08 10:25:45
