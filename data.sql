-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: Flower
-- ------------------------------------------------------
-- Server version	10.11.6-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `company` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `postal` varchar(255) NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addresses_user_id_foreign` (`user_id`),
  CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES
(1,'SUPAPAx','0961105799','22 duong 1','11 duong 2','NGGASD','United States','100000',0,2,'2024-07-24 21:05:02','2024-07-25 03:16:31'),
(2,'SUPAPA','0961105799','22 duong 1','11 duong 2','NGGASD','United States','100000',1,2,'2024-07-24 21:14:12','2024-07-25 03:10:59');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES
(4,'Red','Red.jpg','2024-07-26 04:18:31','2024-07-26 04:18:31'),
(5,'Green','Green.jpg','2024-07-26 04:19:11','2024-07-26 04:19:11'),
(6,'Sunrise','Sunrise.jpg','2024-07-26 04:19:58','2024-07-26 04:19:58'),
(7,'Sun','Sun.jpg','2024-07-26 05:05:19','2024-07-26 05:05:19'),
(8,'Blue','Blue.jpg','2024-07-26 05:09:40','2024-07-26 05:09:40'),
(9,'Orange','Orange.jpg','2024-07-26 05:47:58','2024-07-26 05:47:58'),
(10,'Yellow','Yellow.jpg','2024-07-26 05:55:20','2024-07-26 05:55:20'),
(11,'Teal','Teal.jpg','2024-07-26 05:56:15','2024-07-26 05:56:15'),
(15,'Blow','Blow.jpg','2024-07-26 06:09:20','2024-07-26 06:09:20'),
(16,'Jaguar','Jaguar.jpg','2024-07-26 06:15:13','2024-07-26 06:15:13');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_product`
--

DROP TABLE IF EXISTS `event_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `event_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_product_product_id_foreign` (`product_id`),
  KEY `event_product_event_id_foreign` (`event_id`),
  CONSTRAINT `event_product_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE,
  CONSTRAINT `event_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_product`
--

