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
INSERT INTO `administrators` VALUES (1,23,'640-818-7638','1995-11-08','2024-06-22 17:24:38','2024-06-22 17:24:38'),(2,24,'1-717-210-7114','1977-04-09','2024-06-22 17:24:38','2024-06-22 17:24:38'),(3,25,'+1 (520) 915-0601','1995-09-26','2024-06-22 17:24:38','2024-06-22 17:24:38'),(4,26,'1-857-523-5602','1999-07-21','2024-06-22 17:24:38','2024-06-22 17:24:38'),(5,27,'848-238-5936','2000-04-01','2024-06-22 17:24:38','2024-06-22 17:24:38'),(6,28,'(845) 917-8087','1988-05-13','2024-06-22 17:24:38','2024-06-22 17:24:38'),(7,29,'+1-573-401-0121','1984-03-23','2024-06-22 17:24:38','2024-06-22 17:24:38'),(8,30,'(954) 233-6213','2000-12-19','2024-06-22 17:24:38','2024-06-22 17:24:38'),(9,31,'779.357.2125','2011-12-27','2024-06-22 17:24:38','2024-06-22 17:24:38'),(10,32,'+1-360-257-2058','2017-12-23','2024-06-22 17:24:38','2024-06-22 17:24:38');
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
INSERT INTO `answers` VALUES (1,9,5,'Unde sit et aperiam vitae omnis maxime. Sed doloribus ipsam saepe.','2024-06-22 17:24:39','2024-06-22 17:24:39'),(2,3,8,'Ut sed sed in fugit non autem. Nam tempore ut cupiditate doloremque sint consequatur reiciendis architecto. Est in reiciendis at. Rerum adipisci et nihil neque accusantium.','2024-06-22 17:24:39','2024-06-22 17:24:39'),(3,10,7,'Ullam numquam dolorem optio et. Facere illum enim dolorem et. Dolorem pariatur ex mollitia.','2024-06-22 17:24:39','2024-06-22 17:24:39'),(4,6,3,'Qui dignissimos nisi et aliquid nisi id. Fuga blanditiis minus rem quia distinctio. Et reiciendis a dolore minus necessitatibus exercitationem.','2024-06-22 17:24:39','2024-06-22 17:24:39'),(5,2,5,'Quia earum qui fugit laboriosam voluptatem nesciunt. Hic consequuntur rerum iusto commodi sequi corrupti. Corrupti quis quas quia consequatur quia temporibus ipsum quos.','2024-06-22 17:24:39','2024-06-22 17:24:39'),(6,10,3,'Eos ut est cum repellat velit vel. Consequuntur voluptatem hic vero ducimus minima. Corporis aliquam corrupti autem nobis placeat accusantium at. Fugiat qui iste nostrum optio consequuntur culpa.','2024-06-22 17:24:39','2024-06-22 17:24:39'),(7,9,7,'Ut praesentium rerum ut aut soluta et. Et est voluptatem aut deserunt eum maxime quae repellat.','2024-06-22 17:24:39','2024-06-22 17:24:39'),(8,10,6,'Eum et saepe doloribus. Quia eos dolor earum provident quo dolores harum. Saepe et mollitia qui quibusdam fuga repudiandae.','2024-06-22 17:24:39','2024-06-22 17:24:39'),(9,6,4,'Vel qui nulla et consequatur officia. Non perspiciatis ut accusantium quisquam voluptatum nemo. Iure magnam optio voluptatem et. Nihil laudantium delectus eveniet ut.','2024-06-22 17:24:39','2024-06-22 17:24:39'),(10,10,10,'Est consequatur sapiente vel illo aut. Perspiciatis sint eligendi nihil voluptatem maiores. Est placeat sunt qui amet quisquam eligendi nesciunt.','2024-06-22 17:24:39','2024-06-22 17:24:39');
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
INSERT INTO `assessments` VALUES (1,'assessment',4,4,5,0,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(2,'assessment',3,9,2,0,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(3,'assessment',2,2,5,0,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(4,'assessment',3,2,9,0,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(5,'assessment',7,4,6,0,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(6,'assessment',10,1,3,0,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(7,'assessment',10,1,9,0,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(8,'assessment',10,8,10,0,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(9,'assessment',2,9,6,0,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(10,'assessment',4,5,6,0,'2024-06-22 17:24:39','2024-06-22 17:24:39');
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
INSERT INTO `categories` VALUES (1,'consequatur_5',3,83,5.59,3.94,6,4,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(2,'qui_3',16,96,0.48,0.57,9,1,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(3,'ab_8',10,94,6.26,0.22,2,1,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(4,'distinctio_4',2,41,8.80,3.69,10,4,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(5,'dolor_7',16,94,7.67,4.24,7,3,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(6,'et_6',10,64,8.60,8.68,7,2,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(7,'enim_10',13,4,4.31,6.41,10,1,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(8,'accusantium_1',9,56,0.74,0.46,10,4,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(9,'blanditiis_8',5,95,3.81,6.27,8,5,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(10,'eligendi_1',7,29,0.87,9.28,4,3,'2024-06-22 17:24:39','2024-06-22 17:24:39');
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
INSERT INTO `category_student` VALUES (1,7,1,4,9.90,5.97,0,1,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(2,9,7,7,5.99,0.33,0,5,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(3,3,4,1,1.78,8.04,0,4,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(4,7,7,5,1.47,2.18,0,1,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(5,2,6,1,2.37,7.53,0,4,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(6,4,2,10,2.57,7.30,0,3,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(7,2,3,8,1.49,9.45,0,1,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(8,3,2,2,2.50,6.05,0,3,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(9,6,9,5,8.95,9.90,0,4,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(10,2,1,6,7.60,9.42,0,2,'2024-06-22 17:24:39','2024-06-22 17:24:39');
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
INSERT INTO `contest_problem` VALUES (1,5,5,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(2,2,8,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(3,7,2,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(4,7,1,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(5,8,1,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(6,7,9,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(7,6,3,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(8,3,5,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(9,4,9,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(10,2,8,'2024-06-22 17:24:39','2024-06-22 17:24:39');
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
INSERT INTO `contest_student` VALUES (1,7,2,0,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(2,4,5,0,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(3,3,7,0,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(4,4,5,0,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(5,5,2,0,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(6,7,6,0,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(7,4,6,0,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(8,1,1,0,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(9,1,4,0,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(10,7,10,0,'2024-06-22 17:24:39','2024-06-22 17:24:39');
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
INSERT INTO `contests` VALUES (1,'ratione',2,NULL,'2023-12-14','09:00:00',0,NULL,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(2,'illo',2,NULL,'1990-03-01','09:00:00',0,NULL,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(3,'quaerat',2,NULL,'1996-02-23','09:00:00',0,NULL,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(4,'rerum',2,NULL,'1977-10-10','09:00:00',0,NULL,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(5,'nihil',2,NULL,'1990-03-18','09:00:00',0,NULL,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(6,'eligendi',2,NULL,'2006-10-27','09:00:00',0,NULL,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(7,'dolorem',2,NULL,'1984-12-27','09:00:00',0,NULL,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(8,'quisquam',2,NULL,'2013-01-29','09:00:00',0,NULL,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(9,'minus',2,NULL,'2018-07-25','09:00:00',0,NULL,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(10,'nihil',2,NULL,'2009-08-07','09:00:00',0,NULL,'2024-06-22 17:24:39','2024-06-22 17:24:39');
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
INSERT INTO `exam_student` VALUES (1,3,3,0,'Et aliquam tempore veniam qui ducimus. Et aspernatur atque quia quas ea aliquid cum. Aut voluptate et aperiam.','Autem ipsam dolores dolorem sunt iusto beatae doloremque. Officiis corrupti omnis sit vero. Voluptatem non corrupti praesentium ex consequuntur ut odit. Et labore et est iusto.','2024-06-22 17:24:39','2024-06-22 17:24:39'),(2,6,8,0,'Quasi sequi facere totam exercitationem commodi. Excepturi officiis magnam facere. Distinctio repellat dolores qui illum sed debitis.','Totam possimus reiciendis consectetur quo praesentium ab cupiditate. Molestias quo similique corrupti ex dicta.','2024-06-22 17:24:39','2024-06-22 17:24:39'),(3,6,8,0,'Occaecati cum expedita molestiae nesciunt adipisci iste et autem. Iusto iste qui laborum. Praesentium ducimus sit nesciunt molestias sed. Vitae earum et et explicabo consequatur sint corporis.','Quia corporis aspernatur atque et minus odit. Nobis accusantium esse vel dolores. Laborum in non eos blanditiis numquam.','2024-06-22 17:24:39','2024-06-22 17:24:39'),(4,7,8,0,'Quis repellendus deleniti dignissimos dolores cumque similique omnis optio. Nulla non neque quia consequuntur voluptatem. Pariatur voluptas doloribus officia dolorem omnis aut est magni.','Laudantium omnis perspiciatis aliquid. Necessitatibus accusamus vel commodi ea sed architecto nobis. Qui laborum nam in ipsam qui. Voluptatum nemo omnis asperiores deleniti assumenda quo eveniet.','2024-06-22 17:24:39','2024-06-22 17:24:39'),(5,6,1,0,'Qui et est qui nam nihil molestiae. Soluta enim ab distinctio ut ipsam quod magni qui. Doloribus sed illum labore.','Nisi ut reprehenderit fugit aut quis. Iusto delectus qui iste id id fugiat accusantium. Totam repellendus dolor ipsam ea.','2024-06-22 17:24:39','2024-06-22 17:24:39'),(6,10,6,0,'Sint est culpa qui eum provident. Aspernatur velit error nam delectus qui inventore. Aut sit fugiat aspernatur est eum.','Dolore deserunt est quas ipsa aperiam. Cumque natus vel sed molestiae quas. Voluptatem incidunt at ut. Eos eum voluptatum quidem quia dolores porro et debitis. Excepturi architecto nobis fugit.','2024-06-22 17:24:39','2024-06-22 17:24:39'),(7,9,6,0,'Soluta tempora incidunt dolores tenetur tempora minus voluptatum. In repellendus mollitia dolores accusantium alias. Molestiae perferendis quia ab aliquid. Eius assumenda dolorum modi qui.','Eum sed porro optio sed blanditiis nam veniam. Cupiditate in accusantium omnis aut sed earum animi repellendus. Tempore autem vel sequi. Illum quidem tenetur nulla quos.','2024-06-22 17:24:39','2024-06-22 17:24:39'),(8,4,5,0,'Reiciendis et dolores optio non omnis consequatur non. Temporibus quis repellat saepe quis provident rerum sint. Nulla possimus dolor placeat dolorem.','Accusamus quo qui nobis nemo eius aspernatur quae. Eaque sed sed possimus. Exercitationem quasi nihil alias sed omnis atque consequatur. Atque sit ipsam consequatur in sapiente suscipit alias.','2024-06-22 17:24:39','2024-06-22 17:24:39'),(9,4,8,0,'Fugit voluptatem non quibusdam adipisci voluptatibus et consequatur. Reprehenderit dignissimos hic placeat eligendi tempore assumenda aut. Omnis sequi illo assumenda eum ea.','Voluptatem maiores voluptatem facere possimus odit. Ducimus odit omnis voluptates modi laboriosam qui ducimus sit. Voluptatem beatae eligendi magni culpa. Nihil dolores autem consequatur.','2024-06-22 17:24:39','2024-06-22 17:24:39'),(10,2,2,0,'Eum velit labore eum alias. Placeat sed aut voluptatum temporibus similique rerum. Sed quos rerum aspernatur omnis id excepturi. Sed quasi possimus dolor facere.','Minus sed sapiente nobis magnam voluptatem. Atque est voluptatem labore consequatur illum. Unde sint quia sed ut est.','2024-06-22 17:24:39','2024-06-22 17:24:39');
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
INSERT INTO `exams` VALUES (1,'X/Kur|)B9rW]rb:',6,'et','1971-05-16 03:35:09',60,5,1,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(2,'YnWsa7V',3,'ut','1983-02-09 00:44:21',60,2,1,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(3,'-,}\"Zf',4,'non','2018-04-21 12:46:18',60,5,10,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(4,'4iP,PHcB3yo3rUkY9',8,'vel','2023-02-03 03:04:14',60,5,4,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(5,'EU10xGn',7,'molestiae','2011-12-18 16:26:54',60,3,10,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(6,'93?o)7^+a7P2`E=ihDqY',5,'eius','1976-05-24 15:00:59',60,5,3,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(7,'^O1jMJv$*~SAF',4,'non','2022-08-21 15:15:08',60,4,5,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(8,'r~1V3u[o+h)',9,'tempora','1988-05-29 21:11:59',60,4,3,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(9,'|T6B&J2`W',9,'labore','2023-04-18 08:38:30',60,1,9,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(10,'~)x+|F.*',3,'hic','1991-07-24 13:17:13',60,5,10,'2024-06-22 17:24:38','2024-06-22 17:24:38');
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
INSERT INTO `problem_tag` VALUES (1,1,1,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(2,5,10,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(3,1,2,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(4,5,4,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(5,7,10,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(6,9,5,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(7,6,2,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(8,3,4,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(9,10,3,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(10,4,8,'2024-06-22 17:24:38','2024-06-22 17:24:38');
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
INSERT INTO `problems` VALUES (1,'add tow number','Officiis illo aut quam eaque. Perspiciatis et quia ut iure. Molestiae eum sed animi dolorem. Sint nihil est deserunt sint.',0,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ; int y ;\n                    cin>>x >> y ;\n                    cout << x + y;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,7,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(2,'array sum','Accusantium nesciunt illum corporis dolorem ex. Magnam tempora corporis vitae. Cum libero totam quis sequi quo ullam quisquam. Vero eligendi possimus qui commodi.',1,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int sum = 0 ;\n                    for (int i = 0 ; i< x ; i++){int k ; cin >> k ; sum+=k;}\n                    cout << sum ;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,8,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(3,'array sum','Eveniet quo id et possimus quaerat voluptates. Minus ut est quia recusandae quod sunt. Vitae voluptates aut eaque minima qui.',1,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int sum = 0 ;\n                    for (int i = 0 ; i< x ; i++){int k ; cin >> k ; sum+=k;}\n                    cout << sum ;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,1,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(4,'array sum','Doloribus fugit natus facere quia commodi deserunt eos. Et consequatur optio vel reprehenderit hic sit. Unde deserunt dolores eaque consectetur. Et illum numquam magnam eum optio. Nihil officiis quia totam dolores aperiam.',1,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int sum = 0 ;\n                    for (int i = 0 ; i< x ; i++){int k ; cin >> k ; sum+=k;}\n                    cout << sum ;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,6,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(5,'add tow number','Quas consectetur maiores est et. Temporibus at et atque cupiditate quisquam impedit. Qui unde eius amet et impedit fugiat. Est ea impedit commodi qui.',0,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ; int y ;\n                    cin>>x >> y ;\n                    cout << x + y;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,10,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(6,'max val','Dolor excepturi non in non maxime. Minus sit vitae minus dolorem sed hic sed. Blanditiis tenetur sunt ut assumenda suscipit sapiente hic voluptas.',2,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int a[x] ;\n                    for (int i = 0 ; i< x ; i++){cin >> a[i]}\n                    max = a[0] ;\n                    for (int i = 0 ; i< x ; i++){\n                        if (a[i] > max ) max = a[i] ;\n                    }\n                    cout << max;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,6,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(7,'array sum','Et ut doloremque officia amet nihil. Error laborum excepturi non consequuntur nesciunt. Id minima est eveniet. Voluptas et totam et velit excepturi rem.',1,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int sum = 0 ;\n                    for (int i = 0 ; i< x ; i++){int k ; cin >> k ; sum+=k;}\n                    cout << sum ;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,1,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(8,'max val','Accusantium adipisci qui velit rerum. Inventore in dolor tempore recusandae voluptate recusandae. Quis quas rerum tenetur dolore facilis molestiae voluptatem.',2,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int a[x] ;\n                    for (int i = 0 ; i< x ; i++){cin >> a[i]}\n                    max = a[0] ;\n                    for (int i = 0 ; i< x ; i++){\n                        if (a[i] > max ) max = a[i] ;\n                    }\n                    cout << max;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,2,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(9,'add tow number','Atque omnis voluptas nemo et cupiditate in. Quos quia impedit natus incidunt. Distinctio voluptatum ratione repudiandae vel dolore architecto nulla.',0,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ; int y ;\n                    cin>>x >> y ;\n                    cout << x + y;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,7,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(10,'array sum','Accusamus sunt repellat nobis sit vero. Et eum doloremque sapiente repellat voluptas recusandae impedit. Ut facilis rem quia aut minus.',1,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int sum = 0 ;\n                    for (int i = 0 ; i< x ; i++){int k ; cin >> k ; sum+=k;}\n                    cout << sum ;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,4,'2024-06-22 17:24:38','2024-06-22 17:24:38');
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
INSERT INTO `solve_problem` VALUES (1,10,5,'Dolorum maiores eius officia nesciunt at. Impedit rerum ad iusto est sint. Quisquam esse dolores dicta totam quis voluptatem et.',1,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(2,7,1,'Sed magni temporibus perferendis quaerat veritatis tempora exercitationem. Dolorem dignissimos voluptatem non quas illum. Voluptatem iusto odio voluptatem vitae rem nesciunt.',1,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(3,7,6,'Consequatur eligendi enim accusamus asperiores ea sequi expedita. Accusamus suscipit fuga adipisci ipsa asperiores occaecati enim. Enim aperiam quia nihil dolorem a.',1,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(4,10,8,'Provident cum autem nisi quidem ut labore earum. Sunt dignissimos harum sit maxime ipsam unde. Voluptas et vitae quo. Optio rem possimus quae.',1,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(5,5,8,'Qui non iure in nisi error deleniti. Reiciendis aut ducimus accusamus quis debitis occaecati. Accusantium ullam ea repudiandae harum.',1,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(6,3,10,'Illum laboriosam et occaecati sint. Non vero et eligendi atque ut quo temporibus. Et sit et optio similique omnis explicabo. At sit consequatur et dolorem enim eum aut optio.',1,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(7,9,10,'Magnam commodi et nisi expedita totam consequuntur. Consectetur accusantium possimus dolores perferendis. Harum nostrum placeat sit sapiente tempore. Autem omnis temporibus sunt nostrum.',1,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(8,3,4,'Quae eaque ab voluptas dolor doloremque aut est quibusdam. Dolor distinctio porro modi dolores sint. Qui eaque non laboriosam ex.',0,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(9,2,7,'Et et molestiae ab enim qui perspiciatis. Est cum qui dolore dolor. Molestias illo totam illo voluptatem veritatis.',0,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(10,7,10,'Eum ea at nobis quo. Nisi facere harum nisi facere. Ipsa nostrum veniam voluptatem eligendi. Autem at velit consequatur dignissimos.',1,'2024-06-22 17:24:38','2024-06-22 17:24:38');
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
INSERT INTO `students` VALUES (1,3,'762-948-7248',2,0,0,'2015-02-23',0,0,0,60950,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(2,4,'1-580-713-0778',2,0,0,'1973-06-16',0,0,0,31528,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(3,5,'(281) 602-6791',2,0,0,'2010-06-25',0,0,0,58057,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(4,6,'+1-724-787-1730',2,0,0,'1988-01-04',0,0,0,95070,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(5,7,'+1.332.953.5655',2,0,0,'1987-05-14',0,0,0,39564,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(6,8,'480.794.2547',2,0,0,'1991-11-05',0,0,0,30655,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(7,9,'+1-539-937-7168',2,0,0,'1982-02-06',0,0,0,15027,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(8,10,'351.608.5793',2,0,0,'1990-02-24',0,0,0,32812,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(9,11,'919-373-9177',2,0,0,'1976-01-15',0,0,0,60920,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(10,12,'(337) 901-0046',2,0,0,'2018-05-22',0,0,0,59071,'2024-06-22 17:24:38','2024-06-22 17:24:38');
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
INSERT INTO `subjects` VALUES (1,'nulla',15,30,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(2,'voluptas',15,30,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(3,'molestiae',15,30,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(4,'accusamus',15,30,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(5,'dolorem',15,30,'2024-06-22 17:24:38','2024-06-22 17:24:38');
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
INSERT INTO `tags` VALUES (1,'sapiente','2024-06-22 17:24:38','2024-06-22 17:24:38'),(2,'illo','2024-06-22 17:24:38','2024-06-22 17:24:38'),(3,'explicabo','2024-06-22 17:24:38','2024-06-22 17:24:38'),(4,'voluptate','2024-06-22 17:24:38','2024-06-22 17:24:38'),(5,'laboriosam','2024-06-22 17:24:38','2024-06-22 17:24:38'),(6,'velit','2024-06-22 17:24:38','2024-06-22 17:24:38'),(7,'cupiditate','2024-06-22 17:24:38','2024-06-22 17:24:38'),(8,'rem','2024-06-22 17:24:38','2024-06-22 17:24:38'),(9,'amet','2024-06-22 17:24:38','2024-06-22 17:24:38'),(10,'exercitationem','2024-06-22 17:24:38','2024-06-22 17:24:38');
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
INSERT INTO `teachers` VALUES (1,13,'973.892.2984','1991-08-11','2024-06-22 17:24:38','2024-06-22 17:24:38'),(2,14,'240-458-5105','1990-01-29','2024-06-22 17:24:38','2024-06-22 17:24:38'),(3,15,'1-214-235-7501','1986-03-23','2024-06-22 17:24:38','2024-06-22 17:24:38'),(4,16,'+1-386-230-7494','1985-03-16','2024-06-22 17:24:38','2024-06-22 17:24:38'),(5,17,'920-278-6451','1972-10-10','2024-06-22 17:24:38','2024-06-22 17:24:38'),(6,18,'702-347-3991','1984-05-04','2024-06-22 17:24:38','2024-06-22 17:24:38'),(7,19,'561-736-0901','2006-04-05','2024-06-22 17:24:38','2024-06-22 17:24:38'),(8,20,'337.915.5709','2020-08-10','2024-06-22 17:24:38','2024-06-22 17:24:38'),(9,21,'920-264-3415','1975-06-11','2024-06-22 17:24:38','2024-06-22 17:24:38'),(10,22,'+1.408.696.8974','1975-10-31','2024-06-22 17:24:38','2024-06-22 17:24:38');
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
INSERT INTO `test_cases` VALUES (1,'741',NULL,6,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(2,'316',NULL,7,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(3,'490',NULL,2,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(4,'780',NULL,5,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(5,'870',NULL,8,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(6,'316',NULL,9,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(7,'547',NULL,1,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(8,'333',NULL,6,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(9,'422',NULL,7,'2024-06-22 17:24:38','2024-06-22 17:24:38'),(10,'82',NULL,10,'2024-06-22 17:24:38','2024-06-22 17:24:38');
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
INSERT INTO `true_false_questions` VALUES (1,9,'Ullam ea velit dolore. Qui quidem ut enim et. Quod suscipit assumenda libero consequatur.','quae','labore','et','ut',4,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(2,8,'Eaque et voluptatem error possimus est. Est aliquid qui unde aperiam laudantium commodi id molestiae.','et','cupiditate','in','fuga',3,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(3,2,'Possimus mollitia repellendus aut. Magni quis odio error iste quaerat quia expedita qui. Repellendus adipisci maiores minus hic laboriosam id.','perferendis','qui','consequatur','veritatis',3,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(4,5,'Iure deserunt sint blanditiis odit quasi voluptatem doloribus. Et sed unde vel modi et id earum. Expedita ut veniam similique quibusdam. Voluptatem esse sit doloribus illo.','explicabo','natus','est','doloremque',2,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(5,7,'Neque voluptatem iusto nostrum exercitationem. Sed perferendis aut ut ut. Eum dicta voluptatibus nisi nisi sint error reiciendis.','tempore','earum','enim','fugit',4,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(6,3,'Perferendis quidem laborum quos est et. Ea assumenda sunt maiores quos iure placeat. Eos ipsam dolorum voluptatem totam.','eos','distinctio','fugit','minus',1,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(7,3,'Quam a aut fugiat non. Sed exercitationem et error quia odio sint. Dolores iste consectetur in rem recusandae recusandae rerum. Dolorem enim hic neque. Quia possimus quod natus qui sed et reiciendis.','dicta','qui','non','et',4,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(8,10,'Odio sunt fuga incidunt dolores omnis totam alias et. At sint molestiae eius et dolor dolorum. Reiciendis cumque in non rem.','autem','rerum','ut','sed',3,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(9,8,'Velit hic sint deleniti nam qui. Et quia enim aut quasi ipsa provident. Enim odit error nam tempore ipsum. Eos est enim aut qui consectetur suscipit unde.','est','id','enim','est',4,'2024-06-22 17:24:39','2024-06-22 17:24:39'),(10,10,'Qui sunt deleniti eos ut. Illum harum ut expedita. Doloribus amet molestiae voluptates atque perspiciatis excepturi harum delectus.','voluptatibus','autem','et','ut',2,'2024-06-22 17:24:39','2024-06-22 17:24:39');
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
INSERT INTO `users` VALUES (1,'Ammar Jokhadar','DR.ammarJokhadar@gmail.com','2024-06-22 17:24:37','$2y$12$cSKWPM2cG2xV6TrZVJgkS.OsfDL3kQjxT4PGBLzHkDBISd.DqxeF.','Wp2LHOtalO','adminstrator','2024-06-22 17:24:38','2024-06-22 17:24:38'),(2,'Ms. Meta Kirlin Sr.','hauck.isom@example.net','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','d8b9AsEhTh','student','2024-06-22 17:24:38','2024-06-22 17:24:38'),(3,'Alanna Erdman','tom.aufderhar@example.net','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','jsePO0rHYe','student','2024-06-22 17:24:38','2024-06-22 17:24:38'),(4,'Ms. Abbie Block','crona.peggie@example.com','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','t1NSVET7nZ','student','2024-06-22 17:24:38','2024-06-22 17:24:38'),(5,'Emie Brown I','jhamill@example.com','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','fJmWKkMrFH','student','2024-06-22 17:24:38','2024-06-22 17:24:38'),(6,'Rosalee Moen','krolfson@example.net','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','LYihA2XE2T','student','2024-06-22 17:24:38','2024-06-22 17:24:38'),(7,'Miss Alexane Gibson','cpadberg@example.org','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','0Sn17mANf5','student','2024-06-22 17:24:38','2024-06-22 17:24:38'),(8,'Prof. Everett Heathcote DDS','enrico.reichel@example.com','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','WsqFxNLRTo','student','2024-06-22 17:24:38','2024-06-22 17:24:38'),(9,'Imogene Yundt','xkuhlman@example.com','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','Gz8HGwSOlK','student','2024-06-22 17:24:38','2024-06-22 17:24:38'),(10,'Prof. Britney Runolfsson','marcelle56@example.net','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','uOcXGOnLpS','student','2024-06-22 17:24:38','2024-06-22 17:24:38'),(11,'Ms. Retha Sawayn MD','baumbach.taylor@example.com','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','wo5wiHLt7M','student','2024-06-22 17:24:38','2024-06-22 17:24:38'),(12,'Lyla Kreiger','arely20@example.org','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','4txpOGPz2f','student','2024-06-22 17:24:38','2024-06-22 17:24:38'),(13,'Teresa Smitham','harvey.swift@example.net','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','6fHXgR346q','teacher','2024-06-22 17:24:38','2024-06-22 17:24:38'),(14,'Ms. Vita Crona II','aglae.strosin@example.net','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','aaj8hdbcrY','teacher','2024-06-22 17:24:38','2024-06-22 17:24:38'),(15,'Dr. Shannon Herzog','thiel.santino@example.net','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','9VDINNGUNz','teacher','2024-06-22 17:24:38','2024-06-22 17:24:38'),(16,'Prof. Jaycee Stamm','keven04@example.net','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','02zb7RkFuS','teacher','2024-06-22 17:24:38','2024-06-22 17:24:38'),(17,'Elaina Breitenberg','graynor@example.net','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','TJfld1Ir6X','teacher','2024-06-22 17:24:38','2024-06-22 17:24:38'),(18,'Xzavier Brakus','corkery.dominic@example.org','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','HbtGLTnmCJ','teacher','2024-06-22 17:24:38','2024-06-22 17:24:38'),(19,'Kiley Stehr','jhammes@example.com','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','PTdWsSRV8J','teacher','2024-06-22 17:24:38','2024-06-22 17:24:38'),(20,'Kameron Gleichner','tglover@example.org','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','xlzvNJsFw2','teacher','2024-06-22 17:24:38','2024-06-22 17:24:38'),(21,'Harrison Thiel','noemie48@example.net','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','zIeNdULq3O','teacher','2024-06-22 17:24:38','2024-06-22 17:24:38'),(22,'Florida Vandervort','einar.buckridge@example.net','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','Q5taL2xRdM','teacher','2024-06-22 17:24:38','2024-06-22 17:24:38'),(23,'Jazmin Hill','ggerlach@example.net','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','q7rU1qTHHG','adminstrator','2024-06-22 17:24:38','2024-06-22 17:24:38'),(24,'Nikko Welch','jpurdy@example.org','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','eW7KZ5WYem','adminstrator','2024-06-22 17:24:38','2024-06-22 17:24:38'),(25,'Ms. Gertrude Jacobson IV','ahuels@example.org','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','kRfc7mG9Gc','adminstrator','2024-06-22 17:24:38','2024-06-22 17:24:38'),(26,'Alphonso Rodriguez','alexie48@example.net','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','Z9Lvx1TI2c','adminstrator','2024-06-22 17:24:38','2024-06-22 17:24:38'),(27,'Miss Vallie Weissnat II','alda.quitzon@example.com','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','PLvC1bJjEE','adminstrator','2024-06-22 17:24:38','2024-06-22 17:24:38'),(28,'Shad Greenholt Jr.','lhamill@example.org','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','8FJKXY4zYh','adminstrator','2024-06-22 17:24:38','2024-06-22 17:24:38'),(29,'Doug Boyer','foster.bauch@example.org','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','0RhZevLcXx','adminstrator','2024-06-22 17:24:38','2024-06-22 17:24:38'),(30,'Vada Douglas','becker.freeman@example.com','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','QVvASKggt9','adminstrator','2024-06-22 17:24:38','2024-06-22 17:24:38'),(31,'Abigail Reynolds','florian.lang@example.com','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','oFngfzGpR3','adminstrator','2024-06-22 17:24:38','2024-06-22 17:24:38'),(32,'Mrs. Jodie Orn','cicero.kemmer@example.net','2024-06-22 17:24:38','$2y$12$27OLI.EjDdCDfyg1cQfi0OYVhW5jnabClFbu8GPoFOG256lpC3Rxa','E36HAeq9XX','adminstrator','2024-06-22 17:24:38','2024-06-22 17:24:38');
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

-- Dump completed on 2024-06-22 20:25:02
