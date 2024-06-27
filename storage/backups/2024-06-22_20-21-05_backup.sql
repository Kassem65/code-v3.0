-- MySQL dump 10.13  Distrib 8.0.37, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: code_education
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administrators`
--

DROP TABLE IF EXISTS `administrators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrators` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `administrators_user_id_foreign` (`user_id`),
  CONSTRAINT `administrators_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrators`
--

LOCK TABLES `administrators` WRITE;
/*!40000 ALTER TABLE `administrators` DISABLE KEYS */;
INSERT INTO `administrators` VALUES (1,23,'1-475-606-4933','1985-02-04','2024-06-22 17:20:27','2024-06-22 17:20:27'),(2,24,'+1-743-867-5420','2010-05-28','2024-06-22 17:20:27','2024-06-22 17:20:27'),(3,25,'+1.703.803.2304','1976-11-17','2024-06-22 17:20:27','2024-06-22 17:20:27'),(4,26,'845-528-7054','2017-11-21','2024-06-22 17:20:27','2024-06-22 17:20:27'),(5,27,'+1 (534) 825-0394','1974-10-31','2024-06-22 17:20:27','2024-06-22 17:20:27'),(6,28,'(573) 775-9740','2001-03-15','2024-06-22 17:20:27','2024-06-22 17:20:27'),(7,29,'386.594.2137','1978-09-28','2024-06-22 17:20:27','2024-06-22 17:20:27'),(8,30,'+1.484.688.9519','1990-04-15','2024-06-22 17:20:27','2024-06-22 17:20:27'),(9,31,'+1.678.503.8971','2006-08-23','2024-06-22 17:20:27','2024-06-22 17:20:27'),(10,32,'+1 (332) 383-6245','2004-03-28','2024-06-22 17:20:27','2024-06-22 17:20:27');
/*!40000 ALTER TABLE `administrators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `exam_student_id` bigint(20) unsigned NOT NULL,
  `true_false_question_id` bigint(20) unsigned NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `answers_exam_student_id_foreign` (`exam_student_id`),
  KEY `answers_true_false_question_id_foreign` (`true_false_question_id`),
  CONSTRAINT `answers_exam_student_id_foreign` FOREIGN KEY (`exam_student_id`) REFERENCES `exam_student` (`id`) ON DELETE CASCADE,
  CONSTRAINT `answers_true_false_question_id_foreign` FOREIGN KEY (`true_false_question_id`) REFERENCES `true_false_questions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,7,3,'Optio ratione unde illo voluptatem deserunt voluptatem omnis. Quos pariatur voluptas esse. Soluta atque iusto sunt aut. Fugiat cumque odit adipisci maiores deserunt quaerat.','2024-06-22 17:20:28','2024-06-22 17:20:28'),(2,1,10,'Qui reprehenderit magnam blanditiis ipsa. Animi omnis suscipit sed nihil. Perspiciatis maxime rerum repellendus corrupti temporibus. Dolorum reiciendis quas ab facilis pariatur totam aut.','2024-06-22 17:20:28','2024-06-22 17:20:28'),(3,2,3,'Labore et nam error autem tempora odit. Deleniti voluptatem sed neque omnis atque sint minima. Mollitia ex aut at similique.','2024-06-22 17:20:28','2024-06-22 17:20:28'),(4,9,3,'Nihil debitis officiis amet sapiente ut fuga. In enim perferendis qui. Molestias qui soluta voluptas error.','2024-06-22 17:20:28','2024-06-22 17:20:28'),(5,1,7,'Sapiente praesentium laudantium sequi sequi est. Odio voluptatibus quia commodi deserunt error reiciendis animi. Et aspernatur quis aut mollitia tempora itaque accusantium at.','2024-06-22 17:20:28','2024-06-22 17:20:28'),(6,1,6,'Eos nihil adipisci iste voluptatem rerum. Perferendis odit doloribus dicta beatae. Omnis voluptatibus dolorem mollitia in sit reprehenderit quo.','2024-06-22 17:20:28','2024-06-22 17:20:28'),(7,9,3,'Est qui nemo ut ea aspernatur quis necessitatibus. Rerum asperiores sapiente aspernatur recusandae soluta ut error. Sit perferendis consequatur quo non.','2024-06-22 17:20:28','2024-06-22 17:20:28'),(8,7,10,'Est quo sit consequuntur odio. At vero aut quas. Id hic et libero voluptatem blanditiis sed atque. Velit blanditiis in ut enim est recusandae consequatur.','2024-06-22 17:20:28','2024-06-22 17:20:28'),(9,4,5,'Et dicta quo qui voluptate doloribus odit. Sed quae corporis quod est distinctio. Architecto et quis magni temporibus iure tempora.','2024-06-22 17:20:28','2024-06-22 17:20:28'),(10,5,3,'Omnis amet aut et explicabo. Voluptatibus voluptate deserunt et consequatur et molestias doloremque. Enim eveniet omnis temporibus.','2024-06-22 17:20:28','2024-06-22 17:20:28');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assessment_student`
--

DROP TABLE IF EXISTS `assessment_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessment_student` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` bigint(20) unsigned NOT NULL,
  `assessment_id` bigint(20) unsigned NOT NULL,
  `solve` text DEFAULT NULL,
  `mark` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `assessment_student_student_id_foreign` (`student_id`),
  KEY `assessment_student_assessment_id_foreign` (`assessment_id`),
  CONSTRAINT `assessment_student_assessment_id_foreign` FOREIGN KEY (`assessment_id`) REFERENCES `assessments` (`id`) ON DELETE CASCADE,
  CONSTRAINT `assessment_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessment_student`
--

LOCK TABLES `assessment_student` WRITE;
/*!40000 ALTER TABLE `assessment_student` DISABLE KEYS */;
/*!40000 ALTER TABLE `assessment_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assessments`
--

DROP TABLE IF EXISTS `assessments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT 'assessment',
  `category_id` bigint(20) unsigned NOT NULL,
  `teacher_id` bigint(20) unsigned NOT NULL,
  `problem_id` bigint(20) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `assessments_category_id_foreign` (`category_id`),
  KEY `assessments_teacher_id_foreign` (`teacher_id`),
  KEY `assessments_problem_id_foreign` (`problem_id`),
  CONSTRAINT `assessments_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `assessments_problem_id_foreign` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`) ON DELETE CASCADE,
  CONSTRAINT `assessments_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessments`