LOCK TABLES `event_product` WRITE;
/*!40000 ALTER TABLE `event_product` DISABLE KEYS */;
INSERT INTO `event_product` VALUES
(2,9,2,NULL,NULL);
/*!40000 ALTER TABLE `event_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES
(1,'Anniversary',NULL,NULL),
(2,'Weddings',NULL,NULL),
(3,'Birthday',NULL,NULL),
(4,'Apologies',NULL,NULL),
(5,'Sympathy',NULL,NULL),
(6,'Baby Shower',NULL,NULL),
(7,'Congratulations',NULL,NULL),
(8,'Engagement',NULL,NULL),
(9,'Holidays',NULL,NULL),
(10,'July 4th',NULL,NULL),
(11,'Graduations',NULL,NULL),
(12,'Romance',NULL,NULL);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
INSERT INTO `failed_jobs` VALUES
(1,'cb8f9935-014e-4074-9b1b-f0d0923782ac','database','default','{\"uuid\":\"cb8f9935-014e-4074-9b1b-f0d0923782ac\",\"displayName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendVerificationEmail\\\":0:{}\"}}','Illuminate\\Contracts\\Container\\BindingResolutionException: Unresolvable dependency resolving [Parameter #0 [ <required> $request ]] in class Illuminate\\Http\\Client\\Request in \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php:1217\nStack trace:\n#0 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(1103): Illuminate\\Container\\Container->unresolvablePrimitive()\n#1 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(1021): Illuminate\\Container\\Container->resolvePrimitive()\n#2 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(973): Illuminate\\Container\\Container->resolveDependencies()\n#3 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(815): Illuminate\\Container\\Container->build()\n#4 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1046): Illuminate\\Container\\Container->resolve()\n#5 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(751): Illuminate\\Foundation\\Application->resolve()\n#6 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1028): Illuminate\\Container\\Container->make()\n#7 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(181): Illuminate\\Foundation\\Application->make()\n#8 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(124): Illuminate\\Container\\BoundMethod::addDependencyForCallParameter()\n#9 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Container\\BoundMethod::getMethodDependencies()\n#10 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#12 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#13 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#14 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#15 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#16 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#17 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#18 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#19 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#20 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#21 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then()\n#22 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#23 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#24 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process()\n#26 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#27 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon()\n#28 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#29 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#32 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#33 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#34 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call()\n#35 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute()\n#36 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run()\n#37 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run()\n#38 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand()\n#39 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun()\n#40 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run()\n#41 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1203): Illuminate\\Foundation\\Console\\Kernel->handle()\n#42 \\\\192.168.50.149\\WEB\\Flower\\artisan(13): Illuminate\\Foundation\\Application->handleCommand()\n#43 {main}','2024-08-05 19:43:24'),
(2,'0bea2ba9-1e51-4037-8e08-8f2a0181dc9d','database','default','{\"uuid\":\"0bea2ba9-1e51-4037-8e08-8f2a0181dc9d\",\"displayName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendVerificationEmail\\\":1:{s:8:\\\"incoming\\\";a:1:{s:10:\\\"sendVerify\\\";N;}}\"}}','Illuminate\\Contracts\\Container\\BindingResolutionException: Unresolvable dependency resolving [Parameter #0 [ <required> $request ]] in class Illuminate\\Http\\Client\\Request in \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php:1217\nStack trace:\n#0 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(1103): Illuminate\\Container\\Container->unresolvablePrimitive()\n#1 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(1021): Illuminate\\Container\\Container->resolvePrimitive()\n#2 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(973): Illuminate\\Container\\Container->resolveDependencies()\n#3 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(815): Illuminate\\Container\\Container->build()\n#4 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1046): Illuminate\\Container\\Container->resolve()\n#5 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(751): Illuminate\\Foundation\\Application->resolve()\n#6 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1028): Illuminate\\Container\\Container->make()\n#7 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(181): Illuminate\\Foundation\\Application->make()\n#8 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(124): Illuminate\\Container\\BoundMethod::addDependencyForCallParameter()\n#9 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Container\\BoundMethod::getMethodDependencies()\n#10 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#12 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#13 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#14 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#15 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#16 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#17 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#18 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#19 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#20 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#21 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then()\n#22 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#23 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#24 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process()\n#26 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#27 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon()\n#28 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#29 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#32 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#33 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#34 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call()\n#35 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute()\n#36 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run()\n#37 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run()\n#38 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand()\n#39 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun()\n#40 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run()\n#41 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1203): Illuminate\\Foundation\\Console\\Kernel->handle()\n#42 \\\\192.168.50.149\\WEB\\Flower\\artisan(13): Illuminate\\Foundation\\Application->handleCommand()\n#43 {main}','2024-08-05 19:56:01'),
(3,'87df43aa-c0e0-4dc4-ba3a-c67d0cfee1d6','database','default','{\"uuid\":\"87df43aa-c0e0-4dc4-ba3a-c67d0cfee1d6\",\"displayName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendVerificationEmail\\\":1:{s:8:\\\"incoming\\\";a:1:{s:10:\\\"sendVerify\\\";N;}}\"}}','Illuminate\\Contracts\\Container\\BindingResolutionException: Unresolvable dependency resolving [Parameter #0 [ <required> $request ]] in class Illuminate\\Http\\Client\\Request in \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php:1217\nStack trace:\n#0 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(1103): Illuminate\\Container\\Container->unresolvablePrimitive()\n#1 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(1021): Illuminate\\Container\\Container->resolvePrimitive()\n#2 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(973): Illuminate\\Container\\Container->resolveDependencies()\n#3 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(815): Illuminate\\Container\\Container->build()\n#4 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1046): Illuminate\\Container\\Container->resolve()\n#5 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(751): Illuminate\\Foundation\\Application->resolve()\n#6 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1028): Illuminate\\Container\\Container->make()\n#7 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(181): Illuminate\\Foundation\\Application->make()\n#8 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(124): Illuminate\\Container\\BoundMethod::addDependencyForCallParameter()\n#9 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Container\\BoundMethod::getMethodDependencies()\n#10 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#12 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#13 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#14 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#15 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#16 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#17 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#18 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#19 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#20 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#21 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then()\n#22 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#23 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#24 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process()\n#26 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#27 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon()\n#28 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#29 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#32 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#33 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#34 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call()\n#35 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute()\n#36 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run()\n#37 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run()\n#38 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand()\n#39 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun()\n#40 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run()\n#41 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1203): Illuminate\\Foundation\\Console\\Kernel->handle()\n#42 \\\\192.168.50.149\\WEB\\Flower\\artisan(13): Illuminate\\Foundation\\Application->handleCommand()\n#43 {main}','2024-08-05 19:58:17'),
(4,'69964da2-195b-48b0-9456-15453ca90d26','database','default','{\"uuid\":\"69964da2-195b-48b0-9456-15453ca90d26\",\"displayName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendVerificationEmail\\\":1:{s:8:\\\"incoming\\\";a:1:{s:10:\\\"sendVerify\\\";N;}}\"}}','Illuminate\\Contracts\\Container\\BindingResolutionException: Unresolvable dependency resolving [Parameter #0 [ <required> $request ]] in class Illuminate\\Http\\Client\\Request in \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php:1217\nStack trace:\n#0 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(1103): Illuminate\\Container\\Container->unresolvablePrimitive()\n#1 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(1021): Illuminate\\Container\\Container->resolvePrimitive()\n#2 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(973): Illuminate\\Container\\Container->resolveDependencies()\n#3 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(815): Illuminate\\Container\\Container->build()\n#4 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1046): Illuminate\\Container\\Container->resolve()\n#5 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(751): Illuminate\\Foundation\\Application->resolve()\n#6 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1028): Illuminate\\Container\\Container->make()\n#7 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(181): Illuminate\\Foundation\\Application->make()\n#8 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(124): Illuminate\\Container\\BoundMethod::addDependencyForCallParameter()\n#9 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Container\\BoundMethod::getMethodDependencies()\n#10 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#12 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#13 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#14 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#15 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#16 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#17 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#18 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#19 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#20 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#21 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then()\n#22 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#23 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#24 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process()\n#26 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#27 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon()\n#28 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#29 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#32 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#33 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#34 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call()\n#35 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute()\n#36 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run()\n#37 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run()\n#38 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand()\n#39 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun()\n#40 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run()\n#41 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1203): Illuminate\\Foundation\\Console\\Kernel->handle()\n#42 \\\\192.168.50.149\\WEB\\Flower\\artisan(13): Illuminate\\Foundation\\Application->handleCommand()\n#43 {main}','2024-08-05 20:00:09'),
(5,'842fff52-0733-4df7-9239-3fe1277fc7fd','database','default','{\"uuid\":\"842fff52-0733-4df7-9239-3fe1277fc7fd\",\"displayName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendVerificationEmail\\\":1:{s:8:\\\"incoming\\\";a:1:{s:10:\\\"sendVerify\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:7:{s:9:\\\"firstName\\\";s:7:\\\"asdfsdf\\\";s:8:\\\"lastName\\\";s:6:\\\"asdfsd\\\";s:5:\\\"email\\\";s:18:\\\"delangoc@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$12$5Jvg7Ic60TFt4c8gVrEzjO7K\\/cK3ar0XbwEwJSjKqFSJdrqWMys9y\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-08-06 03:04:18\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-08-06 03:04:18\\\";s:2:\\\"id\\\";i:12;}s:11:\\\"\\u0000*\\u0000original\\\";a:7:{s:9:\\\"firstName\\\";s:7:\\\"asdfsdf\\\";s:8:\\\"lastName\\\";s:6:\\\"asdfsd\\\";s:5:\\\"email\\\";s:18:\\\"delangoc@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$12$5Jvg7Ic60TFt4c8gVrEzjO7K\\/cK3ar0XbwEwJSjKqFSJdrqWMys9y\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-08-06 03:04:18\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-08-06 03:04:18\\\";s:2:\\\"id\\\";i:12;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:9:\\\"firstName\\\";i:1;s:8:\\\"lastName\\\";i:2;s:5:\\\"email\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:19:\\\"\\u0000*\\u0000authPasswordName\\\";s:8:\\\"password\\\";s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";}}}\"}}','Illuminate\\Contracts\\Container\\BindingResolutionException: Unresolvable dependency resolving [Parameter #0 [ <required> $request ]] in class Illuminate\\Http\\Client\\Request in \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php:1217\nStack trace:\n#0 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(1103): Illuminate\\Container\\Container->unresolvablePrimitive()\n#1 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(1021): Illuminate\\Container\\Container->resolvePrimitive()\n#2 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(973): Illuminate\\Container\\Container->resolveDependencies()\n#3 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(815): Illuminate\\Container\\Container->build()\n#4 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1046): Illuminate\\Container\\Container->resolve()\n#5 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(751): Illuminate\\Foundation\\Application->resolve()\n#6 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1028): Illuminate\\Container\\Container->make()\n#7 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(181): Illuminate\\Foundation\\Application->make()\n#8 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(124): Illuminate\\Container\\BoundMethod::addDependencyForCallParameter()\n#9 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Container\\BoundMethod::getMethodDependencies()\n#10 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#12 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#13 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#14 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#15 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#16 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#17 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#18 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#19 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#20 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#21 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then()\n#22 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#23 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#24 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process()\n#26 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#27 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon()\n#28 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#29 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#32 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#33 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#34 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call()\n#35 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute()\n#36 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run()\n#37 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run()\n#38 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand()\n#39 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun()\n#40 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run()\n#41 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1203): Illuminate\\Foundation\\Console\\Kernel->handle()\n#42 \\\\192.168.50.149\\WEB\\Flower\\artisan(13): Illuminate\\Foundation\\Application->handleCommand()\n#43 {main}','2024-08-05 20:04:21'),
(6,'8471b469-f95b-41e0-b158-9004014a10a9','database','default','{\"uuid\":\"8471b469-f95b-41e0-b158-9004014a10a9\",\"displayName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendVerificationEmail\\\":1:{s:8:\\\"incoming\\\";a:1:{s:10:\\\"sendVerify\\\";N;}}\"}}','Error: Call to a member function sendEmailVerificationNotification() on null in \\\\192.168.50.149\\WEB\\Flower\\app\\Jobs\\SendVerificationEmail.php:30\nStack trace:\n#0 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendVerificationEmail->handle()\n#1 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#3 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#4 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#5 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#6 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#7 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#8 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#9 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#10 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#11 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#12 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then()\n#13 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#14 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#15 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process()\n#17 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#18 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon()\n#19 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#20 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#23 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#24 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#25 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call()\n#26 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute()\n#27 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run()\n#28 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run()\n#29 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand()\n#30 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun()\n#31 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run()\n#32 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1203): Illuminate\\Foundation\\Console\\Kernel->handle()\n#33 \\\\192.168.50.149\\WEB\\Flower\\artisan(13): Illuminate\\Foundation\\Application->handleCommand()\n#34 {main}','2024-08-05 20:09:38'),
(7,'727c2bbd-6803-4f74-b8a2-38b115e8d517','database','default','{\"uuid\":\"727c2bbd-6803-4f74-b8a2-38b115e8d517\",\"displayName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendVerificationEmail\\\":1:{s:8:\\\"incoming\\\";a:1:{s:10:\\\"sendVerify\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:7:{s:9:\\\"firstName\\\";s:8:\\\"asdfasdf\\\";s:8:\\\"lastName\\\";s:8:\\\"adsfasdf\\\";s:5:\\\"email\\\";s:18:\\\"delangoc@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$12$G28ocHId8J7qfFTT\\/ys75egjjjZbEjg4qoDAIeftqU\\/Z974egBsFO\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-08-06 03:50:03\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-08-06 03:50:03\\\";s:2:\\\"id\\\";i:17;}s:11:\\\"\\u0000*\\u0000original\\\";a:7:{s:9:\\\"firstName\\\";s:8:\\\"asdfasdf\\\";s:8:\\\"lastName\\\";s:8:\\\"adsfasdf\\\";s:5:\\\"email\\\";s:18:\\\"delangoc@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$12$G28ocHId8J7qfFTT\\/ys75egjjjZbEjg4qoDAIeftqU\\/Z974egBsFO\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-08-06 03:50:03\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-08-06 03:50:03\\\";s:2:\\\"id\\\";i:17;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:9:\\\"firstName\\\";i:1;s:8:\\\"lastName\\\";i:2;s:5:\\\"email\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:19:\\\"\\u0000*\\u0000authPasswordName\\\";s:8:\\\"password\\\";s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";}}}\"}}','ErrorException: Attempt to read property \"id\" on null in \\\\192.168.50.149\\WEB\\Flower\\app\\Providers\\AppServiceProvider.php:34\nStack trace:\n#0 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(256): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError()\n#1 \\\\192.168.50.149\\WEB\\Flower\\app\\Providers\\AppServiceProvider.php(34): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}()\n#2 [internal function]: App\\Providers\\AppServiceProvider->App\\Providers\\{closure}()\n#3 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\Notifications\\VerifyEmail.php(50): call_user_func()\n#4 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\Channels\\MailChannel.php(55): Illuminate\\Auth\\Notifications\\VerifyEmail->toMail()\n#5 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(148): Illuminate\\Notifications\\Channels\\MailChannel->send()\n#6 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(106): Illuminate\\Notifications\\NotificationSender->sendToNotifiable()\n#7 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Notifications\\NotificationSender->Illuminate\\Notifications\\{closure}()\n#8 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(101): Illuminate\\Notifications\\NotificationSender->withLocale()\n#9 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(79): Illuminate\\Notifications\\NotificationSender->sendNow()\n#10 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\ChannelManager.php(39): Illuminate\\Notifications\\NotificationSender->send()\n#11 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\RoutesNotifications.php(18): Illuminate\\Notifications\\ChannelManager->send()\n#12 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\MustVerifyEmail.php(38): App\\Models\\User->notify()\n#13 \\\\192.168.50.149\\WEB\\Flower\\app\\Jobs\\SendVerificationEmail.php(30): Illuminate\\Foundation\\Auth\\User->sendEmailVerificationNotification()\n#14 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendVerificationEmail->handle()\n#15 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#16 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#17 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#18 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#19 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#20 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#21 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#22 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#23 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#24 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#25 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#26 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then()\n#27 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#28 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#29 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#30 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process()\n#31 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#32 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon()\n#33 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#34 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#35 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#36 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#37 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#38 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#39 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call()\n#40 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute()\n#41 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run()\n#42 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run()\n#43 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand()\n#44 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun()\n#45 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run()\n#46 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1203): Illuminate\\Foundation\\Console\\Kernel->handle()\n#47 \\\\192.168.50.149\\WEB\\Flower\\artisan(13): Illuminate\\Foundation\\Application->handleCommand()\n#48 {main}','2024-08-05 20:50:14'),
(8,'86ea2278-3cd9-4c52-b3cd-2884a14a0dca','database','default','{\"uuid\":\"86ea2278-3cd9-4c52-b3cd-2884a14a0dca\",\"displayName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendVerificationEmail\\\":1:{s:8:\\\"incoming\\\";a:1:{s:10:\\\"sendVerify\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:7:{s:9:\\\"firstName\\\";s:4:\\\"adsf\\\";s:8:\\\"lastName\\\";s:7:\\\"adsfsdf\\\";s:5:\\\"email\\\";s:18:\\\"delangoc@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$12$ktY1jyAsf2hC17PWblr7KeGk2BiP\\/TfeK1UFvUgqZfs3qxOqz6AUG\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-08-06 04:19:07\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-08-06 04:19:07\\\";s:2:\\\"id\\\";i:18;}s:11:\\\"\\u0000*\\u0000original\\\";a:7:{s:9:\\\"firstName\\\";s:4:\\\"adsf\\\";s:8:\\\"lastName\\\";s:7:\\\"adsfsdf\\\";s:5:\\\"email\\\";s:18:\\\"delangoc@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$12$ktY1jyAsf2hC17PWblr7KeGk2BiP\\/TfeK1UFvUgqZfs3qxOqz6AUG\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-08-06 04:19:07\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-08-06 04:19:07\\\";s:2:\\\"id\\\";i:18;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:9:\\\"firstName\\\";i:1;s:8:\\\"lastName\\\";i:2;s:5:\\\"email\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:19:\\\"\\u0000*\\u0000authPasswordName\\\";s:8:\\\"password\\\";s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";}}}\"}}','InvalidArgumentException: View [mail.verify] not found. in \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php:139\nStack trace:\n#0 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php(79): Illuminate\\View\\FileViewFinder->findInPaths()\n#1 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Factory.php(151): Illuminate\\View\\FileViewFinder->find()\n#2 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(445): Illuminate\\View\\Factory->make()\n#3 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(420): Illuminate\\Mail\\Mailer->renderView()\n#4 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(313): Illuminate\\Mail\\Mailer->addContent()\n#5 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\Channels\\MailChannel.php(66): Illuminate\\Mail\\Mailer->send()\n#6 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(148): Illuminate\\Notifications\\Channels\\MailChannel->send()\n#7 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(106): Illuminate\\Notifications\\NotificationSender->sendToNotifiable()\n#8 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Notifications\\NotificationSender->Illuminate\\Notifications\\{closure}()\n#9 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(101): Illuminate\\Notifications\\NotificationSender->withLocale()\n#10 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(79): Illuminate\\Notifications\\NotificationSender->sendNow()\n#11 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\ChannelManager.php(39): Illuminate\\Notifications\\NotificationSender->send()\n#12 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\RoutesNotifications.php(18): Illuminate\\Notifications\\ChannelManager->send()\n#13 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\MustVerifyEmail.php(38): App\\Models\\User->notify()\n#14 \\\\192.168.50.149\\WEB\\Flower\\app\\Jobs\\SendVerificationEmail.php(30): Illuminate\\Foundation\\Auth\\User->sendEmailVerificationNotification()\n#15 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendVerificationEmail->handle()\n#16 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#18 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#19 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#20 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#21 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#22 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#24 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#25 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#26 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then()\n#28 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#29 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#30 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process()\n#32 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#33 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon()\n#34 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#35 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#37 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#38 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#39 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#40 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call()\n#41 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute()\n#42 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run()\n#43 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run()\n#44 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand()\n#45 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun()\n#46 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run()\n#47 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1203): Illuminate\\Foundation\\Console\\Kernel->handle()\n#48 \\\\192.168.50.149\\WEB\\Flower\\artisan(13): Illuminate\\Foundation\\Application->handleCommand()\n#49 {main}','2024-08-05 21:19:34'),
(9,'7bc6383d-18e7-4678-9afb-46042bb9d395','database','default','{\"uuid\":\"7bc6383d-18e7-4678-9afb-46042bb9d395\",\"displayName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendVerificationEmail\\\":1:{s:8:\\\"incoming\\\";a:1:{s:10:\\\"sendVerify\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:7:{s:9:\\\"firstName\\\";s:8:\\\"asdfasdf\\\";s:8:\\\"lastName\\\";s:8:\\\"sdafasdf\\\";s:5:\\\"email\\\";s:18:\\\"delangoc@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$12$3CBXLLrsqo.A64iRjeLQ.unOEIqZ\\/ZiHEWwUetrJrh\\/4KB\\/aYwnze\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-08-06 04:23:41\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-08-06 04:23:41\\\";s:2:\\\"id\\\";i:19;}s:11:\\\"\\u0000*\\u0000original\\\";a:7:{s:9:\\\"firstName\\\";s:8:\\\"asdfasdf\\\";s:8:\\\"lastName\\\";s:8:\\\"sdafasdf\\\";s:5:\\\"email\\\";s:18:\\\"delangoc@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$12$3CBXLLrsqo.A64iRjeLQ.unOEIqZ\\/ZiHEWwUetrJrh\\/4KB\\/aYwnze\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-08-06 04:23:41\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-08-06 04:23:41\\\";s:2:\\\"id\\\";i:19;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:9:\\\"firstName\\\";i:1;s:8:\\\"lastName\\\";i:2;s:5:\\\"email\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:19:\\\"\\u0000*\\u0000authPasswordName\\\";s:8:\\\"password\\\";s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";}}}\"}}','InvalidArgumentException: View [mail.verify] not found. in \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php:139\nStack trace:\n#0 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php(79): Illuminate\\View\\FileViewFinder->findInPaths()\n#1 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Factory.php(151): Illuminate\\View\\FileViewFinder->find()\n#2 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(445): Illuminate\\View\\Factory->make()\n#3 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(420): Illuminate\\Mail\\Mailer->renderView()\n#4 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(313): Illuminate\\Mail\\Mailer->addContent()\n#5 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\Channels\\MailChannel.php(66): Illuminate\\Mail\\Mailer->send()\n#6 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(148): Illuminate\\Notifications\\Channels\\MailChannel->send()\n#7 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(106): Illuminate\\Notifications\\NotificationSender->sendToNotifiable()\n#8 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Notifications\\NotificationSender->Illuminate\\Notifications\\{closure}()\n#9 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(101): Illuminate\\Notifications\\NotificationSender->withLocale()\n#10 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(79): Illuminate\\Notifications\\NotificationSender->sendNow()\n#11 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\ChannelManager.php(39): Illuminate\\Notifications\\NotificationSender->send()\n#12 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\RoutesNotifications.php(18): Illuminate\\Notifications\\ChannelManager->send()\n#13 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\MustVerifyEmail.php(38): App\\Models\\User->notify()\n#14 \\\\192.168.50.149\\WEB\\Flower\\app\\Jobs\\SendVerificationEmail.php(30): Illuminate\\Foundation\\Auth\\User->sendEmailVerificationNotification()\n#15 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendVerificationEmail->handle()\n#16 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#18 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#19 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#20 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#21 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#22 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#24 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#25 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#26 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then()\n#28 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#29 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#30 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process()\n#32 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#33 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon()\n#34 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#35 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#37 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#38 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#39 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#40 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call()\n#41 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute()\n#42 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run()\n#43 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run()\n#44 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand()\n#45 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun()\n#46 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run()\n#47 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1203): Illuminate\\Foundation\\Console\\Kernel->handle()\n#48 \\\\192.168.50.149\\WEB\\Flower\\artisan(13): Illuminate\\Foundation\\Application->handleCommand()\n#49 {main}','2024-08-05 21:23:42'),
(10,'d3c4b01e-a8b8-4c94-b5c2-96a4cc0c1641','database','default','{\"uuid\":\"d3c4b01e-a8b8-4c94-b5c2-96a4cc0c1641\",\"displayName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendVerificationEmail\\\":1:{s:8:\\\"incoming\\\";a:1:{s:10:\\\"sendVerify\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:7:{s:9:\\\"firstName\\\";s:8:\\\"dasfasdf\\\";s:8:\\\"lastName\\\";s:8:\\\"asdfasdf\\\";s:5:\\\"email\\\";s:18:\\\"delangoc@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$12$ro8EoNLhMPZK8tj1yXoa\\/.8Q.GcmG8F8tFdc4dZALWTsrWhY4lyCK\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-08-06 04:25:10\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-08-06 04:25:10\\\";s:2:\\\"id\\\";i:20;}s:11:\\\"\\u0000*\\u0000original\\\";a:7:{s:9:\\\"firstName\\\";s:8:\\\"dasfasdf\\\";s:8:\\\"lastName\\\";s:8:\\\"asdfasdf\\\";s:5:\\\"email\\\";s:18:\\\"delangoc@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$12$ro8EoNLhMPZK8tj1yXoa\\/.8Q.GcmG8F8tFdc4dZALWTsrWhY4lyCK\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-08-06 04:25:10\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-08-06 04:25:10\\\";s:2:\\\"id\\\";i:20;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:9:\\\"firstName\\\";i:1;s:8:\\\"lastName\\\";i:2;s:5:\\\"email\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:19:\\\"\\u0000*\\u0000authPasswordName\\\";s:8:\\\"password\\\";s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";}}}\"}}','InvalidArgumentException: View [mail.verify] not found. in \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php:139\nStack trace:\n#0 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php(79): Illuminate\\View\\FileViewFinder->findInPaths()\n#1 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Factory.php(151): Illuminate\\View\\FileViewFinder->find()\n#2 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(445): Illuminate\\View\\Factory->make()\n#3 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(420): Illuminate\\Mail\\Mailer->renderView()\n#4 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(313): Illuminate\\Mail\\Mailer->addContent()\n#5 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\Channels\\MailChannel.php(66): Illuminate\\Mail\\Mailer->send()\n#6 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(148): Illuminate\\Notifications\\Channels\\MailChannel->send()\n#7 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(106): Illuminate\\Notifications\\NotificationSender->sendToNotifiable()\n#8 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Notifications\\NotificationSender->Illuminate\\Notifications\\{closure}()\n#9 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(101): Illuminate\\Notifications\\NotificationSender->withLocale()\n#10 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(79): Illuminate\\Notifications\\NotificationSender->sendNow()\n#11 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\ChannelManager.php(39): Illuminate\\Notifications\\NotificationSender->send()\n#12 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\RoutesNotifications.php(18): Illuminate\\Notifications\\ChannelManager->send()\n#13 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\MustVerifyEmail.php(38): App\\Models\\User->notify()\n#14 \\\\192.168.50.149\\WEB\\Flower\\app\\Jobs\\SendVerificationEmail.php(30): Illuminate\\Foundation\\Auth\\User->sendEmailVerificationNotification()\n#15 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendVerificationEmail->handle()\n#16 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#18 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#19 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#20 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#21 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#22 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#24 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#25 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#26 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then()\n#28 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#29 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#30 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process()\n#32 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#33 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon()\n#34 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#35 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#37 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#38 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#39 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#40 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call()\n#41 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute()\n#42 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run()\n#43 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run()\n#44 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand()\n#45 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun()\n#46 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run()\n#47 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1203): Illuminate\\Foundation\\Console\\Kernel->handle()\n#48 \\\\192.168.50.149\\WEB\\Flower\\artisan(13): Illuminate\\Foundation\\Application->handleCommand()\n#49 {main}','2024-08-05 21:25:13'),
(11,'410196f6-e2ab-458e-a584-4fb8e674f604','database','default','{\"uuid\":\"410196f6-e2ab-458e-a584-4fb8e674f604\",\"displayName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendVerificationEmail\\\":1:{s:8:\\\"incoming\\\";a:1:{s:10:\\\"sendVerify\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:7:{s:9:\\\"firstName\\\";s:8:\\\"adsfasdf\\\";s:8:\\\"lastName\\\";s:12:\\\"asdfasdfdsaf\\\";s:5:\\\"email\\\";s:18:\\\"delangoc@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$12$eL6I\\/bfYRgjbTFCsqj0gOuLcpgPDD0nsS2YG7pRmVaRghz8aurS1S\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-08-06 04:26:30\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-08-06 04:26:30\\\";s:2:\\\"id\\\";i:21;}s:11:\\\"\\u0000*\\u0000original\\\";a:7:{s:9:\\\"firstName\\\";s:8:\\\"adsfasdf\\\";s:8:\\\"lastName\\\";s:12:\\\"asdfasdfdsaf\\\";s:5:\\\"email\\\";s:18:\\\"delangoc@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$12$eL6I\\/bfYRgjbTFCsqj0gOuLcpgPDD0nsS2YG7pRmVaRghz8aurS1S\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-08-06 04:26:30\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-08-06 04:26:30\\\";s:2:\\\"id\\\";i:21;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:9:\\\"firstName\\\";i:1;s:8:\\\"lastName\\\";i:2;s:5:\\\"email\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:19:\\\"\\u0000*\\u0000authPasswordName\\\";s:8:\\\"password\\\";s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";}}}\"}}','InvalidArgumentException: View [mail.verify] not found. in \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php:139\nStack trace:\n#0 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php(79): Illuminate\\View\\FileViewFinder->findInPaths()\n#1 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Factory.php(151): Illuminate\\View\\FileViewFinder->find()\n#2 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(445): Illuminate\\View\\Factory->make()\n#3 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(420): Illuminate\\Mail\\Mailer->renderView()\n#4 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(313): Illuminate\\Mail\\Mailer->addContent()\n#5 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\Channels\\MailChannel.php(66): Illuminate\\Mail\\Mailer->send()\n#6 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(148): Illuminate\\Notifications\\Channels\\MailChannel->send()\n#7 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(106): Illuminate\\Notifications\\NotificationSender->sendToNotifiable()\n#8 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Notifications\\NotificationSender->Illuminate\\Notifications\\{closure}()\n#9 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(101): Illuminate\\Notifications\\NotificationSender->withLocale()\n#10 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(79): Illuminate\\Notifications\\NotificationSender->sendNow()\n#11 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\ChannelManager.php(39): Illuminate\\Notifications\\NotificationSender->send()\n#12 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\RoutesNotifications.php(18): Illuminate\\Notifications\\ChannelManager->send()\n#13 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\MustVerifyEmail.php(38): App\\Models\\User->notify()\n#14 \\\\192.168.50.149\\WEB\\Flower\\app\\Jobs\\SendVerificationEmail.php(30): Illuminate\\Foundation\\Auth\\User->sendEmailVerificationNotification()\n#15 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendVerificationEmail->handle()\n#16 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#18 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#19 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#20 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#21 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#22 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#24 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#25 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#26 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then()\n#28 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#29 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#30 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process()\n#32 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#33 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon()\n#34 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#35 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#37 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#38 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#39 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#40 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call()\n#41 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute()\n#42 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run()\n#43 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run()\n#44 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand()\n#45 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun()\n#46 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run()\n#47 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1203): Illuminate\\Foundation\\Console\\Kernel->handle()\n#48 \\\\192.168.50.149\\WEB\\Flower\\artisan(13): Illuminate\\Foundation\\Application->handleCommand()\n#49 {main}','2024-08-05 21:26:32'),
(12,'02e9e41a-5ead-49d1-adb8-640fee03c304','database','default','{\"uuid\":\"02e9e41a-5ead-49d1-adb8-640fee03c304\",\"displayName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendVerificationEmail\\\":1:{s:8:\\\"incoming\\\";a:1:{s:10:\\\"sendVerify\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:7:{s:9:\\\"firstName\\\";s:8:\\\"asdfasdf\\\";s:8:\\\"lastName\\\";s:12:\\\"asdfasdfasdf\\\";s:5:\\\"email\\\";s:18:\\\"delangoc@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$12$LllPQSsqWdGUtfu03lpnweTVMeAo.Rqo\\/S9v0aVWahL74VnsUAR8q\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-08-06 04:27:43\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-08-06 04:27:43\\\";s:2:\\\"id\\\";i:22;}s:11:\\\"\\u0000*\\u0000original\\\";a:7:{s:9:\\\"firstName\\\";s:8:\\\"asdfasdf\\\";s:8:\\\"lastName\\\";s:12:\\\"asdfasdfasdf\\\";s:5:\\\"email\\\";s:18:\\\"delangoc@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$12$LllPQSsqWdGUtfu03lpnweTVMeAo.Rqo\\/S9v0aVWahL74VnsUAR8q\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-08-06 04:27:43\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-08-06 04:27:43\\\";s:2:\\\"id\\\";i:22;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:9:\\\"firstName\\\";i:1;s:8:\\\"lastName\\\";i:2;s:5:\\\"email\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:19:\\\"\\u0000*\\u0000authPasswordName\\\";s:8:\\\"password\\\";s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";}}}\"}}','InvalidArgumentException: View [mail.verify] not found. in \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php:139\nStack trace:\n#0 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php(79): Illuminate\\View\\FileViewFinder->findInPaths()\n#1 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Factory.php(151): Illuminate\\View\\FileViewFinder->find()\n#2 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(445): Illuminate\\View\\Factory->make()\n#3 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(420): Illuminate\\Mail\\Mailer->renderView()\n#4 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(313): Illuminate\\Mail\\Mailer->addContent()\n#5 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\Channels\\MailChannel.php(66): Illuminate\\Mail\\Mailer->send()\n#6 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(148): Illuminate\\Notifications\\Channels\\MailChannel->send()\n#7 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(106): Illuminate\\Notifications\\NotificationSender->sendToNotifiable()\n#8 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Notifications\\NotificationSender->Illuminate\\Notifications\\{closure}()\n#9 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(101): Illuminate\\Notifications\\NotificationSender->withLocale()\n#10 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(79): Illuminate\\Notifications\\NotificationSender->sendNow()\n#11 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\ChannelManager.php(39): Illuminate\\Notifications\\NotificationSender->send()\n#12 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\RoutesNotifications.php(18): Illuminate\\Notifications\\ChannelManager->send()\n#13 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\MustVerifyEmail.php(38): App\\Models\\User->notify()\n#14 \\\\192.168.50.149\\WEB\\Flower\\app\\Jobs\\SendVerificationEmail.php(30): Illuminate\\Foundation\\Auth\\User->sendEmailVerificationNotification()\n#15 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendVerificationEmail->handle()\n#16 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#18 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#19 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#20 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#21 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#22 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#24 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#25 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#26 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then()\n#28 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#29 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#30 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process()\n#32 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#33 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon()\n#34 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#35 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#37 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#38 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#39 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#40 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call()\n#41 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute()\n#42 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run()\n#43 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run()\n#44 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand()\n#45 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun()\n#46 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run()\n#47 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1203): Illuminate\\Foundation\\Console\\Kernel->handle()\n#48 \\\\192.168.50.149\\WEB\\Flower\\artisan(13): Illuminate\\Foundation\\Application->handleCommand()\n#49 {main}','2024-08-05 21:27:46'),
(13,'c24431b4-8761-4c9c-a71e-a84927db2ef1','database','default','{\"uuid\":\"c24431b4-8761-4c9c-a71e-a84927db2ef1\",\"displayName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendVerificationEmail\\\":1:{s:8:\\\"incoming\\\";a:1:{s:10:\\\"sendVerify\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:7:{s:9:\\\"firstName\\\";s:8:\\\"asdfasdf\\\";s:8:\\\"lastName\\\";s:11:\\\"adsfasdfdfa\\\";s:5:\\\"email\\\";s:19:\\\"delamerax@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$12$\\/iu9AtNX\\/zC289NFfCwWLOTSpQrpcFGNViVIg4umGKYhaCC7yapgG\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-08-06 04:32:46\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-08-06 04:32:46\\\";s:2:\\\"id\\\";i:23;}s:11:\\\"\\u0000*\\u0000original\\\";a:7:{s:9:\\\"firstName\\\";s:8:\\\"asdfasdf\\\";s:8:\\\"lastName\\\";s:11:\\\"adsfasdfdfa\\\";s:5:\\\"email\\\";s:19:\\\"delamerax@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$12$\\/iu9AtNX\\/zC289NFfCwWLOTSpQrpcFGNViVIg4umGKYhaCC7yapgG\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-08-06 04:32:46\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-08-06 04:32:46\\\";s:2:\\\"id\\\";i:23;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:9:\\\"firstName\\\";i:1;s:8:\\\"lastName\\\";i:2;s:5:\\\"email\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:19:\\\"\\u0000*\\u0000authPasswordName\\\";s:8:\\\"password\\\";s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";}}}\"}}','InvalidArgumentException: View [mail.verify] not found. in \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php:139\nStack trace:\n#0 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php(79): Illuminate\\View\\FileViewFinder->findInPaths()\n#1 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Factory.php(151): Illuminate\\View\\FileViewFinder->find()\n#2 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(445): Illuminate\\View\\Factory->make()\n#3 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(420): Illuminate\\Mail\\Mailer->renderView()\n#4 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(313): Illuminate\\Mail\\Mailer->addContent()\n#5 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\Channels\\MailChannel.php(66): Illuminate\\Mail\\Mailer->send()\n#6 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(148): Illuminate\\Notifications\\Channels\\MailChannel->send()\n#7 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(106): Illuminate\\Notifications\\NotificationSender->sendToNotifiable()\n#8 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Notifications\\NotificationSender->Illuminate\\Notifications\\{closure}()\n#9 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(101): Illuminate\\Notifications\\NotificationSender->withLocale()\n#10 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(79): Illuminate\\Notifications\\NotificationSender->sendNow()\n#11 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\ChannelManager.php(39): Illuminate\\Notifications\\NotificationSender->send()\n#12 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\RoutesNotifications.php(18): Illuminate\\Notifications\\ChannelManager->send()\n#13 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\MustVerifyEmail.php(38): App\\Models\\User->notify()\n#14 \\\\192.168.50.149\\WEB\\Flower\\app\\Jobs\\SendVerificationEmail.php(30): Illuminate\\Foundation\\Auth\\User->sendEmailVerificationNotification()\n#15 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendVerificationEmail->handle()\n#16 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#18 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#19 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#20 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#21 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#22 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#24 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#25 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#26 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then()\n#28 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#29 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#30 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process()\n#32 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#33 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon()\n#34 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#35 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#37 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#38 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#39 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#40 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call()\n#41 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute()\n#42 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run()\n#43 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run()\n#44 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand()\n#45 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun()\n#46 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run()\n#47 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1203): Illuminate\\Foundation\\Console\\Kernel->handle()\n#48 \\\\192.168.50.149\\WEB\\Flower\\artisan(13): Illuminate\\Foundation\\Application->handleCommand()\n#49 {main}','2024-08-05 21:32:48'),
(14,'bc124af9-85d6-4551-aa45-dff01290a624','database','default','{\"uuid\":\"bc124af9-85d6-4551-aa45-dff01290a624\",\"displayName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendVerificationEmail\\\":1:{s:8:\\\"incoming\\\";a:1:{s:10:\\\"sendVerify\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:7:{s:9:\\\"firstName\\\";s:8:\\\"asdfasdf\\\";s:8:\\\"lastName\\\";s:8:\\\"asdfasdf\\\";s:5:\\\"email\\\";s:18:\\\"delangoc@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$12$PabUL5JZjq3CYc.TEGS3r.BlIn4lMAcPCGpxnTB0waizsYY\\/N1ot2\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-08-06 04:35:32\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-08-06 04:35:32\\\";s:2:\\\"id\\\";i:24;}s:11:\\\"\\u0000*\\u0000original\\\";a:7:{s:9:\\\"firstName\\\";s:8:\\\"asdfasdf\\\";s:8:\\\"lastName\\\";s:8:\\\"asdfasdf\\\";s:5:\\\"email\\\";s:18:\\\"delangoc@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$12$PabUL5JZjq3CYc.TEGS3r.BlIn4lMAcPCGpxnTB0waizsYY\\/N1ot2\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-08-06 04:35:32\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-08-06 04:35:32\\\";s:2:\\\"id\\\";i:24;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:9:\\\"firstName\\\";i:1;s:8:\\\"lastName\\\";i:2;s:5:\\\"email\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:19:\\\"\\u0000*\\u0000authPasswordName\\\";s:8:\\\"password\\\";s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";}}}\"}}','InvalidArgumentException: View [mail.verify] not found. in \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php:139\nStack trace:\n#0 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php(79): Illuminate\\View\\FileViewFinder->findInPaths()\n#1 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Factory.php(151): Illuminate\\View\\FileViewFinder->find()\n#2 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(445): Illuminate\\View\\Factory->make()\n#3 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(420): Illuminate\\Mail\\Mailer->renderView()\n#4 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(313): Illuminate\\Mail\\Mailer->addContent()\n#5 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\Channels\\MailChannel.php(66): Illuminate\\Mail\\Mailer->send()\n#6 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(148): Illuminate\\Notifications\\Channels\\MailChannel->send()\n#7 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(106): Illuminate\\Notifications\\NotificationSender->sendToNotifiable()\n#8 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Notifications\\NotificationSender->Illuminate\\Notifications\\{closure}()\n#9 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(101): Illuminate\\Notifications\\NotificationSender->withLocale()\n#10 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(79): Illuminate\\Notifications\\NotificationSender->sendNow()\n#11 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\ChannelManager.php(39): Illuminate\\Notifications\\NotificationSender->send()\n#12 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\RoutesNotifications.php(18): Illuminate\\Notifications\\ChannelManager->send()\n#13 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\MustVerifyEmail.php(38): App\\Models\\User->notify()\n#14 \\\\192.168.50.149\\WEB\\Flower\\app\\Jobs\\SendVerificationEmail.php(30): Illuminate\\Foundation\\Auth\\User->sendEmailVerificationNotification()\n#15 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendVerificationEmail->handle()\n#16 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#18 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#19 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#20 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#21 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#22 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#24 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#25 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#26 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then()\n#28 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#29 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#30 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process()\n#32 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#33 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon()\n#34 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#35 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#37 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#38 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#39 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#40 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call()\n#41 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute()\n#42 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run()\n#43 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run()\n#44 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand()\n#45 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun()\n#46 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run()\n#47 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1203): Illuminate\\Foundation\\Console\\Kernel->handle()\n#48 \\\\192.168.50.149\\WEB\\Flower\\artisan(13): Illuminate\\Foundation\\Application->handleCommand()\n#49 {main}','2024-08-05 21:35:35'),
(15,'6afebf4d-9151-458c-a7c4-44688b7cf01d','database','default','{\"uuid\":\"6afebf4d-9151-458c-a7c4-44688b7cf01d\",\"displayName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendVerificationEmail\\\":1:{s:8:\\\"incoming\\\";a:1:{s:10:\\\"sendVerify\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:7:{s:9:\\\"firstName\\\";s:8:\\\"adsfsadf\\\";s:8:\\\"lastName\\\";s:12:\\\"asdfasdfasdf\\\";s:5:\\\"email\\\";s:23:\\\"admindelangoc@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$12$9BeQwE1k\\/j0LK5HXY49nu.YnafJvPslFis\\/j07cd6c9TjB0KkFbbO\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-08-06 04:38:08\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-08-06 04:38:08\\\";s:2:\\\"id\\\";i:25;}s:11:\\\"\\u0000*\\u0000original\\\";a:7:{s:9:\\\"firstName\\\";s:8:\\\"adsfsadf\\\";s:8:\\\"lastName\\\";s:12:\\\"asdfasdfasdf\\\";s:5:\\\"email\\\";s:23:\\\"admindelangoc@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$12$9BeQwE1k\\/j0LK5HXY49nu.YnafJvPslFis\\/j07cd6c9TjB0KkFbbO\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-08-06 04:38:08\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-08-06 04:38:08\\\";s:2:\\\"id\\\";i:25;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:9:\\\"firstName\\\";i:1;s:8:\\\"lastName\\\";i:2;s:5:\\\"email\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:19:\\\"\\u0000*\\u0000authPasswordName\\\";s:8:\\\"password\\\";s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";}}}\"}}','InvalidArgumentException: View [mail.verify] not found. in \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php:139\nStack trace:\n#0 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php(79): Illuminate\\View\\FileViewFinder->findInPaths()\n#1 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Factory.php(151): Illuminate\\View\\FileViewFinder->find()\n#2 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(445): Illuminate\\View\\Factory->make()\n#3 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(420): Illuminate\\Mail\\Mailer->renderView()\n#4 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(313): Illuminate\\Mail\\Mailer->addContent()\n#5 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\Channels\\MailChannel.php(66): Illuminate\\Mail\\Mailer->send()\n#6 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(148): Illuminate\\Notifications\\Channels\\MailChannel->send()\n#7 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(106): Illuminate\\Notifications\\NotificationSender->sendToNotifiable()\n#8 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Notifications\\NotificationSender->Illuminate\\Notifications\\{closure}()\n#9 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(101): Illuminate\\Notifications\\NotificationSender->withLocale()\n#10 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(79): Illuminate\\Notifications\\NotificationSender->sendNow()\n#11 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\ChannelManager.php(39): Illuminate\\Notifications\\NotificationSender->send()\n#12 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\RoutesNotifications.php(18): Illuminate\\Notifications\\ChannelManager->send()\n#13 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\MustVerifyEmail.php(38): App\\Models\\User->notify()\n#14 \\\\192.168.50.149\\WEB\\Flower\\app\\Jobs\\SendVerificationEmail.php(30): Illuminate\\Foundation\\Auth\\User->sendEmailVerificationNotification()\n#15 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendVerificationEmail->handle()\n#16 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#18 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#19 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#20 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#21 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#22 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#24 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#25 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#26 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then()\n#28 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#29 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#30 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process()\n#32 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#33 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon()\n#34 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#35 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#37 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#38 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#39 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(690): Illuminate\\Container\\BoundMethod::call()\n#40 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call()\n#41 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute()\n#42 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run()\n#43 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run()\n#44 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand()\n#45 \\\\192.168.50.149\\WEB\\Flower\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun()\n#46 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run()\n#47 \\\\192.168.50.149\\WEB\\Flower\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1203): Illuminate\\Foundation\\Console\\Kernel->handle()\n#48 \\\\192.168.50.149\\WEB\\Flower\\artisan(13): Illuminate\\Foundation\\Application->handleCommand()\n#49 {main}','2024-08-05 21:38:10');
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES
(1,'00001-San-pham-1-66a49171c4c78.jpg','2024-07-26 23:19:29','2024-07-26 23:19:29'),
(2,'00001-San-pham-1-66a491723e655.jpg','2024-07-26 23:19:30','2024-07-26 23:19:30'),
(3,'00003-san-pham-3-66a4950ae8767.jpg','2024-07-26 23:34:50','2024-07-26 23:34:50'),
(4,'00003-san-pham-3-66a4950b86943.jpg','2024-07-26 23:34:51','2024-07-26 23:34:51'),
(5,'00005-san-pham-4-66a5062e925cb.jpg','2024-07-27 07:37:34','2024-07-27 07:37:34'),
(6,'0009-San-pham-4-66a507cc3531b.jpg','2024-07-27 07:44:28','2024-07-27 07:44:28'),
(7,'00006-Mascara-Flower-66a6ff15ea02a.jpg','2024-07-28 19:31:50','2024-07-28 19:31:50'),
(8,'00006-Mascara-Flower-66a6ff16701a0.jpg','2024-07-28 19:31:50','2024-07-28 19:31:50'),
(9,'00006-Mascara-Flower-66a6ff173d7e8.jpg','2024-07-28 19:31:51','2024-07-28 19:31:51'),
(10,'00006-Mascara-Flower-66a6ff1793380.jpg','2024-07-28 19:31:51','2024-07-28 19:31:51'),
(11,'00006-Mascara-Flower-66a6ff17da4a4.jpg','2024-07-28 19:31:51','2024-07-28 19:31:51');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES
(20,'default','{\"uuid\":\"6b1c184a-d2e5-4189-a6d8-8a565dcdcc97\",\"displayName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendVerificationEmail\\\":1:{s:8:\\\"incoming\\\";a:1:{s:10:\\\"sendVerify\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:7:{s:9:\\\"firstName\\\";s:8:\\\"asdfasdf\\\";s:8:\\\"lastName\\\";s:11:\\\"asdfasdfdsf\\\";s:5:\\\"email\\\";s:19:\\\"dellangoc@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$12$0iPvcFiD\\/ufHu18Fr0jlL.D3smsCcFLl2y5M7sxvQDtcbqXLQQw8C\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-08-06 09:50:09\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-08-06 09:50:09\\\";s:2:\\\"id\\\";i:31;}s:11:\\\"\\u0000*\\u0000original\\\";a:7:{s:9:\\\"firstName\\\";s:8:\\\"asdfasdf\\\";s:8:\\\"lastName\\\";s:11:\\\"asdfasdfdsf\\\";s:5:\\\"email\\\";s:19:\\\"dellangoc@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$12$0iPvcFiD\\/ufHu18Fr0jlL.D3smsCcFLl2y5M7sxvQDtcbqXLQQw8C\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-08-06 09:50:09\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-08-06 09:50:09\\\";s:2:\\\"id\\\";i:31;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:9:\\\"firstName\\\";i:1;s:8:\\\"lastName\\\";i:2;s:5:\\\"email\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:19:\\\"\\u0000*\\u0000authPasswordName\\\";s:8:\\\"password\\\";s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";}}}\"}}',0,NULL,1722937809,1722937809),
(21,'default','{\"uuid\":\"c06a237d-b0be-4e13-b6b0-a6b31ef2934e\",\"displayName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendVerificationEmail\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendVerificationEmail\\\":1:{s:8:\\\"incoming\\\";a:1:{s:10:\\\"sendVerify\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:7:{s:9:\\\"firstName\\\";s:4:\\\"Anda\\\";s:8:\\\"lastName\\\";s:4:\\\"Seat\\\";s:5:\\\"email\\\";s:14:\\\"anda@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$12$7bQ4qt5zI1hNN\\/j1aftuJubzBV1rixBtdEpJBgX7tGbqTTEZz1Wpu\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-08-06 10:47:10\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-08-06 10:47:10\\\";s:2:\\\"id\\\";i:32;}s:11:\\\"\\u0000*\\u0000original\\\";a:7:{s:9:\\\"firstName\\\";s:4:\\\"Anda\\\";s:8:\\\"lastName\\\";s:4:\\\"Seat\\\";s:5:\\\"email\\\";s:14:\\\"anda@gmail.com\\\";s:8:\\\"password\\\";s:60:\\\"$2y$12$7bQ4qt5zI1hNN\\/j1aftuJubzBV1rixBtdEpJBgX7tGbqTTEZz1Wpu\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-08-06 10:47:10\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-08-06 10:47:10\\\";s:2:\\\"id\\\";i:32;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:9:\\\"firstName\\\";i:1;s:8:\\\"lastName\\\";i:2;s:5:\\\"email\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:19:\\\"\\u0000*\\u0000authPasswordName\\\";s:8:\\\"password\\\";s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";}}}\"}}',0,NULL,1722941230,1722941230);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materials`
--

DROP TABLE IF EXISTS `materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials`
--

LOCK TABLES `materials` WRITE;
/*!40000 ALTER TABLE `materials` DISABLE KEYS */;
INSERT INTO `materials` VALUES
(1,'Material A',NULL,NULL),
(2,'Material B',NULL,NULL),
(3,'Material C',NULL,NULL);
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(7,'0001_01_01_000000_create_users_table',1),
(8,'0001_01_01_000001_create_cache_table',1),
(9,'0001_01_01_000002_create_jobs_table',1),
(11,'2024_07_25_001247_create_addresses_table',2),
(12,'2024_07_25_153228_create_products_table',3),
(13,'2024_07_26_022003_create_shapes_table',3),
(14,'2024_07_26_022016_create_sizes_table',3),
(15,'2024_07_26_022030_create_colors_table',3),
(16,'2024_07_26_022046_create_materials_table',3),
(17,'2024_07_26_022106_create_images_table',3),
(18,'2024_07_26_025344_create_product_shape_table',3),
(19,'2024_07_26_025409_create_product_color_table',3),
(20,'2024_07_26_025420_create_product_material_table',3),
(21,'2024_07_26_025432_create_product_size_table',3),
(22,'2024_07_26_025457_create_product_image_table',3),
(23,'2024_07_26_033932_create_types_table',3),
(24,'2024_07_26_033952_create_product_type_table',3),
(25,'2024_07_27_015943_add_box_content_to_products_table',4),
(26,'2024_07_27_022139_update_sold_amount_of_products_table',5),
(27,'2024_07_27_023350_modify_products',6),
(28,'2024_07_28_010104_edit_types_table',7),
(29,'2024_07_28_012606_change_back',8),
(30,'2024_07_28_164208_add_purpose_to_products_table',9),
(31,'2024_07_28_165350_delete_purpose_on_products_table',10),
(32,'2024_07_29_014036_create_events_table',11),
(33,'2024_07_29_015101_create_event_product_table',12),
(34,'2024_07_30_003722_create_orders_table',13),
(35,'2024_07_30_013022_create_order_product_table',13),
(36,'2024_07_31_103703_edit_orders_table',14),
(37,'2024_07_31_104041_remove_uder_id_on_orders',15),
(38,'2024_07_31_105951_add_to_orders_table',16),
(39,'2024_08_06_093047_add_sub_admin',17);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_product_order_id_foreign` (`order_id`),
  KEY `order_product_product_id_foreign` (`product_id`),
  CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product`
