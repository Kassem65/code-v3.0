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
INSERT INTO `administrators` VALUES (1,23,'+1 (281) 656-9535','1976-08-09','2024-06-22 17:19:03','2024-06-22 17:19:03'),(2,24,'838.480.8665','2024-03-23','2024-06-22 17:19:03','2024-06-22 17:19:03'),(3,25,'+1-361-748-9404','1986-07-09','2024-06-22 17:19:03','2024-06-22 17:19:03'),(4,26,'(251) 929-2670','2017-10-31','2024-06-22 17:19:03','2024-06-22 17:19:03'),(5,27,'380-321-1364','1996-01-30','2024-06-22 17:19:03','2024-06-22 17:19:03'),(6,28,'628.264.3345','1986-07-31','2024-06-22 17:19:03','2024-06-22 17:19:03'),(7,29,'(304) 893-9711','1972-03-03','2024-06-22 17:19:03','2024-06-22 17:19:03'),(8,30,'1-260-334-4878','1974-01-26','2024-06-22 17:19:03','2024-06-22 17:19:03'),(9,31,'934-260-3746','2003-10-27','2024-06-22 17:19:03','2024-06-22 17:19:03'),(10,32,'(940) 506-0827','2018-03-23','2024-06-22 17:19:03','2024-06-22 17:19:03');
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
INSERT INTO `answers` VALUES (1,7,9,'Assumenda doloremque maxime sit repellendus ipsa odio unde. Provident laborum omnis quia itaque repudiandae ad dolores et. Suscipit consequatur non ut sit aut.','2024-06-22 17:19:03','2024-06-22 17:19:03'),(2,7,7,'Consequatur neque quidem sapiente voluptatem et natus adipisci tempora. Repellat veniam est necessitatibus deleniti. Omnis corrupti officia cupiditate magnam atque aut nisi odio.','2024-06-22 17:19:03','2024-06-22 17:19:03'),(3,5,5,'Eveniet nihil quo quo aut cupiditate illum molestias. Consectetur maiores accusamus quia et dolore. Dolorem in reiciendis est odit alias voluptatem est quis.','2024-06-22 17:19:03','2024-06-22 17:19:03'),(4,8,4,'Explicabo minus consectetur voluptates autem. Animi quaerat dolor et earum cupiditate. Quidem nihil impedit sed ad iure et.','2024-06-22 17:19:03','2024-06-22 17:19:03'),(5,10,9,'Placeat praesentium omnis exercitationem saepe. Qui eum rerum voluptatem iste laborum saepe itaque.','2024-06-22 17:19:03','2024-06-22 17:19:03'),(6,6,2,'Perspiciatis quos ea aut cumque quis sunt voluptas. Facere corporis deleniti iure et nulla est. Et voluptatem aut voluptatum non.','2024-06-22 17:19:03','2024-06-22 17:19:03'),(7,10,1,'Veniam fuga similique aut et odit et. Quia et ut eveniet nam sunt illum. Voluptas eum omnis itaque fugit. Tempora facere et eos voluptas. Molestiae quos error facere ullam maxime ab.','2024-06-22 17:19:03','2024-06-22 17:19:03'),(8,9,4,'Reiciendis repellendus est et. Molestiae sunt nihil sed sunt. Sed recusandae ut repellat et porro tempore.','2024-06-22 17:19:03','2024-06-22 17:19:03'),(9,5,7,'Animi aut libero voluptas aperiam suscipit. Praesentium sit id veritatis praesentium qui suscipit. Maxime molestiae voluptas tenetur. Qui quasi commodi eum a in vel aut et.','2024-06-22 17:19:03','2024-06-22 17:19:03'),(10,8,1,'Sunt et quasi molestiae laborum deserunt repudiandae. Consectetur et quia qui sed adipisci. Ut sunt odio et fuga saepe.','2024-06-22 17:19:03','2024-06-22 17:19:03');
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
INSERT INTO `assessments` VALUES (1,'assessment',2,3,3,0,'2024-06-22 17:19:04','2024-06-22 17:19:04'),(2,'assessment',6,4,10,0,'2024-06-22 17:19:04','2024-06-22 17:19:04'),(3,'assessment',9,8,3,0,'2024-06-22 17:19:04','2024-06-22 17:19:04'),(4,'assessment',9,4,3,0,'2024-06-22 17:19:04','2024-06-22 17:19:04'),(5,'assessment',4,10,3,0,'2024-06-22 17:19:04','2024-06-22 17:19:04'),(6,'assessment',1,10,9,0,'2024-06-22 17:19:04','2024-06-22 17:19:04'),(7,'assessment',10,10,4,0,'2024-06-22 17:19:04','2024-06-22 17:19:04'),(8,'assessment',9,7,7,0,'2024-06-22 17:19:04','2024-06-22 17:19:04'),(9,'assessment',10,6,5,0,'2024-06-22 17:19:04','2024-06-22 17:19:04'),(10,'assessment',4,6,4,0,'2024-06-22 17:19:04','2024-06-22 17:19:04');
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
INSERT INTO `categories` VALUES (1,'aperiam_7',17,12,2.83,8.79,3,3,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(2,'animi_8',18,40,8.36,2.28,6,1,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(3,'unde_4',13,33,5.64,3.67,7,3,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(4,'in_10',11,61,5.97,9.01,6,5,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(5,'dolorem_9',12,58,1.04,5.89,3,4,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(6,'tenetur_5',11,86,3.67,8.57,6,2,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(7,'perferendis_7',2,64,5.29,6.74,3,1,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(8,'qui_4',14,27,1.41,2.29,3,3,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(9,'iusto_10',3,71,6.72,6.65,10,4,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(10,'voluptatum_3',14,60,8.97,3.73,4,2,'2024-06-22 17:19:03','2024-06-22 17:19:03');
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
INSERT INTO `category_student` VALUES (1,10,8,1,7.68,7.60,0,2,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(2,8,1,2,7.23,8.54,0,5,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(3,1,10,5,5.12,4.64,0,1,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(4,2,2,6,3.56,6.40,0,4,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(5,5,4,5,2.40,3.14,0,4,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(6,5,2,9,7.45,4.23,0,4,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(7,2,10,3,5.13,4.20,0,1,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(8,7,3,7,3.46,5.06,0,1,'2024-06-22 17:19:04','2024-06-22 17:19:04'),(9,6,7,1,1.07,4.24,0,1,'2024-06-22 17:19:04','2024-06-22 17:19:04'),(10,4,7,8,0.38,7.29,0,3,'2024-06-22 17:19:04','2024-06-22 17:19:04');
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
INSERT INTO `contest_problem` VALUES (1,1,9,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(2,7,5,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(3,8,7,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(4,7,9,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(5,1,6,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(6,10,4,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(7,2,6,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(8,9,4,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(9,6,4,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(10,4,10,'2024-06-22 17:19:03','2024-06-22 17:19:03');
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
INSERT INTO `contest_student` VALUES (1,3,6,0,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(2,1,10,0,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(3,8,8,0,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(4,3,9,0,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(5,3,9,0,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(6,8,2,0,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(7,7,2,0,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(8,4,1,0,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(9,8,8,0,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(10,6,9,0,'2024-06-22 17:19:03','2024-06-22 17:19:03');
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
INSERT INTO `contests` VALUES (1,'magni',2,NULL,'1999-08-31','09:00:00',0,NULL,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(2,'iure',2,NULL,'1994-11-24','09:00:00',0,NULL,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(3,'eum',2,NULL,'1972-02-22','09:00:00',0,NULL,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(4,'earum',2,NULL,'2001-07-16','09:00:00',0,NULL,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(5,'quisquam',2,NULL,'1992-02-16','09:00:00',0,NULL,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(6,'minus',2,NULL,'2005-10-20','09:00:00',0,NULL,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(7,'enim',2,NULL,'1989-12-22','09:00:00',0,NULL,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(8,'sunt',2,NULL,'1984-07-06','09:00:00',0,NULL,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(9,'delectus',2,NULL,'2023-06-15','09:00:00',0,NULL,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(10,'nesciunt',2,NULL,'2009-09-08','09:00:00',0,NULL,'2024-06-22 17:19:03','2024-06-22 17:19:03');
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
INSERT INTO `exam_student` VALUES (1,2,7,0,'Nemo non aut qui dolorem voluptatem sint non. Autem temporibus ex accusamus voluptas ut. Voluptatem enim quasi ut quas.','Aut officia ex voluptas. Praesentium quibusdam quos quae qui odio dolor quo. Consequatur quia nobis non eum quia. Ipsa dolore magni voluptatibus.','2024-06-22 17:19:03','2024-06-22 17:19:03'),(2,2,5,0,'Itaque dolorem praesentium at qui voluptas aut corrupti aliquid. Dicta expedita fugit aut tempore. Quia voluptate numquam officia et totam velit.','Qui non assumenda modi ea vel explicabo. Et et optio iusto ex sunt corrupti. Totam voluptatem nihil nostrum et.','2024-06-22 17:19:03','2024-06-22 17:19:03'),(3,3,10,0,'Perferendis sit voluptas illum commodi adipisci ipsum et. Sapiente omnis modi et eaque voluptatum nesciunt. Dolores repellat accusantium debitis tenetur itaque.','Qui deserunt eum sequi totam. Suscipit enim sed sunt laudantium nobis et sint. Exercitationem et placeat similique dolorem veniam eum ratione est.','2024-06-22 17:19:03','2024-06-22 17:19:03'),(4,1,2,0,'Nemo eveniet incidunt cum ab vel. Nostrum illum distinctio minus numquam qui dolore eaque. Est unde est perspiciatis.','Voluptatem corporis illo doloremque sit ea. Iste et omnis ea non nisi veritatis. Quis quisquam quia qui sint.','2024-06-22 17:19:03','2024-06-22 17:19:03'),(5,2,7,0,'Quidem facilis consequatur perspiciatis voluptate nisi et. Odit consequatur enim alias quo non beatae. Pariatur vitae officia repellat.','Fugit eaque nostrum veniam provident iste iste. Iusto repudiandae et dignissimos aspernatur. Quia excepturi et et temporibus sunt laborum.','2024-06-22 17:19:03','2024-06-22 17:19:03'),(6,3,4,0,'Magni nisi quaerat debitis doloribus vel alias. Occaecati vitae natus corporis reprehenderit. Quo omnis rerum eum et cumque.','Id dolor maiores ut voluptatem. Temporibus odit earum debitis unde veritatis.','2024-06-22 17:19:03','2024-06-22 17:19:03'),(7,7,9,0,'Nemo distinctio voluptas praesentium suscipit architecto velit quam. Amet porro modi aperiam aperiam nihil. Temporibus voluptas eius temporibus nesciunt. Odio quia labore quisquam laborum.','Dolorem earum sunt sint assumenda et ipsam. Cum debitis tenetur commodi et ad repudiandae cum. Corrupti excepturi rerum vitae culpa.','2024-06-22 17:19:03','2024-06-22 17:19:03'),(8,5,2,0,'Odio modi sint nostrum voluptatem quaerat rem. Laborum repellendus officia illo quod recusandae. Quos quaerat et et dolores sunt sunt. Itaque at et ipsum sed dolorem.','Impedit voluptas repellat ullam rerum odio velit rem. Recusandae deleniti voluptas accusamus quasi.','2024-06-22 17:19:03','2024-06-22 17:19:03'),(9,8,9,0,'Sed distinctio praesentium sunt numquam officia corrupti velit. Sit possimus natus qui sit tempore. Excepturi eos et ullam voluptatem voluptas et.','Doloribus tempora id qui sapiente tenetur ut omnis tenetur. Porro enim saepe laborum ipsum. Et deserunt quae nisi ad.','2024-06-22 17:19:03','2024-06-22 17:19:03'),(10,1,10,0,'Repellat rerum beatae aut et quos soluta. Provident fugiat et possimus aut incidunt velit deserunt. Repellat harum quas nemo omnis deleniti dignissimos. Minus quod possimus id sed est ducimus sit.','Ratione harum accusamus veniam eveniet. Dicta deserunt tempora optio odit quis fugiat. Harum natus dolorum repellat sint alias.','2024-06-22 17:19:03','2024-06-22 17:19:03');
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
INSERT INTO `exams` VALUES (1,'Jx%/P?',5,'nisi','2021-08-26 18:18:31',60,4,5,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(2,'oBZJ`6i',7,'sed','2010-11-26 01:11:02',60,3,1,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(3,'4>w(nX/\'z0',9,'rerum','2000-05-26 04:20:51',60,5,3,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(4,'U}2N`#X',8,'consectetur','1990-09-12 14:00:20',60,2,7,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(5,'r`qzRnrP[CG4h%-=>`N',7,'maiores','1991-07-29 20:22:44',60,4,10,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(6,'n:X@A1I)q|v',3,'aut','2022-08-23 10:19:05',60,4,5,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(7,'#f\\1MwJ=%W\"<^r`x[d',8,'dicta','2000-04-26 06:33:55',60,3,10,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(8,':?ve.!r8V\"B^2',6,'nam','1998-01-11 01:28:36',60,2,4,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(9,'%-}c7t@=+=O8_',9,'doloribus','1987-05-05 14:48:53',60,3,7,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(10,'ytaBbtZ5I!|',4,'veniam','1993-08-04 23:13:58',60,2,1,'2024-06-22 17:19:03','2024-06-22 17:19:03');
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
INSERT INTO `problem_tag` VALUES (1,8,1,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(2,6,4,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(3,1,6,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(4,8,7,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(5,8,2,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(6,4,8,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(7,10,3,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(8,5,10,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(9,9,4,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(10,2,3,'2024-06-22 17:19:03','2024-06-22 17:19:03');
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
INSERT INTO `problems` VALUES (1,'add tow number','In sint soluta numquam earum voluptas doloremque. Accusamus magni et est reprehenderit. Delectus veritatis dolor facilis.',0,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ; int y ;\n                    cin>>x >> y ;\n                    cout << x + y;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,10,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(2,'add tow number','Dolore et impedit nobis nostrum distinctio debitis voluptates. Doloribus et quaerat nihil sit dolor pariatur cumque in. Nemo eligendi perspiciatis et et. Cupiditate voluptatibus numquam illo sequi quia maxime corporis.',0,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ; int y ;\n                    cin>>x >> y ;\n                    cout << x + y;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,5,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(3,'max val','Voluptas distinctio nobis et at harum rem. Est cupiditate eius iusto. Odio minus libero quos veniam.',2,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int a[x] ;\n                    for (int i = 0 ; i< x ; i++){cin >> a[i]}\n                    max = a[0] ;\n                    for (int i = 0 ; i< x ; i++){\n                        if (a[i] > max ) max = a[i] ;\n                    }\n                    cout << max;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,3,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(4,'max val','Accusantium sit quis deserunt cumque. Omnis in laboriosam quae qui tenetur est. In quis odit voluptatem vitae. Voluptatem et in ad voluptates dolores.',2,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int a[x] ;\n                    for (int i = 0 ; i< x ; i++){cin >> a[i]}\n                    max = a[0] ;\n                    for (int i = 0 ; i< x ; i++){\n                        if (a[i] > max ) max = a[i] ;\n                    }\n                    cout << max;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,1,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(5,'max val','Assumenda dolores fuga accusamus occaecati at asperiores numquam. Qui dolorum quo aut in ut alias. Eos maiores fuga sint at iusto possimus officiis.',2,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int a[x] ;\n                    for (int i = 0 ; i< x ; i++){cin >> a[i]}\n                    max = a[0] ;\n                    for (int i = 0 ; i< x ; i++){\n                        if (a[i] > max ) max = a[i] ;\n                    }\n                    cout << max;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,4,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(6,'add tow number','Facilis commodi accusantium consequatur omnis. Est nostrum quam nam voluptatum et sit vel libero. Nesciunt temporibus ipsa praesentium qui nemo et sint ducimus. Natus recusandae labore eum recusandae occaecati necessitatibus.',0,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ; int y ;\n                    cin>>x >> y ;\n                    cout << x + y;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,10,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(7,'array sum','Maiores facilis a nostrum repudiandae. Quia consectetur animi id totam ipsum dolor voluptates. Reiciendis similique iste ut eligendi consequatur qui debitis.',1,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int sum = 0 ;\n                    for (int i = 0 ; i< x ; i++){int k ; cin >> k ; sum+=k;}\n                    cout << sum ;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,5,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(8,'array sum','Natus provident aperiam natus est rerum placeat est. Corporis illum ipsa sed sed. Possimus exercitationem est mollitia quasi sapiente deserunt.',1,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int sum = 0 ;\n                    for (int i = 0 ; i< x ; i++){int k ; cin >> k ; sum+=k;}\n                    cout << sum ;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,6,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(9,'max val','Similique nulla voluptatum voluptate cum quia molestias enim. Cumque sit laborum harum porro veniam officiis. Asperiores saepe ab quia quo provident voluptatem.',2,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int a[x] ;\n                    for (int i = 0 ; i< x ; i++){cin >> a[i]}\n                    max = a[0] ;\n                    for (int i = 0 ; i< x ; i++){\n                        if (a[i] > max ) max = a[i] ;\n                    }\n                    cout << max;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,2,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(10,'array sum','Non ipsum deserunt voluptas. Modi molestias non qui et dolorem aspernatur.',1,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int sum = 0 ;\n                    for (int i = 0 ; i< x ; i++){int k ; cin >> k ; sum+=k;}\n                    cout << sum ;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,10,'2024-06-22 17:19:03','2024-06-22 17:19:03');
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
INSERT INTO `solve_problem` VALUES (1,7,6,'Voluptatibus dolorem cumque aliquid consequatur quae. Eum magni iste ad omnis. Libero accusantium veritatis nostrum voluptatem odit. Totam commodi pariatur rem ullam ea in quidem.',1,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(2,9,2,'Nihil debitis autem nihil esse. Dignissimos et voluptatibus ut ullam aperiam. Nemo sint aut dolore corporis dolor omnis voluptas. Assumenda eos eos quia aut.',1,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(3,10,3,'Deleniti rerum reiciendis itaque qui recusandae minima. Ut veniam deleniti voluptas sint eius dicta voluptatem.',1,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(4,5,1,'Ut officiis et similique ex. Debitis et dolor esse nesciunt aliquam nulla. Mollitia facilis vel voluptatum dolores quam labore.',0,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(5,2,1,'Consequuntur at exercitationem voluptatem commodi voluptatum magnam. Et et harum quidem asperiores consectetur enim. Et a sunt et repellendus reiciendis et cumque omnis. Rem non est est eum.',1,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(6,8,10,'Aliquam excepturi officia rerum ad ipsum. Ab quisquam corrupti dolorum. Aut corrupti quae soluta sed similique. Deleniti occaecati quas architecto sequi quidem deserunt est.',1,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(7,5,9,'Odio quo et fugiat voluptatem provident ut. Non voluptatem velit veniam aut atque est iusto. Et nemo consequatur sit enim excepturi.',0,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(8,7,3,'Earum vel cupiditate voluptatem. Quae rem nobis neque nostrum. Aut vitae magni corrupti quaerat.',0,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(9,4,10,'Quis voluptas sit ex qui ut sunt. Beatae molestiae pariatur est perferendis consequatur et. Doloribus corporis omnis recusandae exercitationem id inventore rerum. Commodi et nam sit qui.',0,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(10,7,9,'Expedita libero nihil voluptates nesciunt voluptatem. Aperiam soluta laborum quaerat officiis quisquam vel. Laudantium et vel debitis veritatis. Quo illum ut id aspernatur suscipit repudiandae sed.',0,'2024-06-22 17:19:03','2024-06-22 17:19:03');
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
INSERT INTO `students` VALUES (1,3,'+1.215.757.8892',2,0,0,'2004-11-30',0,0,0,10814,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(2,4,'217.522.4739',2,0,0,'1985-10-29',0,0,0,18927,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(3,5,'+1-914-644-9309',2,0,0,'2016-01-21',0,0,0,44350,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(4,6,'+1 (207) 882-0468',2,0,0,'1972-07-26',0,0,0,42891,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(5,7,'848-434-0672',2,0,0,'1985-02-17',0,0,0,43653,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(6,8,'+14356821971',2,0,0,'1989-04-17',0,0,0,618,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(7,9,'478-359-2330',2,0,0,'2003-09-28',0,0,0,13553,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(8,10,'1-805-710-0491',2,0,0,'1978-07-09',0,0,0,47786,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(9,11,'(413) 557-0725',2,0,0,'2018-04-14',0,0,0,62763,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(10,12,'1-561-252-7378',2,0,0,'2019-05-17',0,0,0,36266,'2024-06-22 17:19:03','2024-06-22 17:19:03');
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
INSERT INTO `subjects` VALUES (1,'ex',15,30,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(2,'sed',15,30,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(3,'est',15,30,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(4,'labore',15,30,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(5,'consequatur',15,30,'2024-06-22 17:19:03','2024-06-22 17:19:03');
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
INSERT INTO `tags` VALUES (1,'nam','2024-06-22 17:19:03','2024-06-22 17:19:03'),(2,'incidunt','2024-06-22 17:19:03','2024-06-22 17:19:03'),(3,'voluptate','2024-06-22 17:19:03','2024-06-22 17:19:03'),(4,'sapiente','2024-06-22 17:19:03','2024-06-22 17:19:03'),(5,'eaque','2024-06-22 17:19:03','2024-06-22 17:19:03'),(6,'dolorem','2024-06-22 17:19:03','2024-06-22 17:19:03'),(7,'sunt','2024-06-22 17:19:03','2024-06-22 17:19:03'),(8,'aut','2024-06-22 17:19:03','2024-06-22 17:19:03'),(9,'a','2024-06-22 17:19:03','2024-06-22 17:19:03'),(10,'quasi','2024-06-22 17:19:03','2024-06-22 17:19:03');
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
INSERT INTO `teachers` VALUES (1,13,'1-540-372-1332','1995-02-12','2024-06-22 17:19:03','2024-06-22 17:19:03'),(2,14,'+1-478-241-0132','1983-02-17','2024-06-22 17:19:03','2024-06-22 17:19:03'),(3,15,'956-803-9651','2002-07-30','2024-06-22 17:19:03','2024-06-22 17:19:03'),(4,16,'1-351-788-2212','2001-06-30','2024-06-22 17:19:03','2024-06-22 17:19:03'),(5,17,'+1 (681) 739-0611','2008-07-22','2024-06-22 17:19:03','2024-06-22 17:19:03'),(6,18,'+1-201-253-3362','1988-07-24','2024-06-22 17:19:03','2024-06-22 17:19:03'),(7,19,'276.650.1949','2006-06-01','2024-06-22 17:19:03','2024-06-22 17:19:03'),(8,20,'+18627977255','1981-10-04','2024-06-22 17:19:03','2024-06-22 17:19:03'),(9,21,'+1 (318) 382-1429','1985-02-04','2024-06-22 17:19:03','2024-06-22 17:19:03'),(10,22,'1-747-953-4027','1997-04-16','2024-06-22 17:19:03','2024-06-22 17:19:03');
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
INSERT INTO `test_cases` VALUES (1,'917',NULL,4,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(2,'194',NULL,5,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(3,'601',NULL,8,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(4,'278',NULL,6,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(5,'661',NULL,6,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(6,'327',NULL,1,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(7,'57',NULL,3,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(8,'873',NULL,9,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(9,'735',NULL,10,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(10,'322',NULL,3,'2024-06-22 17:19:03','2024-06-22 17:19:03');
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
INSERT INTO `true_false_questions` VALUES (1,10,'Dolorum culpa commodi dolorem error minima amet inventore illo. Qui neque quaerat modi animi. Dicta qui dolores recusandae nesciunt perspiciatis assumenda.','qui','recusandae','vel','eum',3,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(2,9,'Assumenda et tempora et aperiam. Ad reprehenderit vitae velit. Aut accusamus nihil consequuntur deleniti recusandae hic.','praesentium','inventore','aliquid','ex',2,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(3,3,'Ea est adipisci praesentium labore. Pariatur aut doloremque velit. Non earum error neque. Asperiores velit quas aspernatur ut.','dolorem','atque','corrupti','laudantium',1,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(4,2,'Cumque illo nisi adipisci id aliquam voluptatibus omnis ratione. Adipisci quia quo amet et numquam voluptate cupiditate quidem. Officiis ducimus maiores ipsum assumenda.','perspiciatis','autem','neque','accusamus',2,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(5,8,'Qui voluptatem consequatur at aut dolorem accusamus. Eum sunt qui odit corporis repudiandae. Vel reiciendis earum beatae.','ipsam','quo','tempore','necessitatibus',2,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(6,9,'Aut omnis architecto quia. Maiores ea tenetur rerum dolor laudantium deserunt aperiam aliquid. Exercitationem quidem molestias sed porro et suscipit. Et sint voluptates aspernatur aperiam sed atque.','enim','repellat','est','voluptatem',4,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(7,5,'Aperiam facere illo blanditiis laborum. Omnis amet sit adipisci eum voluptatum. Excepturi accusamus eos sint ipsam ut ea laborum.','veniam','quia','id','doloremque',4,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(8,4,'Est et iusto quaerat dolorum enim quo expedita et. Dolor sunt sed fugit architecto molestias neque perspiciatis doloribus. Vitae et minima similique et magnam.','molestias','nam','sit','delectus',3,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(9,9,'Sapiente corporis ut repellat harum. Praesentium cupiditate eius voluptatem aliquid voluptas. Quisquam ipsum voluptatum sunt soluta et consequatur velit. Temporibus doloremque vel est.','eos','ut','quis','veritatis',2,'2024-06-22 17:19:03','2024-06-22 17:19:03'),(10,8,'Ut blanditiis sit voluptatum vel veritatis ut. Ad sint iste praesentium. Perspiciatis perspiciatis eius iste a omnis dolores totam. Aspernatur laborum enim nulla ut odit nisi.','dignissimos','mollitia','esse','occaecati',3,'2024-06-22 17:19:03','2024-06-22 17:19:03');
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
INSERT INTO `users` VALUES (1,'Ammar Jokhadar','DR.ammarJokhadar@gmail.com','2024-06-22 17:19:02','$2y$12$qR4373EE1UznBKLOufzlPOUnywhPn5gMNByZ9hGPcoil60TJt82I6','Dw4e1WvQwh','adminstrator','2024-06-22 17:19:02','2024-06-22 17:19:02'),(2,'Elyse Ebert','greta.bode@example.com','2024-06-22 17:19:02','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','44G728SVjP','teacher','2024-06-22 17:19:03','2024-06-22 17:19:03'),(3,'Ryley Strosin','adach@example.net','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','WkyRVqU9Y6','student','2024-06-22 17:19:03','2024-06-22 17:19:03'),(4,'Prof. Herminio Rath Jr.','fgrady@example.com','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','ZKEBRbf3yL','student','2024-06-22 17:19:03','2024-06-22 17:19:03'),(5,'Ralph Romaguera','lue.von@example.net','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','H8CBRe2e3j','student','2024-06-22 17:19:03','2024-06-22 17:19:03'),(6,'Cody Schulist','jabbott@example.net','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','wm7aiINs7E','student','2024-06-22 17:19:03','2024-06-22 17:19:03'),(7,'Hillary Powlowski','lonnie.runolfsdottir@example.com','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','7x4A8PUjfP','student','2024-06-22 17:19:03','2024-06-22 17:19:03'),(8,'Prof. London Hilpert','scartwright@example.com','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','v21ZIKIdHM','student','2024-06-22 17:19:03','2024-06-22 17:19:03'),(9,'Geovanny Prosacco','ischmidt@example.net','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','Sn7QUK4w1e','student','2024-06-22 17:19:03','2024-06-22 17:19:03'),(10,'Litzy Wyman','cornelius.ritchie@example.com','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','8YO0rJqiiC','student','2024-06-22 17:19:03','2024-06-22 17:19:03'),(11,'Dr. Ottis Cummerata','kulas.kamren@example.org','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','8btnOoFDE4','student','2024-06-22 17:19:03','2024-06-22 17:19:03'),(12,'Easton Hessel','derek70@example.org','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','0a813GrCnQ','student','2024-06-22 17:19:03','2024-06-22 17:19:03'),(13,'Alia Bergstrom','fmonahan@example.com','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','4AaacCK4TQ','teacher','2024-06-22 17:19:03','2024-06-22 17:19:03'),(14,'Kale Gleichner','marcelina.ortiz@example.com','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','SJg3nFqoBx','teacher','2024-06-22 17:19:03','2024-06-22 17:19:03'),(15,'Brannon Kozey','jerel93@example.net','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','jgFfWpVW7T','teacher','2024-06-22 17:19:03','2024-06-22 17:19:03'),(16,'Alejandra Mraz','vgutkowski@example.net','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','vAi0br7UdN','teacher','2024-06-22 17:19:03','2024-06-22 17:19:03'),(17,'Lowell Weber','ola.cummerata@example.com','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','gDUlSyr9eh','teacher','2024-06-22 17:19:03','2024-06-22 17:19:03'),(18,'Paula Padberg III','gcummings@example.org','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','xl3386j1Xl','teacher','2024-06-22 17:19:03','2024-06-22 17:19:03'),(19,'Mrs. Maggie Mayert','aurore76@example.net','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','IJ6LdWV0hz','teacher','2024-06-22 17:19:03','2024-06-22 17:19:03'),(20,'Mr. Gillian Monahan MD','reynolds.demetrius@example.org','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','bRK0wpMjnQ','teacher','2024-06-22 17:19:03','2024-06-22 17:19:03'),(21,'Mohammad Langosh','madelyn.littel@example.com','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','fK3ztUIz6M','teacher','2024-06-22 17:19:03','2024-06-22 17:19:03'),(22,'Ryan Hamill IV','maximillian93@example.com','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','LEHU5jsgjO','teacher','2024-06-22 17:19:03','2024-06-22 17:19:03'),(23,'Dr. Lynn Parker','darlene.ullrich@example.com','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','4VtVp5XhUN','adminstrator','2024-06-22 17:19:03','2024-06-22 17:19:03'),(24,'Giovani O\'Hara PhD','colby.runte@example.com','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','SapDh29MEn','adminstrator','2024-06-22 17:19:03','2024-06-22 17:19:03'),(25,'Dr. Richmond Baumbach I','herzog.bart@example.net','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','PW4dSnZOMx','adminstrator','2024-06-22 17:19:03','2024-06-22 17:19:03'),(26,'Lyda Kemmer','buckridge.austyn@example.com','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','tbhZ34rMGM','adminstrator','2024-06-22 17:19:03','2024-06-22 17:19:03'),(27,'Marvin Trantow','daniella72@example.net','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','IRKBGRedi2','adminstrator','2024-06-22 17:19:03','2024-06-22 17:19:03'),(28,'Mr. Pete Tromp DDS','nicholas99@example.org','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','O12kSeH7yP','adminstrator','2024-06-22 17:19:03','2024-06-22 17:19:03'),(29,'Silas Waelchi I','lavonne04@example.org','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','2Cvzkozce6','adminstrator','2024-06-22 17:19:03','2024-06-22 17:19:03'),(30,'Max McCullough','djacobson@example.org','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','yiiutEtCZd','adminstrator','2024-06-22 17:19:03','2024-06-22 17:19:03'),(31,'Edd Renner','jacky.johns@example.net','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','DBwe0byETo','adminstrator','2024-06-22 17:19:03','2024-06-22 17:19:03'),(32,'Emmitt Kovacek II','mozelle.mclaughlin@example.org','2024-06-22 17:19:03','$2y$12$2gPLsCzuTMVz9SwJw1/k9e1x11hPEnCifKW1mwJjgTqEhFgPRQiGy','9cLzLnfsGv','adminstrator','2024-06-22 17:19:03','2024-06-22 17:19:03');
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

-- Dump completed on 2024-06-22 20:20:02