--

LOCK TABLES `assessments` WRITE;
/*!40000 ALTER TABLE `assessments` DISABLE KEYS */;
INSERT INTO `assessments` VALUES (1,'assessment',1,10,1,0,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(2,'assessment',5,8,6,0,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(3,'assessment',7,9,1,0,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(4,'assessment',2,5,4,0,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(5,'assessment',3,8,4,0,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(6,'assessment',1,2,9,0,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(7,'assessment',3,7,4,0,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(8,'assessment',9,2,4,0,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(9,'assessment',8,4,4,0,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(10,'assessment',1,6,7,0,'2024-06-22 17:20:28','2024-06-22 17:20:28');
/*!40000 ALTER TABLE `assessments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `number_of_lessons` int(11) NOT NULL DEFAULT 0,
  `number_of_ratings` int(11) NOT NULL DEFAULT 0,
  `mark_of_commings` double(8,2) NOT NULL DEFAULT 5.00,
  `mark_of_ratings` double(8,2) NOT NULL DEFAULT 10.00,
  `teacher_id` bigint(20) unsigned DEFAULT NULL,
  `subject_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_teacher_id_foreign` (`teacher_id`),
  KEY `categories_subject_id_foreign` (`subject_id`),
  CONSTRAINT `categories_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `categories_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'id_6',6,33,6.64,3.66,3,1,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(2,'et_4',10,5,6.94,2.62,5,4,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(3,'in_5',6,24,7.09,5.42,8,5,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(4,'et_4',12,24,0.88,7.34,5,1,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(5,'eum_2',15,39,9.05,0.65,2,4,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(6,'molestias_7',14,38,8.64,2.56,9,3,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(7,'debitis_2',8,37,3.90,3.48,8,2,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(8,'deleniti_1',16,2,2.36,3.74,4,5,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(9,'odio_3',12,80,3.53,2.61,9,3,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(10,'ratione_9',15,10,9.83,3.09,5,5,'2024-06-22 17:20:28','2024-06-22 17:20:28');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_student`
--

DROP TABLE IF EXISTS `category_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_student` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `student_id` bigint(20) unsigned NOT NULL,
  `mark` int(11) DEFAULT NULL,
  `attendance_marks` double(8,2) DEFAULT NULL,
  `assessment_marks` double(8,2) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT 0,
  `number_of_assessment` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_student_category_id_foreign` (`category_id`),
  KEY `category_student_student_id_foreign` (`student_id`),
  CONSTRAINT `category_student_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `category_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_student`
--

LOCK TABLES `category_student` WRITE;
/*!40000 ALTER TABLE `category_student` DISABLE KEYS */;
INSERT INTO `category_student` VALUES (1,8,2,9,5.50,7.20,0,4,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(2,3,5,7,8.50,0.99,0,1,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(3,4,10,2,9.80,3.79,0,1,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(4,7,10,3,5.41,9.39,0,1,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(5,10,5,9,9.00,9.75,0,1,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(6,2,8,8,4.91,4.61,0,3,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(7,4,7,9,0.63,6.13,0,1,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(8,9,4,6,4.08,8.55,0,2,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(9,8,5,5,6.07,7.38,0,2,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(10,4,10,7,3.40,6.77,0,4,'2024-06-22 17:20:28','2024-06-22 17:20:28');
/*!40000 ALTER TABLE `category_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `change_category_requests`
--

DROP TABLE IF EXISTS `change_category_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `change_category_requests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `new_category` int(11) NOT NULL,
  `old_category` int(11) NOT NULL,
  `student_id` bigint(20) unsigned NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `change_category_requests_student_id_foreign` (`student_id`),
  CONSTRAINT `change_category_requests_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `change_category_requests`
--

LOCK TABLES `change_category_requests` WRITE;
/*!40000 ALTER TABLE `change_category_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `change_category_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_problem`
--

DROP TABLE IF EXISTS `contest_problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contest_problem` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `contest_id` bigint(20) unsigned NOT NULL,
  `problem_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contest_problem_contest_id_foreign` (`contest_id`),
  KEY `contest_problem_problem_id_foreign` (`problem_id`),
  CONSTRAINT `contest_problem_contest_id_foreign` FOREIGN KEY (`contest_id`) REFERENCES `contests` (`id`) ON DELETE CASCADE,
  CONSTRAINT `contest_problem_problem_id_foreign` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_problem`
--

LOCK TABLES `contest_problem` WRITE;
/*!40000 ALTER TABLE `contest_problem` DISABLE KEYS */;
INSERT INTO `contest_problem` VALUES (1,1,5,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(2,3,4,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(3,4,10,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(4,1,10,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(5,5,4,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(6,6,7,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(7,1,7,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(8,10,9,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(9,9,7,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(10,2,8,'2024-06-22 17:20:28','2024-06-22 17:20:28');
/*!40000 ALTER TABLE `contest_problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_solves`
--

DROP TABLE IF EXISTS `contest_solves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contest_solves` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `contest_student_id` bigint(20) unsigned NOT NULL,
  `problem_id` bigint(20) unsigned NOT NULL,
  `solve` text NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contest_solves_contest_student_id_foreign` (`contest_student_id`),
  KEY `contest_solves_problem_id_foreign` (`problem_id`),
  CONSTRAINT `contest_solves_contest_student_id_foreign` FOREIGN KEY (`contest_student_id`) REFERENCES `contest_student` (`id`) ON DELETE CASCADE,
  CONSTRAINT `contest_solves_problem_id_foreign` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_solves`
--

LOCK TABLES `contest_solves` WRITE;
/*!40000 ALTER TABLE `contest_solves` DISABLE KEYS */;
/*!40000 ALTER TABLE `contest_solves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_student`
--

DROP TABLE IF EXISTS `contest_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contest_student` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `contest_id` bigint(20) unsigned NOT NULL,
  `student_id` bigint(20) unsigned NOT NULL,
  `rank` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contest_student_contest_id_foreign` (`contest_id`),
  KEY `contest_student_student_id_foreign` (`student_id`),
  CONSTRAINT `contest_student_contest_id_foreign` FOREIGN KEY (`contest_id`) REFERENCES `contests` (`id`) ON DELETE CASCADE,
  CONSTRAINT `contest_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_student`
--

LOCK TABLES `contest_student` WRITE;
/*!40000 ALTER TABLE `contest_student` DISABLE KEYS */;
INSERT INTO `contest_student` VALUES (1,2,3,0,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(2,6,9,0,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(3,7,6,0,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(4,8,9,0,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(5,4,4,0,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(6,3,6,0,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(7,5,3,0,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(8,4,7,0,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(9,8,1,0,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(10,6,8,0,'2024-06-22 17:20:28','2024-06-22 17:20:28');
/*!40000 ALTER TABLE `contest_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contests`
--

DROP TABLE IF EXISTS `contests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL DEFAULT 2,
  `description` text DEFAULT NULL,
  `start_at` date NOT NULL DEFAULT '2024-06-01',
  `contest_time` time NOT NULL DEFAULT '09:00:00',
  `scoure` int(11) NOT NULL DEFAULT 0,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contests`
--

LOCK TABLES `contests` WRITE;
/*!40000 ALTER TABLE `contests` DISABLE KEYS */;
INSERT INTO `contests` VALUES (1,'dolorem',2,NULL,'1973-06-23','09:00:00',0,NULL,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(2,'et',2,NULL,'1995-01-14','09:00:00',0,NULL,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(3,'labore',2,NULL,'1985-03-01','09:00:00',0,NULL,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(4,'odio',2,NULL,'2001-02-07','09:00:00',0,NULL,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(5,'magnam',2,NULL,'2019-02-19','09:00:00',0,NULL,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(6,'consequatur',2,NULL,'1994-01-26','09:00:00',0,NULL,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(7,'assumenda',2,NULL,'1995-11-11','09:00:00',0,NULL,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(8,'ipsam',2,NULL,'1993-04-26','09:00:00',0,NULL,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(9,'rem',2,NULL,'2019-11-03','09:00:00',0,NULL,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(10,'aperiam',2,NULL,'1990-11-15','09:00:00',0,NULL,'2024-06-22 17:20:28','2024-06-22 17:20:28');
/*!40000 ALTER TABLE `contests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_student`
--

DROP TABLE IF EXISTS `exam_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam_student` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` bigint(20) unsigned NOT NULL,
  `exam_id` bigint(20) unsigned NOT NULL,
  `mark` int(11) NOT NULL DEFAULT 0,
  `code1` varchar(255) DEFAULT NULL,
  `code2` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_student_student_id_foreign` (`student_id`),
  KEY `exam_student_exam_id_foreign` (`exam_id`),
  CONSTRAINT `exam_student_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exam_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_student`
--

LOCK TABLES `exam_student` WRITE;
/*!40000 ALTER TABLE `exam_student` DISABLE KEYS */;
INSERT INTO `exam_student` VALUES (1,6,4,0,'Nam occaecati magni ea voluptatem. Eaque qui rerum id dolores omnis. Quia sint facere voluptatem sunt facilis vitae voluptatem accusantium.','Asperiores debitis maiores assumenda repellat. Accusamus voluptatibus sit quam quia. Aspernatur impedit magni nisi voluptatem numquam consequatur.','2024-06-22 17:20:27','2024-06-22 17:20:27'),(2,2,9,0,'Accusamus non tempore accusantium voluptas recusandae. Sint eaque illo vel aut est quisquam esse voluptatem. Quidem earum ipsam inventore in minima unde. Dolorum hic aut consequatur magnam odio et.','Id vitae aut libero est. Quibusdam consequatur quasi similique qui.','2024-06-22 17:20:27','2024-06-22 17:20:27'),(3,9,10,0,'Quo eius voluptate vitae quia ab maxime facilis. Ex vel placeat repellendus et deserunt. Ut tempora dolorum et veritatis.','Labore eius dolor eos quis dolor tenetur. Eaque sit et quia exercitationem assumenda veritatis. Voluptatem in ratione eligendi exercitationem autem provident nam. Voluptas sed ut eveniet quasi.','2024-06-22 17:20:27','2024-06-22 17:20:27'),(4,8,8,0,'Repellendus magni sed ut quo quisquam. Et voluptatibus aut quis fuga aut. Omnis reprehenderit rem quibusdam aperiam sunt sunt.','In veritatis ut enim rerum est delectus. Autem unde et fuga consequatur. Quae quia earum esse numquam. Voluptas magnam ut sit natus aperiam ea.','2024-06-22 17:20:27','2024-06-22 17:20:27'),(5,5,9,0,'Non a et blanditiis ullam. Ducimus dolor sed qui fugiat dolorum expedita. Dolorem earum unde maxime et sunt dolorem nulla.','Rerum magnam natus in. Consequatur et tempore dolores eos sint possimus quis vero. Ut tenetur est perferendis autem consequatur necessitatibus doloribus.','2024-06-22 17:20:27','2024-06-22 17:20:27'),(6,5,4,0,'Quidem illum laborum perferendis quis doloribus qui autem. Omnis quam qui saepe sit totam et. Qui sint in suscipit eveniet eos quam qui. Dolorum quaerat consequuntur optio quisquam nihil quasi.','Non molestiae omnis molestias autem minima vitae non. Aut id ipsum ut eveniet consequatur inventore.','2024-06-22 17:20:27','2024-06-22 17:20:27'),(7,2,7,0,'Accusantium repellendus excepturi quo eum rem. Incidunt praesentium laboriosam fugit qui reprehenderit consequatur quisquam sit. Dolores magnam alias in.','Quo illum quae consequuntur. Dicta rem architecto sit aut sint quos corporis. Laborum fugiat commodi optio reprehenderit.','2024-06-22 17:20:27','2024-06-22 17:20:27'),(8,3,8,0,'Dolore et praesentium soluta quos voluptatem magnam est et. Quasi blanditiis natus sapiente quis quod omnis id eos. Animi consequuntur quasi incidunt. Laboriosam sapiente labore dicta id.','Quis est magni quia dolorum quis. Eum nostrum voluptas eaque facere pariatur sequi. Ipsum vero enim dolor laboriosam quos consequatur consequatur. Iste consectetur ullam libero saepe placeat.','2024-06-22 17:20:27','2024-06-22 17:20:27'),(9,7,1,0,'Architecto non laboriosam aliquid sed sunt officia ut. Quis nobis vel ut aut. Facilis ullam soluta accusamus perspiciatis ut ut qui. Nam veniam iure natus ratione voluptatibus omnis saepe ipsa.','Aut dignissimos qui aliquid eius ducimus voluptatum. Quia quod sit et totam. Quis mollitia dolor et quod quidem fugit. Distinctio corporis sapiente reiciendis et quos sed reiciendis corporis.','2024-06-22 17:20:27','2024-06-22 17:20:27'),(10,7,9,0,'Recusandae est eveniet dolore vel et. Enim ipsa qui doloremque non quod molestiae commodi. Nam doloremque aut eos qui sequi itaque et. Tempora est explicabo ex error deleniti molestiae nobis.','Eos iure omnis omnis minima aperiam asperiores aut. Quos omnis occaecati repudiandae commodi cupiditate illum. Tempora inventore fuga eaque ullam. Et eveniet sapiente et quia maiores sint.','2024-06-22 17:20:27','2024-06-22 17:20:27');
/*!40000 ALTER TABLE `exam_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exams` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `passwd` varchar(255) NOT NULL,
  `administrator_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `duration` int(11) NOT NULL DEFAULT 60,
  `subject_id` bigint(20) unsigned NOT NULL,
  `problem1_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exams_administrator_id_foreign` (`administrator_id`),
  KEY `exams_subject_id_foreign` (`subject_id`),
  KEY `exams_problem1_id_foreign` (`problem1_id`),
  CONSTRAINT `exams_administrator_id_foreign` FOREIGN KEY (`administrator_id`) REFERENCES `administrators` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exams_problem1_id_foreign` FOREIGN KEY (`problem1_id`) REFERENCES `problems` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exams_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
INSERT INTO `exams` VALUES (1,'_!\">|2~YnX:S5N_-M',5,'magni','1977-05-31 07:29:49',60,3,2,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(2,'>G4o|#q',8,'eaque','1984-06-03 06:15:32',60,4,4,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(3,'d%.q~F1BY',5,'et','1994-11-11 02:19:14',60,1,9,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(4,'%0xJ41mh/-jQ',10,'adipisci','1987-07-27 09:17:01',60,3,4,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(5,'H~Zx0i',8,'distinctio','2019-08-25 02:17:48',60,1,7,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(6,'-#:\"Z\\wD\'CZ(w\"0',2,'dolor','1989-10-21 08:40:20',60,2,5,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(7,'LdZa#nr@N2y<fSV',9,'dolor','2008-07-20 03:29:50',60,4,5,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(8,'r#7xOFqf{A]IOR,',3,'eveniet','2016-10-14 05:00:00',60,5,8,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(9,'7,:LaR@v_rl<t+<g',8,'cum','2023-01-22 21:15:41',60,2,1,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(10,'64>tn,T5?Fk?0ZtF{nQ4',1,'dolores','2010-04-15 17:39:50',60,5,8,'2024-06-22 17:20:27','2024-06-22 17:20:27');
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2024_03_13_092844_create_students_table',1),(6,'2024_03_13_092844_create_teachers_table',1),(7,'2024_03_13_092845_create_administrators_table',1),(8,'2024_03_13_092845_create_problems_table',1),(9,'2024_03_13_092845_create_subjects_table',1),(10,'2024_03_13_092845_create_tags_table',1),(11,'2024_03_13_092846_create_exams_table',1),(12,'2024_03_13_092846_create_problem_tag_table',1),(13,'2024_03_13_092846_create_solve_problem_table',1),(14,'2024_03_13_092847_create_exam_student_table',1),(15,'2024_03_13_092847_create_test_cases_table',1),(16,'2024_03_13_092847_create_true_false_questions_table',1),(17,'2024_03_13_092848_create_answers_table',1),(18,'2024_03_13_092848_create_contests_table',1),(19,'2024_03_13_092849_create_contest_problem_table',1),(20,'2024_03_13_092849_create_contest_student_table',1),(21,'2024_03_13_092850_create_categories_table',1),(22,'2024_03_13_092850_create_category_student_table',1),(23,'2024_03_19_100005_create_assessments_table',1),(24,'2024_04_01_113516_create_contest_solves_table',1),(25,'2024_04_02_100904_create_solve_cases_table',1),(26,'2024_04_03_141837_create_solved_problems_table',1),(27,'2024_04_21_101518_create_change_category_requests_table',1),(28,'2024_04_22_145356_create_student_subject_table',1),(29,'2024_04_28_123324_create_assessment_students_table',1),(30,'2024_08_01_095447_create_set_of_students_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem_tag`
--

DROP TABLE IF EXISTS `problem_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `problem_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `problem_id` bigint(20) unsigned NOT NULL,
  `tag_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `problem_tag_problem_id_foreign` (`problem_id`),
  KEY `problem_tag_tag_id_foreign` (`tag_id`),
  CONSTRAINT `problem_tag_problem_id_foreign` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`) ON DELETE CASCADE,
  CONSTRAINT `problem_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem_tag`
--

LOCK TABLES `problem_tag` WRITE;
/*!40000 ALTER TABLE `problem_tag` DISABLE KEYS */;
INSERT INTO `problem_tag` VALUES (1,9,4,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(2,6,9,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(3,9,4,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(4,3,7,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(5,5,7,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(6,6,4,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(7,8,1,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(8,2,7,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(9,5,10,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(10,6,4,'2024-06-22 17:20:27','2024-06-22 17:20:27');
/*!40000 ALTER TABLE `problem_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problems`
--

DROP TABLE IF EXISTS `problems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `problems` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `level` int(11) NOT NULL DEFAULT 800,
  `teacher_code_solve` text NOT NULL,
  `time_limit_ms` double(8,2) NOT NULL DEFAULT 0.00,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `diffculty` varchar(255) NOT NULL DEFAULT 'easy',
  `solutions` int(11) NOT NULL DEFAULT 0,
  `hint1` text DEFAULT NULL,
  `hint2` text DEFAULT NULL,
  `in_bank` tinyint(1) NOT NULL DEFAULT 1,
  `teacher_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `problems_teacher_id_foreign` (`teacher_id`),
  CONSTRAINT `problems_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problems`
--

LOCK TABLES `problems` WRITE;
/*!40000 ALTER TABLE `problems` DISABLE KEYS */;
INSERT INTO `problems` VALUES (1,'add tow number','Qui nihil sequi ex officiis ad. Voluptatum provident eveniet praesentium sit. Hic impedit et perferendis velit rem tenetur. Voluptatem aut omnis iusto fugiat velit iure.',0,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ; int y ;\n                    cin>>x >> y ;\n                    cout << x + y;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,4,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(2,'array sum','Corrupti qui nihil voluptatum porro incidunt nulla. Libero ea aut voluptates pariatur dolore et. Rerum ipsam quo quaerat est eum necessitatibus ullam. Totam saepe autem officia omnis aperiam eos non.',1,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int sum = 0 ;\n                    for (int i = 0 ; i< x ; i++){int k ; cin >> k ; sum+=k;}\n                    cout << sum ;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,1,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(3,'add tow number','Natus asperiores atque quibusdam et et. Voluptate deleniti minus illo soluta numquam repellendus sit. Error nam ut omnis et perferendis. Sed ea sed alias numquam qui eum voluptatem.',0,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ; int y ;\n                    cin>>x >> y ;\n                    cout << x + y;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,9,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(4,'add tow number','Nesciunt id corporis nihil. Aut provident tempora ad recusandae nisi est itaque. Autem impedit autem qui voluptatem temporibus ea delectus consequatur.',0,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ; int y ;\n                    cin>>x >> y ;\n                    cout << x + y;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,7,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(5,'array sum','Veritatis reprehenderit in voluptatem earum quo dolorem. Id est consectetur doloribus accusantium temporibus. Labore et velit possimus neque voluptate. Error voluptatem aut ut necessitatibus perspiciatis voluptatem.',1,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int sum = 0 ;\n                    for (int i = 0 ; i< x ; i++){int k ; cin >> k ; sum+=k;}\n                    cout << sum ;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,5,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(6,'max val','Maiores recusandae id commodi aut. Veritatis consequatur est eos accusantium voluptatem minima nulla. Et sint accusantium error saepe enim. Quos illo corrupti et labore deserunt. Voluptatem ipsam consequuntur eaque laboriosam consequuntur necessitatibus.',2,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int a[x] ;\n                    for (int i = 0 ; i< x ; i++){cin >> a[i]}\n                    max = a[0] ;\n                    for (int i = 0 ; i< x ; i++){\n                        if (a[i] > max ) max = a[i] ;\n                    }\n                    cout << max;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,3,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(7,'array sum','Vel vel aut omnis. Repellat maiores quia nisi et dolor.',1,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int sum = 0 ;\n                    for (int i = 0 ; i< x ; i++){int k ; cin >> k ; sum+=k;}\n                    cout << sum ;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,5,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(8,'array sum','Sed quibusdam delectus excepturi est consequatur tempora. Ut culpa illo et temporibus temporibus. Consectetur molestiae tempore nisi voluptatem facere sed ipsum. Temporibus animi quia et ad odit aliquam. Et enim blanditiis molestias vitae officiis quia.',1,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int sum = 0 ;\n                    for (int i = 0 ; i< x ; i++){int k ; cin >> k ; sum+=k;}\n                    cout << sum ;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,7,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(9,'add tow number','Itaque optio sint nesciunt quas et quia. Et beatae harum deserunt. Inventore placeat eveniet consequatur voluptatem. Saepe iure officia a magnam omnis voluptates aperiam.',0,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ; int y ;\n                    cin>>x >> y ;\n                    cout << x + y;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,1,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(10,'array sum','Atque minus necessitatibus et perspiciatis in. Nulla reprehenderit a sapiente veritatis magnam ea. Unde ducimus accusantium non deleniti omnis magni illum.',1,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int sum = 0 ;\n                    for (int i = 0 ; i< x ; i++){int k ; cin >> k ; sum+=k;}\n                    cout << sum ;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,4,'2024-06-22 17:20:27','2024-06-22 17:20:27');
/*!40000 ALTER TABLE `problems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `set_of_students`
--

DROP TABLE IF EXISTS `set_of_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `set_of_students` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `set_of_students`
--

LOCK TABLES `set_of_students` WRITE;
/*!40000 ALTER TABLE `set_of_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `set_of_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solve_cases`
--

DROP TABLE IF EXISTS `solve_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solve_cases` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `input` text NOT NULL,
  `output` text NOT NULL,
  `solve_problem_id` bigint(20) unsigned NOT NULL,
  `time` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `solve_cases_solve_problem_id_foreign` (`solve_problem_id`),
  CONSTRAINT `solve_cases_solve_problem_id_foreign` FOREIGN KEY (`solve_problem_id`) REFERENCES `solve_problem` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solve_cases`
--

LOCK TABLES `solve_cases` WRITE;
/*!40000 ALTER TABLE `solve_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `solve_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solve_problem`
--

DROP TABLE IF EXISTS `solve_problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solve_problem` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `problem_id` bigint(20) unsigned NOT NULL,
  `student_id` bigint(20) unsigned NOT NULL,
  `student_code` text NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `solve_problem_problem_id_foreign` (`problem_id`),
  KEY `solve_problem_student_id_foreign` (`student_id`),
  CONSTRAINT `solve_problem_problem_id_foreign` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`) ON DELETE CASCADE,
  CONSTRAINT `solve_problem_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solve_problem`
--

LOCK TABLES `solve_problem` WRITE;
/*!40000 ALTER TABLE `solve_problem` DISABLE KEYS */;
INSERT INTO `solve_problem` VALUES (1,8,2,'Consectetur aperiam vel asperiores sit praesentium eius et. Animi sunt quia et quam. Impedit ad sed necessitatibus voluptatibus voluptatem qui ex.',0,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(2,9,5,'Dolor quibusdam assumenda distinctio omnis autem dolores laborum. Ut molestiae quia unde asperiores autem. Aut ipsa atque dicta odio modi sit.',1,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(3,4,5,'Quas sequi vero sunt molestiae provident quibusdam nihil. Cupiditate officiis quos at quaerat voluptatem facilis voluptas vel. Ullam ea voluptatem hic labore non aspernatur et.',1,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(4,7,10,'Quo animi iusto tempora amet aut. Enim mollitia id cum maxime dolores sit. Numquam et sapiente sit id.',0,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(5,4,10,'Aliquid inventore libero laborum ut molestiae iste. Et perspiciatis occaecati veniam necessitatibus eum dolores sapiente.',0,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(6,5,7,'Doloremque nostrum ab iure eos. Magni ducimus quae suscipit id quibusdam excepturi laboriosam. Rerum ullam doloremque possimus. Animi est ut sequi est.',1,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(7,1,2,'Dolores error veniam dolorem rerum. Voluptatem eius nesciunt exercitationem tempora sequi. Enim nesciunt harum et ad molestiae possimus. Velit deleniti veniam qui natus sed sit.',1,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(8,4,9,'Explicabo voluptates nobis consequuntur quaerat voluptatem error quas. Libero omnis aut aliquid est provident. Sunt id commodi doloremque.',1,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(9,3,9,'Cum mollitia magnam provident. Laborum eos voluptatum accusantium repudiandae ipsa omnis repellat voluptates. Est maxime deleniti quia mollitia sit similique.',1,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(10,1,2,'Numquam delectus consequuntur ad sint consequuntur. Et non ut illo consequatur. Illum beatae quaerat ea aut. Quasi in in non.',1,'2024-06-22 17:20:27','2024-06-22 17:20:27');
/*!40000 ALTER TABLE `solve_problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solved_problems`
--

DROP TABLE IF EXISTS `solved_problems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solved_problems` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `problem` int(11) NOT NULL,
  `contest_student_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `solved_problems_contest_student_id_foreign` (`contest_student_id`),
  CONSTRAINT `solved_problems_contest_student_id_foreign` FOREIGN KEY (`contest_student_id`) REFERENCES `contest_student` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solved_problems`
--

LOCK TABLES `solved_problems` WRITE;
/*!40000 ALTER TABLE `solved_problems` DISABLE KEYS */;
/*!40000 ALTER TABLE `solved_problems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_subject`
--

DROP TABLE IF EXISTS `student_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_subject` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` bigint(20) unsigned NOT NULL,
  `subject_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_subject_student_id_foreign` (`student_id`),
  KEY `student_subject_subject_id_foreign` (`subject_id`),
  CONSTRAINT `student_subject_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_subject_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_subject`
--

LOCK TABLES `student_subject` WRITE;
/*!40000 ALTER TABLE `student_subject` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `hint_count` int(11) NOT NULL DEFAULT 2,
  `points` int(11) NOT NULL DEFAULT 0,
  `rate` int(11) NOT NULL DEFAULT 0,
  `date_of_birth` date DEFAULT NULL,
  `easy` int(11) NOT NULL DEFAULT 0,
  `medium` int(11) NOT NULL DEFAULT 0,
  `hard` int(11) NOT NULL DEFAULT 0,
  `university_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `students_user_id_foreign` (`user_id`),
  CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,3,'+1.531.640.5415',2,0,0,'2012-08-05',0,0,0,7926,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(2,4,'445-715-2942',2,0,0,'1988-11-26',0,0,0,98077,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(3,5,'207-638-1043',2,0,0,'2008-06-13',0,0,0,26421,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(4,6,'626-468-2036',2,0,0,'2004-08-29',0,0,0,57761,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(5,7,'1-704-994-4297',2,0,0,'2020-02-19',0,0,0,20884,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(6,8,'252.644.8465',2,0,0,'1970-06-15',0,0,0,24513,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(7,9,'313-792-4191',2,0,0,'2001-02-14',0,0,0,8653,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(8,10,'828-654-9449',2,0,0,'1984-12-27',0,0,0,2127,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(9,11,'(908) 863-4855',2,0,0,'2016-09-25',0,0,0,93012,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(10,12,'1-417-576-4753',2,0,0,'2010-03-16',0,0,0,32365,'2024-06-22 17:20:27','2024-06-22 17:20:27');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `exam_mark` int(11) NOT NULL DEFAULT 15,
  `total_mark` int(11) NOT NULL DEFAULT 30,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'aut',15,30,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(2,'et',15,30,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(3,'quod',15,30,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(4,'sit',15,30,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(5,'illum',15,30,'2024-06-22 17:20:27','2024-06-22 17:20:27');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'consequatur','2024-06-22 17:20:27','2024-06-22 17:20:27'),(2,'eos','2024-06-22 17:20:27','2024-06-22 17:20:27'),(3,'natus','2024-06-22 17:20:27','2024-06-22 17:20:27'),(4,'laboriosam','2024-06-22 17:20:27','2024-06-22 17:20:27'),(5,'perspiciatis','2024-06-22 17:20:27','2024-06-22 17:20:27'),(6,'dolores','2024-06-22 17:20:27','2024-06-22 17:20:27'),(7,'soluta','2024-06-22 17:20:27','2024-06-22 17:20:27'),(8,'perferendis','2024-06-22 17:20:27','2024-06-22 17:20:27'),(9,'itaque','2024-06-22 17:20:27','2024-06-22 17:20:27'),(10,'facilis','2024-06-22 17:20:27','2024-06-22 17:20:27');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teachers_user_id_foreign` (`user_id`),
  CONSTRAINT `teachers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,13,'1-717-388-8488','1973-08-27','2024-06-22 17:20:27','2024-06-22 17:20:27'),(2,14,'+1.628.985.2941','2012-11-03','2024-06-22 17:20:27','2024-06-22 17:20:27'),(3,15,'+1-720-668-6809','2024-06-11','2024-06-22 17:20:27','2024-06-22 17:20:27'),(4,16,'+1 (303) 309-4804','1979-12-21','2024-06-22 17:20:27','2024-06-22 17:20:27'),(5,17,'+14328429181','2017-03-25','2024-06-22 17:20:27','2024-06-22 17:20:27'),(6,18,'770-712-5779','1978-09-18','2024-06-22 17:20:27','2024-06-22 17:20:27'),(7,19,'(470) 685-5184','2004-05-06','2024-06-22 17:20:27','2024-06-22 17:20:27'),(8,20,'(281) 378-8928','2011-04-02','2024-06-22 17:20:27','2024-06-22 17:20:27'),(9,21,'848-715-7062','2011-05-25','2024-06-22 17:20:27','2024-06-22 17:20:27'),(10,22,'262.696.3754','1970-11-16','2024-06-22 17:20:27','2024-06-22 17:20:27');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_cases`
--

DROP TABLE IF EXISTS `test_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_cases` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `input` varchar(255) NOT NULL,
  `output` varchar(255) DEFAULT NULL,
  `problem_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `test_cases_problem_id_foreign` (`problem_id`),
  CONSTRAINT `test_cases_problem_id_foreign` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_cases`
--

LOCK TABLES `test_cases` WRITE;
/*!40000 ALTER TABLE `test_cases` DISABLE KEYS */;
INSERT INTO `test_cases` VALUES (1,'786',NULL,10,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(2,'906',NULL,9,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(3,'553',NULL,8,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(4,'284',NULL,3,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(5,'185',NULL,4,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(6,'672',NULL,4,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(7,'581',NULL,2,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(8,'943',NULL,9,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(9,'980',NULL,3,'2024-06-22 17:20:27','2024-06-22 17:20:27'),(10,'739',NULL,4,'2024-06-22 17:20:27','2024-06-22 17:20:27');
/*!40000 ALTER TABLE `test_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `true_false_questions`
--

DROP TABLE IF EXISTS `true_false_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `true_false_questions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `exam_id` bigint(20) unsigned NOT NULL,
  `question_text` text NOT NULL,
  `choise1` varchar(255) NOT NULL,
  `choise2` varchar(255) NOT NULL,
  `choise3` varchar(255) NOT NULL,
  `choise4` varchar(255) NOT NULL,
  `correct` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `true_false_questions_exam_id_foreign` (`exam_id`),
  CONSTRAINT `true_false_questions_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `true_false_questions`
--

LOCK TABLES `true_false_questions` WRITE;
/*!40000 ALTER TABLE `true_false_questions` DISABLE KEYS */;
INSERT INTO `true_false_questions` VALUES (1,9,'Sed quae commodi est eum maxime. Omnis ut quis porro nemo. Similique ut aperiam deserunt eum suscipit minus eos. Quod neque reiciendis unde dolorem tenetur reprehenderit ut.','voluptates','unde','illo','vel',4,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(2,3,'Debitis unde tempore ipsam officia aliquam voluptatem. Omnis et dolorum tempore numquam. Qui qui fugit dolorem ipsum quae repudiandae rem velit. Rem repudiandae mollitia sed fugit repellat quis.','molestiae','soluta','aspernatur','placeat',3,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(3,6,'Quia et blanditiis voluptas qui laboriosam. Maiores accusantium perspiciatis qui et mollitia. Et impedit est vero soluta. Laboriosam est aut temporibus qui.','aperiam','voluptatem','ipsa','provident',2,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(4,1,'Expedita quia tempore velit voluptatem ut soluta consequatur. Reprehenderit reiciendis blanditiis reiciendis voluptatem rerum officiis adipisci. Fugiat aperiam itaque debitis ipsam velit.','error','incidunt','omnis','porro',3,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(5,4,'Aut fuga possimus dolorem maxime eum ut explicabo. Ipsum sit voluptas ipsam ad vel ullam facere. Quisquam dolores est quia.','vel','mollitia','debitis','quibusdam',2,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(6,8,'Blanditiis ut amet dolor est blanditiis. Quidem natus cumque reiciendis ducimus sapiente beatae beatae.','laboriosam','et','voluptas','quod',1,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(7,5,'Aut numquam qui sequi est. Nostrum cumque omnis porro ut deleniti. Pariatur qui vel ipsam. Itaque quia ut aliquam aut iure.','blanditiis','officia','repellendus','vel',1,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(8,10,'Qui quo magnam aperiam consequatur. Quod sit molestias et molestias. Est libero deserunt inventore sed perferendis. Nostrum sed et explicabo maiores doloremque quidem est.','modi','accusantium','sit','molestiae',2,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(9,4,'Maiores laudantium est minima cum facere nam voluptas possimus. Iure iusto dignissimos ut eos et. Aut laboriosam et reiciendis. Eveniet sed odio fugit unde et ipsam necessitatibus.','ea','necessitatibus','dolor','qui',2,'2024-06-22 17:20:28','2024-06-22 17:20:28'),(10,1,'Dolores maiores eligendi facilis quasi non. Atque similique maiores perspiciatis velit. Consectetur expedita natus rerum aperiam laudantium. Id voluptate est veniam tempora libero.','ipsum','debitis','qui','odit',3,'2024-06-22 17:20:28','2024-06-22 17:20:28');
/*!40000 ALTER TABLE `true_false_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Ammar Jokhadar','DR.ammarJokhadar@gmail.com','2024-06-22 17:20:26','$2y$12$KL5sV.AIEjP5rtNAzBNXaOzZEHYcZUeBCY9CXLTh2IDNnFq2gUO4W','n0Nb9fEB2j','adminstrator','2024-06-22 17:20:26','2024-06-22 17:20:26'),(2,'Dr. Madaline Murphy PhD','adrian.pagac@example.org','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','9LDdYHkjvI','teacher','2024-06-22 17:20:27','2024-06-22 17:20:27'),(3,'Dr. Agnes Trantow','una75@example.net','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','hpLaAspnBo','student','2024-06-22 17:20:27','2024-06-22 17:20:27'),(4,'Lionel Heidenreich','oral09@example.org','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','OQSVoghZIZ','student','2024-06-22 17:20:27','2024-06-22 17:20:27'),(5,'Cristobal O\'Kon IV','metz.ivy@example.org','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','iJHWLTEPiV','student','2024-06-22 17:20:27','2024-06-22 17:20:27'),(6,'Rafaela Aufderhar IV','rory.koepp@example.org','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','PHqGvttCrd','student','2024-06-22 17:20:27','2024-06-22 17:20:27'),(7,'Prof. Krystina McClure Sr.','wyman.theresa@example.net','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','ZvOEeMEZQT','student','2024-06-22 17:20:27','2024-06-22 17:20:27'),(8,'Mr. Wilhelm Marks PhD','kade.maggio@example.net','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','Y1YiB7kMvc','student','2024-06-22 17:20:27','2024-06-22 17:20:27'),(9,'Godfrey Hahn V','ludie74@example.net','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','uTVAF5owjm','student','2024-06-22 17:20:27','2024-06-22 17:20:27'),(10,'Barrett Stokes','isom16@example.org','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','INdIEFAmSg','student','2024-06-22 17:20:27','2024-06-22 17:20:27'),(11,'Ethelyn Moen','arvid27@example.com','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','uGuutH5KF1','student','2024-06-22 17:20:27','2024-06-22 17:20:27'),(12,'Marco Moen','kara58@example.com','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','ASbugpkhfE','student','2024-06-22 17:20:27','2024-06-22 17:20:27'),(13,'Dean Effertz','dalton05@example.org','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','ANMAmsqfM4','teacher','2024-06-22 17:20:27','2024-06-22 17:20:27'),(14,'Albertha Berge','fredrick.tremblay@example.org','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','SoYAFqcHBB','teacher','2024-06-22 17:20:27','2024-06-22 17:20:27'),(15,'Floyd McCullough','breichel@example.org','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','nOgdr7w8Uh','teacher','2024-06-22 17:20:27','2024-06-22 17:20:27'),(16,'Clarabelle Kshlerin','espinka@example.net','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','PAOOivrFHY','teacher','2024-06-22 17:20:27','2024-06-22 17:20:27'),(17,'Dr. Jadon Schulist','schuppe.julian@example.com','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','Z0eX2mTT5U','teacher','2024-06-22 17:20:27','2024-06-22 17:20:27'),(18,'Rosina Schaefer','dcorkery@example.org','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','0Yq0ApTWrr','teacher','2024-06-22 17:20:27','2024-06-22 17:20:27'),(19,'Sean Stamm IV','johns.ashton@example.com','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','wXxgK3KImw','teacher','2024-06-22 17:20:27','2024-06-22 17:20:27'),(20,'Mr. Curtis Stanton MD','adams.arne@example.org','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','d59zkBnly3','teacher','2024-06-22 17:20:27','2024-06-22 17:20:27'),(21,'Richard Gaylord','rogahn.madge@example.net','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','5ZoXIMlcV5','teacher','2024-06-22 17:20:27','2024-06-22 17:20:27'),(22,'Terrill Keebler MD','femmerich@example.net','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','dgUYr7GCvb','teacher','2024-06-22 17:20:27','2024-06-22 17:20:27'),(23,'Abel Farrell','wisoky.meagan@example.com','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','vuNtoIPwxv','adminstrator','2024-06-22 17:20:27','2024-06-22 17:20:27'),(24,'Annabell Wuckert','jennings.bashirian@example.org','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','MLLrClEp66','adminstrator','2024-06-22 17:20:27','2024-06-22 17:20:27'),(25,'Edyth Hoppe','lizeth.heidenreich@example.com','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','TB2ojiHR3H','adminstrator','2024-06-22 17:20:27','2024-06-22 17:20:27'),(26,'Prof. Jamaal Zieme MD','zweber@example.net','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','EdSfmUYZBa','adminstrator','2024-06-22 17:20:27','2024-06-22 17:20:27'),(27,'Mrs. Belle Crist V','stewart96@example.org','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','FPEXdEFvhP','adminstrator','2024-06-22 17:20:27','2024-06-22 17:20:27'),(28,'Miss Willa Kulas I','yundt.anastasia@example.com','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','bkUStBkvsc','adminstrator','2024-06-22 17:20:27','2024-06-22 17:20:27'),(29,'Prof. Natalia Macejkovic','hardy57@example.net','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','bqK5mv5wV5','adminstrator','2024-06-22 17:20:27','2024-06-22 17:20:27'),(30,'Eladio Swaniawski','omacejkovic@example.com','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','7D7Jnt7w6i','adminstrator','2024-06-22 17:20:27','2024-06-22 17:20:27'),(31,'Kiara Kilback','shamill@example.org','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','EQ4GqObe2x','adminstrator','2024-06-22 17:20:27','2024-06-22 17:20:27'),(32,'Berry Smith','tiana.bayer@example.com','2024-06-22 17:20:27','$2y$12$6VJArW3OlU1Wa21HmDa0S.FoB5j7FfwboOvbmGs2mA2aoiHSp9Nxq','TuNl1zLcKL','adminstrator','2024-06-22 17:20:27','2024-06-22 17:20:27');
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

-- Dump completed on 2024-06-22 20:21:05