--

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
INSERT INTO `order_product` VALUES
(3,2,9,1,NULL,NULL),
(4,2,1,1,NULL,NULL),
(5,2,9,1,NULL,NULL),
(6,2,1,1,NULL,NULL),
(7,2,1,1,NULL,NULL),
(8,2,9,1,NULL,NULL),
(9,2,1,1,NULL,NULL),
(10,2,9,1,NULL,NULL),
(11,3,9,1,NULL,NULL),
(12,3,9,1,NULL,NULL),
(13,3,9,1,NULL,NULL),
(14,3,9,1,NULL,NULL),
(15,3,9,1,NULL,NULL),
(16,3,9,1,NULL,NULL),
(17,3,9,1,NULL,NULL),
(18,3,9,1,NULL,NULL),
(19,3,9,1,NULL,NULL),
(20,3,9,1,NULL,NULL),
(21,3,9,1,NULL,NULL),
(22,3,9,1,NULL,NULL),
(23,3,9,1,NULL,NULL),
(24,3,9,1,NULL,NULL),
(25,3,9,1,NULL,NULL),
(26,3,9,1,NULL,NULL),
(27,3,9,1,NULL,NULL),
(28,4,9,1,NULL,NULL),
(29,5,9,1,NULL,NULL),
(30,6,9,1,NULL,NULL),
(31,7,9,1,NULL,NULL),
(32,8,9,1,NULL,NULL),
(33,9,9,1,NULL,NULL),
(34,10,9,1,NULL,NULL),
(35,11,9,1,NULL,NULL),
(36,12,9,1,NULL,NULL),
(37,13,9,1,NULL,NULL),
(38,14,9,1,NULL,NULL),
(39,15,9,1,NULL,NULL),
(40,16,9,1,NULL,NULL),
(41,17,9,1,NULL,NULL),
(42,18,9,1,NULL,NULL),
(43,19,9,1,NULL,NULL),
(44,20,9,1,NULL,NULL),
(45,21,9,1,NULL,NULL),
(46,22,9,1,NULL,NULL),
(47,23,9,1,NULL,NULL),
(48,24,9,1,NULL,NULL),
(49,25,9,1,NULL,NULL),
(50,26,9,1,NULL,NULL),
(51,27,1,1,NULL,NULL),
(52,28,9,1,NULL,NULL),
(53,29,9,1,NULL,NULL),
(54,29,1,1,NULL,NULL),
(55,29,9,1,NULL,NULL),
(56,29,1,1,NULL,NULL),
(57,29,9,1,NULL,NULL),
(58,29,9,1,NULL,NULL),
(59,29,1,1,NULL,NULL),
(60,29,1,1,NULL,NULL),
(61,29,9,1,NULL,NULL),
(62,29,1,1,NULL,NULL),
(63,29,9,1,NULL,NULL),
(64,29,1,1,NULL,NULL),
(65,29,9,1,NULL,NULL),
(66,29,1,1,NULL,NULL),
(67,29,9,1,NULL,NULL),
(68,29,1,1,NULL,NULL),
(69,29,9,1,NULL,NULL),
(70,29,1,1,NULL,NULL),
(71,28,9,1,NULL,NULL),
(72,30,1,1,NULL,NULL),
(73,30,1,1,NULL,NULL),
(74,30,1,1,NULL,NULL),
(75,30,1,1,NULL,NULL),
(76,30,1,1,NULL,NULL),
(77,30,1,1,NULL,NULL),
(78,30,1,1,NULL,NULL),
(79,30,1,1,NULL,NULL),
(80,30,1,1,NULL,NULL),
(81,30,1,1,NULL,NULL),
(82,30,1,1,NULL,NULL),
(83,30,1,1,NULL,NULL),
(84,30,1,1,NULL,NULL),
(85,31,1,1,NULL,NULL),
(86,31,9,1,NULL,NULL),
(87,31,1,1,NULL,NULL),
(88,31,9,1,NULL,NULL);
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(255) DEFAULT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `paid_at` timestamp NULL DEFAULT NULL,
  `is_delivered` tinyint(1) NOT NULL DEFAULT 0,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES
