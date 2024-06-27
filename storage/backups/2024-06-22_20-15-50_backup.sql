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
INSERT INTO `administrators` VALUES (1,23,'+1 (267) 517-1366','1996-11-16','2024-06-22 17:13:03','2024-06-22 17:13:03'),(2,24,'(419) 965-6306','2008-10-17','2024-06-22 17:13:03','2024-06-22 17:13:03'),(3,25,'1-463-700-0438','2013-08-17','2024-06-22 17:13:03','2024-06-22 17:13:03'),(4,26,'(479) 238-9384','2015-12-19','2024-06-22 17:13:03','2024-06-22 17:13:03'),(5,27,'937-865-3460','1998-11-15','2024-06-22 17:13:03','2024-06-22 17:13:03'),(6,28,'(872) 429-5825','2011-04-19','2024-06-22 17:13:03','2024-06-22 17:13:03'),(7,29,'+15865929971','1979-11-29','2024-06-22 17:13:03','2024-06-22 17:13:03'),(8,30,'+12819186944','2011-03-11','2024-06-22 17:13:03','2024-06-22 17:13:03'),(9,31,'+19135844157','2017-04-29','2024-06-22 17:13:03','2024-06-22 17:13:03'),(10,32,'1-847-957-6799','2007-06-03','2024-06-22 17:13:03','2024-06-22 17:13:03');
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
INSERT INTO `contest_problem` VALUES (1,2,7,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(2,1,4,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(3,4,10,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(4,1,1,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(5,2,9,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(6,7,8,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(7,10,6,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(8,4,4,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(9,4,4,'2024-06-22 17:13:04','2024-06-22 17:13:04'),(10,1,3,'2024-06-22 17:13:04','2024-06-22 17:13:04');
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
INSERT INTO `contest_student` VALUES (1,5,9,0,'2024-06-22 17:13:04','2024-06-22 17:13:04'),(2,5,3,0,'2024-06-22 17:13:04','2024-06-22 17:13:04'),(3,3,10,0,'2024-06-22 17:13:04','2024-06-22 17:13:04'),(4,10,9,0,'2024-06-22 17:13:04','2024-06-22 17:13:04'),(5,8,8,0,'2024-06-22 17:13:04','2024-06-22 17:13:04'),(6,1,8,0,'2024-06-22 17:13:04','2024-06-22 17:13:04'),(7,5,4,0,'2024-06-22 17:13:04','2024-06-22 17:13:04'),(8,8,8,0,'2024-06-22 17:13:04','2024-06-22 17:13:04'),(9,2,8,0,'2024-06-22 17:13:04','2024-06-22 17:13:04'),(10,9,1,0,'2024-06-22 17:13:04','2024-06-22 17:13:04');
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
INSERT INTO `contests` VALUES (1,'dolorum',2,NULL,'2011-10-18','09:00:00',0,NULL,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(2,'repellendus',2,NULL,'1970-09-25','09:00:00',0,NULL,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(3,'vel',2,NULL,'2013-08-30','09:00:00',0,NULL,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(4,'impedit',2,NULL,'2015-02-16','09:00:00',0,NULL,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(5,'ut',2,NULL,'2021-08-10','09:00:00',0,NULL,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(6,'perferendis',2,NULL,'1994-10-06','09:00:00',0,NULL,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(7,'consequuntur',2,NULL,'1986-09-11','09:00:00',0,NULL,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(8,'totam',2,NULL,'1983-04-07','09:00:00',0,NULL,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(9,'provident',2,NULL,'1973-07-23','09:00:00',0,NULL,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(10,'harum',2,NULL,'1982-09-12','09:00:00',0,NULL,'2024-06-22 17:13:03','2024-06-22 17:13:03');
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
INSERT INTO `problem_tag` VALUES (1,5,7,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(2,5,9,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(3,9,5,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(4,4,5,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(5,4,5,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(6,10,10,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(7,2,8,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(8,7,6,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(9,3,4,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(10,8,6,'2024-06-22 17:13:03','2024-06-22 17:13:03');
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
INSERT INTO `problems` VALUES (1,'max val','Qui commodi et adipisci quo consequatur id et. Sunt itaque facilis omnis sit. Laudantium sed amet magnam labore.',2,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int a[x] ;\n                    for (int i = 0 ; i< x ; i++){cin >> a[i]}\n                    max = a[0] ;\n                    for (int i = 0 ; i< x ; i++){\n                        if (a[i] > max ) max = a[i] ;\n                    }\n                    cout << max;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,1,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(2,'max val','Ad est dolor ut perspiciatis quia accusantium nostrum exercitationem. Debitis beatae sed modi sint similique. Ullam cum velit quisquam quisquam assumenda possimus. Delectus nulla ad neque. Ut nisi non ducimus quisquam rerum.',2,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int a[x] ;\n                    for (int i = 0 ; i< x ; i++){cin >> a[i]}\n                    max = a[0] ;\n                    for (int i = 0 ; i< x ; i++){\n                        if (a[i] > max ) max = a[i] ;\n                    }\n                    cout << max;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,10,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(3,'add tow number','Possimus velit tempora consequatur nihil ad sapiente deleniti. Expedita aut optio aliquam officia. Culpa corporis magni omnis. In voluptatibus nam sint dolorem reiciendis quas.',0,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ; int y ;\n                    cin>>x >> y ;\n                    cout << x + y;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,10,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(4,'max val','Ut quod itaque aut excepturi esse. Provident sequi quasi tenetur voluptatem ut dolorem nisi dignissimos. Ad temporibus accusamus id ratione exercitationem.',2,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int a[x] ;\n                    for (int i = 0 ; i< x ; i++){cin >> a[i]}\n                    max = a[0] ;\n                    for (int i = 0 ; i< x ; i++){\n                        if (a[i] > max ) max = a[i] ;\n                    }\n                    cout << max;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,6,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(5,'add tow number','Culpa occaecati est et exercitationem sunt sit. Animi atque omnis dolorum est. Omnis nihil est odit sit et ut. Earum consectetur soluta minus unde.',0,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ; int y ;\n                    cin>>x >> y ;\n                    cout << x + y;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,7,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(6,'array sum','Sapiente nisi perferendis impedit odit et nostrum. Assumenda est voluptatem omnis id corrupti et enim. Aut aut facere dolores.',1,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int sum = 0 ;\n                    for (int i = 0 ; i< x ; i++){int k ; cin >> k ; sum+=k;}\n                    cout << sum ;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,2,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(7,'add tow number','Omnis incidunt quia dolores saepe. Non nulla quas praesentium officiis tempore et accusantium cumque. Harum veniam quia veritatis. Voluptas facilis voluptates et ut ipsa. Nihil molestias eveniet maxime qui dolorum culpa.',0,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ; int y ;\n                    cin>>x >> y ;\n                    cout << x + y;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,2,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(8,'max val','Dolorum omnis doloribus ut. Tempore ab nostrum est omnis quis corrupti. Minima ut est qui omnis facilis.',2,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int a[x] ;\n                    for (int i = 0 ; i< x ; i++){cin >> a[i]}\n                    max = a[0] ;\n                    for (int i = 0 ; i< x ; i++){\n                        if (a[i] > max ) max = a[i] ;\n                    }\n                    cout << max;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,6,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(9,'array sum','Et voluptatem omnis quasi voluptatem quae adipisci corrupti corrupti. Tenetur veritatis quia hic perspiciatis id sapiente iusto assumenda. Aspernatur consequatur quis qui dicta labore aut. Dolorum dolores ducimus facere accusantium non.',1,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int sum = 0 ;\n                    for (int i = 0 ; i< x ; i++){int k ; cin >> k ; sum+=k;}\n                    cout << sum ;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,5,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(10,'max val','Quo laboriosam autem iste autem ea qui. Maiores est est vero dolorem et quia.',2,'#include<iostream>\n                using namespace std ;\n                int main(){\n                    int x ;  ;\n                    cin>>x ;\n                    int a[x] ;\n                    for (int i = 0 ; i< x ; i++){cin >> a[i]}\n                    max = a[0] ;\n                    for (int i = 0 ; i< x ; i++){\n                        if (a[i] > max ) max = a[i] ;\n                    }\n                    cout << max;\n                    return 0 ;\n                }',1.00,0,'easy',0,NULL,NULL,1,6,'2024-06-22 17:13:03','2024-06-22 17:13:03');
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
INSERT INTO `solve_problem` VALUES (1,3,10,'Exercitationem nesciunt adipisci quam ut culpa dignissimos nihil autem. Vero ut in ipsum possimus sapiente minus ipsam optio. Ipsam officiis in quia a et.',0,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(2,8,10,'Molestiae id natus expedita totam fugit. Et cumque voluptas sit dolorem vel. A assumenda impedit est vero. Sed quo sequi inventore molestiae.',1,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(3,1,5,'Similique et voluptas dolores fugit itaque sint aut. Et alias minima debitis error neque. Voluptatem qui quos velit inventore dolores temporibus doloribus.',0,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(4,9,5,'At excepturi et sunt ut ipsam dicta voluptatem. Occaecati esse optio asperiores. Cupiditate rerum provident assumenda.',1,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(5,1,4,'Non ex et tempore id non. Impedit magni omnis maiores. Magni modi voluptas officiis dolorem.',0,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(6,3,10,'Sed qui provident aut ullam non voluptatum. Sint et est voluptas et. Voluptates quia nostrum vitae quidem minima. Amet voluptatum eum accusantium.',0,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(7,1,5,'Facilis ut est dolore vel voluptatum aut. Hic hic placeat sed. Explicabo suscipit omnis eum rerum neque impedit hic. Doloremque ut voluptatem est et in tempore perferendis.',0,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(8,5,3,'Veniam dolor vitae aliquid quia reiciendis. Eius cupiditate consectetur unde assumenda dolor quo soluta illo. Velit velit expedita dolorem beatae enim numquam officia.',0,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(9,7,8,'Vel aliquid totam voluptatum aut. Beatae ducimus illum ut ipsa itaque aliquid. Omnis ut dolore vitae et.',1,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(10,8,7,'Et dolores tempora omnis qui quas nostrum vel fuga. Omnis nesciunt fuga adipisci dolor. Laboriosam necessitatibus et autem ut.',0,'2024-06-22 17:13:03','2024-06-22 17:13:03');
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
INSERT INTO `students` VALUES (1,3,'1-847-232-9102',2,0,0,'1971-04-02',0,0,0,88206,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(2,4,'(717) 804-1781',2,0,0,'2022-03-17',0,0,0,4379,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(3,5,'+17652747873',2,0,0,'2011-01-08',0,0,0,6688,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(4,6,'+1 (424) 237-5402',2,0,0,'2024-02-19',0,0,0,73682,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(5,7,'+1.716.245.1921',2,0,0,'2018-03-16',0,0,0,43687,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(6,8,'681.913.5507',2,0,0,'1974-05-06',0,0,0,4231,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(7,9,'910-201-4292',2,0,0,'2012-09-13',0,0,0,64975,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(8,10,'+17408686631',2,0,0,'2015-02-22',0,0,0,46389,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(9,11,'+1-252-950-6520',2,0,0,'1976-04-11',0,0,0,78066,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(10,12,'203-594-2006',2,0,0,'1987-12-19',0,0,0,22269,'2024-06-22 17:13:03','2024-06-22 17:13:03');
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
INSERT INTO `subjects` VALUES (1,'est',15,30,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(2,'quas',15,30,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(3,'dignissimos',15,30,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(4,'nesciunt',15,30,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(5,'iure',15,30,'2024-06-22 17:13:03','2024-06-22 17:13:03');
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
INSERT INTO `tags` VALUES (1,'culpa','2024-06-22 17:13:03','2024-06-22 17:13:03'),(2,'vitae','2024-06-22 17:13:03','2024-06-22 17:13:03'),(3,'est','2024-06-22 17:13:03','2024-06-22 17:13:03'),(4,'totam','2024-06-22 17:13:03','2024-06-22 17:13:03'),(5,'rerum','2024-06-22 17:13:03','2024-06-22 17:13:03'),(6,'iure','2024-06-22 17:13:03','2024-06-22 17:13:03'),(7,'adipisci','2024-06-22 17:13:03','2024-06-22 17:13:03'),(8,'eaque','2024-06-22 17:13:03','2024-06-22 17:13:03'),(9,'omnis','2024-06-22 17:13:03','2024-06-22 17:13:03'),(10,'id','2024-06-22 17:13:03','2024-06-22 17:13:03');
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
INSERT INTO `teachers` VALUES (1,13,'(781) 941-8391','2016-10-03','2024-06-22 17:13:03','2024-06-22 17:13:03'),(2,14,'914.480.1982','1991-07-01','2024-06-22 17:13:03','2024-06-22 17:13:03'),(3,15,'+1.775.209.3830','1982-05-31','2024-06-22 17:13:03','2024-06-22 17:13:03'),(4,16,'+1.781.449.2046','2011-04-16','2024-06-22 17:13:03','2024-06-22 17:13:03'),(5,17,'907.269.0784','2016-09-28','2024-06-22 17:13:03','2024-06-22 17:13:03'),(6,18,'1-502-947-7384','1977-04-15','2024-06-22 17:13:03','2024-06-22 17:13:03'),(7,19,'+12409107434','2003-09-22','2024-06-22 17:13:03','2024-06-22 17:13:03'),(8,20,'(445) 322-9526','1977-06-13','2024-06-22 17:13:03','2024-06-22 17:13:03'),(9,21,'352-958-1461','1994-08-09','2024-06-22 17:13:03','2024-06-22 17:13:03'),(10,22,'+16182440200','2006-07-09','2024-06-22 17:13:03','2024-06-22 17:13:03');
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
INSERT INTO `test_cases` VALUES (1,'574',NULL,6,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(2,'992',NULL,2,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(3,'491',NULL,7,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(4,'266',NULL,3,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(5,'881',NULL,2,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(6,'107',NULL,8,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(7,'649',NULL,3,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(8,'321',NULL,9,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(9,'638',NULL,10,'2024-06-22 17:13:03','2024-06-22 17:13:03'),(10,'151',NULL,1,'2024-06-22 17:13:03','2024-06-22 17:13:03');
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
INSERT INTO `users` VALUES (1,'Ammar Jokhadar','DR.ammarJokhadar@gmail.com','2024-06-22 17:13:02','$2y$12$W/5GPsk/Zd5IGnB97Q5OW.Ft3HnW21.XvNilI9rqeWmK5wOrDC8r.','FbyzelLdwO','adminstrator','2024-06-22 17:13:02','2024-06-22 17:13:02'),(2,'Melvina Ritchie','ethan.dubuque@example.net','2024-06-22 17:13:02','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','BF14XaHVdF','teacher','2024-06-22 17:13:03','2024-06-22 17:13:03'),(3,'Dr. Savannah Feil','octavia.dibbert@example.com','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','ardFAjtm5S','student','2024-06-22 17:13:03','2024-06-22 17:13:03'),(4,'Garrison Kulas','gaylord.rodolfo@example.com','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','8FzeJQVEQK','student','2024-06-22 17:13:03','2024-06-22 17:13:03'),(5,'Ezekiel DuBuque','jterry@example.org','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','vdlbCrVgQ3','student','2024-06-22 17:13:03','2024-06-22 17:13:03'),(6,'Narciso Auer','jessyca10@example.org','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','c3PIi7sSKZ','student','2024-06-22 17:13:03','2024-06-22 17:13:03'),(7,'Dr. Kaitlyn Bartell','eledner@example.net','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','E7nt6RJaUd','student','2024-06-22 17:13:03','2024-06-22 17:13:03'),(8,'Prof. Chase Turcotte V','gustave97@example.com','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','9bFY1azeAQ','student','2024-06-22 17:13:03','2024-06-22 17:13:03'),(9,'Braeden Hartmann','eaufderhar@example.net','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','B0mraOi1io','student','2024-06-22 17:13:03','2024-06-22 17:13:03'),(10,'Zack Huel','wmcclure@example.org','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','d1MW8mci9a','student','2024-06-22 17:13:03','2024-06-22 17:13:03'),(11,'Lonie Gorczany','mcdermott.kailey@example.org','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','MBdhraxiLQ','student','2024-06-22 17:13:03','2024-06-22 17:13:03'),(12,'Mrs. Retta Walsh','xheidenreich@example.org','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','9ktH6w5z6Q','student','2024-06-22 17:13:03','2024-06-22 17:13:03'),(13,'Mrs. Viviane Wilkinson','josefina.gorczany@example.com','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','eboN66Xvoe','teacher','2024-06-22 17:13:03','2024-06-22 17:13:03'),(14,'Ellen Wisozk','ykozey@example.com','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','TM0glLZ9BQ','teacher','2024-06-22 17:13:03','2024-06-22 17:13:03'),(15,'Jessie Crona','fskiles@example.com','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','LNDzSv1KNe','teacher','2024-06-22 17:13:03','2024-06-22 17:13:03'),(16,'Winfield Durgan','swilkinson@example.net','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','SctoOEjnBJ','teacher','2024-06-22 17:13:03','2024-06-22 17:13:03'),(17,'Chelsey Goyette','garth08@example.net','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','rltCLel4yQ','teacher','2024-06-22 17:13:03','2024-06-22 17:13:03'),(18,'Chasity Fadel','krajcik.melisa@example.net','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','ruTuShF490','teacher','2024-06-22 17:13:03','2024-06-22 17:13:03'),(19,'Dr. Hermann Mann MD','medhurst.zoey@example.net','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','C750T4D7u2','teacher','2024-06-22 17:13:03','2024-06-22 17:13:03'),(20,'Mrs. Pink VonRueden III','considine.russel@example.net','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','jo9L1Xw0vH','teacher','2024-06-22 17:13:03','2024-06-22 17:13:03'),(21,'Syble Swaniawski','ila.wyman@example.org','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','nEslBHYSIp','teacher','2024-06-22 17:13:03','2024-06-22 17:13:03'),(22,'Ross Cummings','gavin33@example.com','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','jLkUyvJhKz','teacher','2024-06-22 17:13:03','2024-06-22 17:13:03'),(23,'Jerrold Schowalter MD','zcorwin@example.com','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','1e2LVDKc7X','adminstrator','2024-06-22 17:13:03','2024-06-22 17:13:03'),(24,'Hilario Barton Sr.','champlin.enos@example.com','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','ewrrJcq6YV','adminstrator','2024-06-22 17:13:03','2024-06-22 17:13:03'),(25,'Amelie Zemlak','walsh.rosanna@example.net','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','qYvTq7YADH','adminstrator','2024-06-22 17:13:03','2024-06-22 17:13:03'),(26,'Mya Stiedemann','lionel45@example.net','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','LErX2BtBaN','adminstrator','2024-06-22 17:13:03','2024-06-22 17:13:03'),(27,'Layla Hoppe','crystel43@example.net','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','HwvXn6jWLX','adminstrator','2024-06-22 17:13:03','2024-06-22 17:13:03'),(28,'Hubert Witting','javier55@example.org','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','QbdWQylI2U','adminstrator','2024-06-22 17:13:03','2024-06-22 17:13:03'),(29,'Prof. Hellen Rice','alysha.swift@example.net','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','9aKq7GzHIJ','adminstrator','2024-06-22 17:13:03','2024-06-22 17:13:03'),(30,'Yessenia Huel','unikolaus@example.org','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','JH9HCncjeO','adminstrator','2024-06-22 17:13:03','2024-06-22 17:13:03'),(31,'Mr. Jamel Parisian DVM','celia63@example.net','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','XF7nvJJ0A9','adminstrator','2024-06-22 17:13:03','2024-06-22 17:13:03'),(32,'Mrs. Charity Effertz','mia24@example.net','2024-06-22 17:13:03','$2y$12$doGiti8fFykkisXNMDRZDutcH6c2NpXAwndXDyrUm9HiDqMtaiK/O','9NqCApUL1b','adminstrator','2024-06-22 17:13:03','2024-06-22 17:13:03');
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

-- Dump completed on 2024-06-22 20:15:50