(2,'PayPal',1099.98,1,'2024-08-01 00:48:35',0,NULL,'Delivering','2024-07-31 03:48:09','2024-08-01 00:48:35',NULL),
(3,'Google Pay',99.99,1,'2024-08-03 21:51:31',0,NULL,'Delivering','2024-08-01 01:48:39','2024-08-03 21:51:31',NULL),
(4,'Google Pay',99.99,1,'2024-08-03 23:14:21',0,NULL,'Delivering','2024-08-03 23:14:08','2024-08-03 23:14:21',NULL),
(5,'Google Pay',99.99,1,'2024-08-03 23:16:53',0,NULL,'Delivering','2024-08-03 23:16:23','2024-08-03 23:16:53',NULL),
(6,'Google Pay',99.99,1,'2024-08-03 23:18:41',0,NULL,'Delivering','2024-08-03 23:18:29','2024-08-03 23:18:41',NULL),
(7,'Google Pay',99.99,1,'2024-08-03 23:19:32',0,NULL,'Delivering','2024-08-03 23:19:14','2024-08-03 23:19:32',NULL),
(8,'Google Pay',99.99,1,'2024-08-03 23:21:27',0,NULL,'Delivering','2024-08-03 23:21:11','2024-08-03 23:21:27',NULL),
(9,'Google Pay',99.99,1,'2024-08-03 23:23:11',0,NULL,'Delivering','2024-08-03 23:22:38','2024-08-03 23:23:11',NULL),
(10,'Google Pay',99.99,1,'2024-08-03 23:24:23',0,NULL,'Delivering','2024-08-03 23:23:56','2024-08-03 23:24:23',NULL),
(11,'Google Pay',99.99,1,'2024-08-03 23:28:19',0,NULL,'Delivering','2024-08-03 23:28:07','2024-08-03 23:28:19',NULL),
(12,'Google Pay',99.99,1,'2024-08-03 23:29:22',0,NULL,'Delivering','2024-08-03 23:29:11','2024-08-03 23:29:22',NULL),
(13,'Google Pay',99.99,1,'2024-08-03 23:31:00',0,NULL,'Delivering','2024-08-03 23:30:51','2024-08-03 23:31:00',NULL),
(14,'Google Pay',99.99,1,'2024-08-03 23:32:54',0,NULL,'Delivering','2024-08-03 23:32:41','2024-08-03 23:32:54',NULL),
(15,'Google Pay',99.99,1,'2024-08-03 23:34:39',0,NULL,'Delivering','2024-08-03 23:34:29','2024-08-03 23:34:39',NULL),
(16,'Google Pay',99.99,1,'2024-08-03 23:35:49',0,NULL,'Delivering','2024-08-03 23:35:40','2024-08-03 23:35:49',NULL),
(17,'Google Pay',99.99,1,'2024-08-03 23:39:28',0,NULL,'Delivering','2024-08-03 23:39:17','2024-08-03 23:39:28',NULL),
(18,'Google Pay',99.99,1,'2024-08-03 23:42:35',0,NULL,'Delivering','2024-08-03 23:42:25','2024-08-03 23:42:35',NULL),
(19,'Google Pay',99.99,1,'2024-08-03 23:49:49',0,NULL,'Delivering','2024-08-03 23:49:37','2024-08-03 23:49:49',NULL),
(20,'Google Pay',99.99,1,'2024-08-03 23:52:07',0,NULL,'Delivering','2024-08-03 23:51:01','2024-08-03 23:52:07',NULL),
(21,'Google Pay',99.99,1,'2024-08-03 23:53:01',0,NULL,'Delivering','2024-08-03 23:52:50','2024-08-03 23:53:01',NULL),
(22,'Google Pay',99.99,1,'2024-08-03 23:54:35',0,NULL,'Delivering','2024-08-03 23:54:24','2024-08-03 23:54:35',NULL),
(23,'Google Pay',99.99,1,'2024-08-03 23:55:57',0,NULL,'Delivering','2024-08-03 23:55:47','2024-08-03 23:55:57',NULL),
(24,'Google Pay',99.99,1,'2024-08-03 23:57:20',0,NULL,'Delivering','2024-08-03 23:57:11','2024-08-03 23:57:20',NULL),
(25,'Google Pay',99.99,1,'2024-08-04 00:39:49',0,NULL,'Delivering','2024-08-04 00:39:39','2024-08-04 00:39:49',NULL),
(26,'Google Pay',99.99,1,'2024-08-04 00:40:44',0,NULL,'Delivering','2024-08-04 00:40:34','2024-08-04 00:40:44',NULL),
(27,'Google Pay',999.99,1,'2024-08-04 01:12:39',0,NULL,'Delivering','2024-08-04 01:12:28','2024-08-04 01:12:39',NULL),
(28,NULL,99.99,0,NULL,0,NULL,'Pending','2024-08-04 01:40:19','2024-08-04 01:40:19',NULL),
(29,NULL,1099.98,0,NULL,0,NULL,'Pending','2024-08-04 08:27:44','2024-08-04 08:27:44',NULL),
(30,NULL,999.99,0,NULL,0,NULL,'Pending','2024-08-04 19:37:55','2024-08-04 19:37:55',NULL),
(31,NULL,22.00,0,NULL,0,NULL,'Pending','2024-08-05 09:00:27','2024-08-05 09:00:27',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_color`
--

DROP TABLE IF EXISTS `product_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_color` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `color_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_color_product_id_foreign` (`product_id`),
  KEY `product_color_color_id_foreign` (`color_id`),
  CONSTRAINT `product_color_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`),
  CONSTRAINT `product_color_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_color`
--

LOCK TABLES `product_color` WRITE;
/*!40000 ALTER TABLE `product_color` DISABLE KEYS */;
INSERT INTO `product_color` VALUES
(1,1,10,NULL,NULL),
(2,1,11,NULL,NULL),
(3,5,5,NULL,NULL),
(5,7,6,NULL,NULL),
(6,9,4,NULL,NULL);
/*!40000 ALTER TABLE `product_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_image` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `image_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_image_product_id_foreign` (`product_id`),
  KEY `product_image_image_id_foreign` (`image_id`),
  CONSTRAINT `product_image_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`),
  CONSTRAINT `product_image_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image`
--

LOCK TABLES `product_image` WRITE;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
INSERT INTO `product_image` VALUES
(1,1,1,NULL,NULL),
(2,1,2,NULL,NULL),
(3,5,3,NULL,NULL),
(4,5,4,NULL,NULL),
(6,7,6,NULL,NULL),
(7,9,7,NULL,NULL),
(8,9,8,NULL,NULL),
(9,9,9,NULL,NULL),
(10,9,10,NULL,NULL),
(11,9,11,NULL,NULL);
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_material`
--

DROP TABLE IF EXISTS `product_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_material` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `material_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_material_product_id_foreign` (`product_id`),
  KEY `product_material_material_id_foreign` (`material_id`),
  CONSTRAINT `product_material_material_id_foreign` FOREIGN KEY (`material_id`) REFERENCES `materials` (`id`),
  CONSTRAINT `product_material_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_material`
--

LOCK TABLES `product_material` WRITE;
/*!40000 ALTER TABLE `product_material` DISABLE KEYS */;
INSERT INTO `product_material` VALUES
(1,1,2,NULL,NULL),
(2,1,3,NULL,NULL),
(3,5,3,NULL,NULL),
(5,7,3,NULL,NULL),
(6,9,3,NULL,NULL);
/*!40000 ALTER TABLE `product_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_shape`
--

DROP TABLE IF EXISTS `product_shape`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_shape` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `shape_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_shape_product_id_foreign` (`product_id`),
  KEY `product_shape_shape_id_foreign` (`shape_id`),
  CONSTRAINT `product_shape_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `product_shape_shape_id_foreign` FOREIGN KEY (`shape_id`) REFERENCES `shapes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_shape`
--

LOCK TABLES `product_shape` WRITE;
/*!40000 ALTER TABLE `product_shape` DISABLE KEYS */;
INSERT INTO `product_shape` VALUES
(1,1,2,NULL,NULL),
(2,5,3,NULL,NULL),
(4,7,3,NULL,NULL),
(5,9,3,NULL,NULL);
/*!40000 ALTER TABLE `product_shape` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_size`
--

DROP TABLE IF EXISTS `product_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_size` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `size_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_size_product_id_foreign` (`product_id`),
  KEY `product_size_size_id_foreign` (`size_id`),
  CONSTRAINT `product_size_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `product_size_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_size`
--

LOCK TABLES `product_size` WRITE;
/*!40000 ALTER TABLE `product_size` DISABLE KEYS */;
INSERT INTO `product_size` VALUES
(1,1,2,NULL,NULL),
(2,5,2,NULL,NULL),
(4,7,3,NULL,NULL),
(5,9,2,NULL,NULL);
/*!40000 ALTER TABLE `product_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_type` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `type_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_type_product_id_foreign` (`product_id`),
  KEY `product_type_type_id_foreign` (`type_id`),
  CONSTRAINT `product_type_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `product_type_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES
(5,1,1,NULL,NULL),
(6,1,3,NULL,NULL),
(7,5,2,NULL,NULL),
(9,7,2,NULL,NULL),
(11,9,2,NULL,NULL);
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `SKU` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sold_amount` int(11) NOT NULL DEFAULT 0,
  `box_material` varchar(255) NOT NULL,
  `box_dimension_inner` varchar(255) NOT NULL,
  `box_dimension_outer` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `box_content` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES
(1,'San pham 1XX','00001','San pham khong mau',999.99,15,0,'Paper','80 x 60 x40','30 x50 x 60','2024-07-26 19:34:39','2024-07-27 06:36:14','100 gil'),
(5,'san pham 3','00003','Dark black rose',88.79,20,0,'Aluminium','80 x 60 x40','30 x50 x 60','2024-07-26 23:34:49','2024-07-26 23:34:49','100 gil'),
(7,'San pham 4','0009','All dark rose',77.99,20,0,'Paper','80 x 60 x40','30 x50 x 60','2024-07-27 07:44:26','2024-07-27 07:44:26','100 gil'),
(9,'Mascara Flower','00006','A flower for wedding',99.99,0,0,'Paper','80 x 60 x40','30 x50 x 60','2024-07-28 19:31:47','2024-07-28 19:31:47','100 gil');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES
('8iPssosNrARzdpXgxSq1eyuvrW7DQ98SWbaVY9EN',NULL,'66.220.149.17','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoib0NnaHI4UWw0bXhvTnlBalJtT1FTR1R2aEFOVDRoZTB5Z3pPOTNNbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTM1OiJodHRwczovL3J1b3ViYW9sb2MuY29tLz9mYmNsaWQ9SXdaWGgwYmdOaFpXMENNVEVBQVIzTWRpbWdtb0JwUU9BSE5md2lZcFlUc3lGVDNVWDdTR0VWRHJEaGdkdjlNbDE1c1MtaUI3a3ktTmdfYWVtX3VKNVk4QXd5OVhjVXdaNFRIa2s3VUEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1722938555),
('bd7N661JuUhV9g1lUJAZICu05KmEeI8ON6toxNw8',NULL,'66.249.66.76','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.6478.182 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiN01RNTBtcjJ5dVNlV2xKaXd0MGQ2TExRT0FhazZmOGVVemtTRWJLOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9ydW91YmFvbG9jLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1722942468),
('LOhI8htXBnJGbOZbooMyPRjEhfsc09FNGM3buvJw',NULL,'69.171.249.22','facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)','YTozOntzOjY6Il90b2tlbiI7czo0MDoic25wSjlrUlltd01OaG9aSjNhcU14Wlc1SVhmek9QeDQyYTRuZDJrTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vcnVvdWJhb2xvYy5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1722938589),
('pTBLH9XVp6shaXFwNR6RB6zGrSL9QGjWzq6CyF72',1,'192.168.50.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTGF2cmhEd1RlejBsRzl2eUVENmJEd3Z0RDE1NVp1SzlQZG1TSkpxUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vcnVvdWJhb2xvYy5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NzoiaXNBZG1pbiI7aToxO30=',1722944022),
('W7bi00IbkNDlqz9fqGkO2uVGK369J5aln79WWLPl',NULL,'173.252.79.8','facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)','YTozOntzOjY6Il90b2tlbiI7czo0MDoieDExbFQyWXd2akd5ZG11YVFabVJ2TjIyOEw4cEdQNnNhOUowa29kRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9ydW91YmFvbG9jLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1722938552),
('zIQ6Ca9pUYi93ZdCY5YYOuIuaR8ZBSk0iFAU21r8',NULL,'192.168.50.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHRHaGY5U1c5aVVucExjcjNOc0xkUmU5S2JMR3AwdG5aVWNGa04zcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vcnVvdWJhb2xvYy5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1722941790);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shapes`
--

DROP TABLE IF EXISTS `shapes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shapes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shapes`
--

LOCK TABLES `shapes` WRITE;
/*!40000 ALTER TABLE `shapes` DISABLE KEYS */;
INSERT INTO `shapes` VALUES
(1,'Shape A',NULL,NULL),
(2,'Shape B',NULL,NULL),
(3,'Shape C',NULL,NULL);
/*!40000 ALTER TABLE `shapes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sizes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES
(1,'Size A',NULL,NULL),
(2,'Size B',NULL,NULL),
(3,'Size C',NULL,NULL);
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES
(1,'type A',NULL,NULL),
(2,'type B',NULL,NULL),
(3,'type C',NULL,NULL);
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isSubAdmin` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'Tuan','Ngoc','admin@admin.com',NULL,'$2y$12$hY3JUsVidJ3Itc7NOuZUc.yHH7vVYJvnc.ytCd60G.J4u1XAzriI2',1,NULL,'2024-07-24 06:21:21','2024-07-24 06:21:21',0),
(2,'Bao','Ngoc','ngoc@gmail.com',NULL,'$2y$12$Z3zGFnW7v5x7PQHV8xLVIefZPnHDmUNlbqmVR3FwsMIbf8fv2hh0C',0,NULL,'2024-07-24 06:28:29','2024-08-06 04:30:18',1),
(30,'adsfasdf','asdfasdf','delangoc@gmail.com',NULL,'$2y$12$zWo/5VN6GQIskVshyoSunu5H9MAC0Pq2N71S5xMo8vS01.7AGvxTG',0,NULL,'2024-08-05 21:49:14','2024-08-05 21:49:14',0),
(31,'asdfasdf','asdfasdfdsf','dellangoc@gmail.com',NULL,'$2y$12$0iPvcFiD/ufHu18Fr0jlL.D3smsCcFLl2y5M7sxvQDtcbqXLQQw8C',0,NULL,'2024-08-06 02:50:09','2024-08-06 02:50:09',0),
(33,'Anda','Seat','anda@subadmin.com','2024-08-06 04:33:35','$2y$12$cpKl58QwMDhZ83ScEfBDNOdWnZws27dbd0QXn5tC3e.tp6QcmH4Dm',0,NULL,'2024-08-06 04:07:57','2024-08-06 04:33:35',0),
(34,'Masa','Cara','mascara@subadmin.com','2024-08-06 04:14:37','$2y$12$/uP0sG0NYYpwTPGBH7fEP.wLy1Yeb5o8KU53gGCg8jjYnKVxq5Q2m',0,NULL,'2024-08-06 04:14:37','2024-08-06 04:30:29',1);
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

-- Dump completed on 2024-08-06 18:41:17
