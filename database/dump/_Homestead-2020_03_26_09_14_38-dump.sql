-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: 192.168.10.10    Database: larasite
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2019_08_19_000000_create_failed_jobs_table',1),(3,'2020_03_19_105622_create_posts_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `post_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  KEY `posts_author_id_foreign` (`author_id`),
  CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,4,'Dodo replied very readily: \'but.','Dodo replied very readily: \'bu...',NULL,'SHE HAD THIS FIT--\" you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, who had been looking over their shoulders, that all the time they were filled with tears again as she said to herself, as usual. \'Come, there\'s half my plan done now! How puzzling all these strange Adventures of hers would, in the sea!\' cried the Mock Turtle said: \'I\'m too stiff. And the moral of THAT is--\"Take care of themselves.\"\' \'How fond.','2020-03-07 03:08:35','2020-03-07 03:08:35'),(2,4,'YOUR shoes done with?\' said the.','YOUR shoes done with?\' said th...',NULL,'Would not, could not, would not, could not, would not, could not, would not open any of them. \'I\'m sure I\'m not particular as to the Queen, and Alice, were in custody and.','2020-02-23 17:33:31','2020-02-23 17:33:31'),(4,3,'Do cats eat bats? Do.','Do cats eat bats? Do.',NULL,'Hatter. He had been to her, \'if we had the door of which was immediately suppressed by the way to hear the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked at the White Rabbit, who was gently brushing away some dead leaves that had made the whole party look so grave and anxious.).','2020-02-27 20:50:43','2020-02-27 20:50:43'),(5,2,'Alice.','Alice.',NULL,'The next witness would be quite as safe to stay with it as to size,\' Alice hastily replied; \'at least--at least I mean what I see\"!\' \'You might just as I\'d taken the highest tree in the other. \'I beg your acceptance of this was not a moment like a steam-engine when she turned away. \'Come back!\' the Caterpillar seemed to be two people. \'But it\'s no.','2020-03-04 11:52:27','2020-03-04 11:52:27'),(6,2,'Alice. One of the right-hand bit to.','Alice. One of the right-hand b...',NULL,'Alice. \'Off with his head!\' or \'Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'That\'s the first figure,\' said the Rabbit.','2020-03-06 21:03:23','2020-03-06 21:03:23'),(7,1,'Hatter added as an unusually large.','Hatter added as an unusually l...',NULL,'In the very tones of the bread-and-butter. Just at this moment the King, with an air of great dismay, and began whistling. \'Oh, there\'s no name signed at the cook took the least idea what you\'re doing!\' cried Alice, jumping up and went on: \'--that begins with an M--\' \'Why with an air of great relief. \'Now at OURS they had settled down in a wondering tone. \'Why, what a Gryphon is, look at it!\' This speech caused a remarkable sensation among the trees, a little door about.','2020-03-11 06:42:59','2020-03-11 06:42:59'),(8,3,'Pigeon had finished. \'As if it began.','Pigeon had finished. \'As if it...',NULL,'King said to Alice, and she tried the little door, so she went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty?\' he asked. \'Begin at the Queen, who had got its neck nicely straightened out, and was delighted to find herself still in sight, and no one listening, this time, and was beating her violently with its legs hanging down, but generally, just as I\'d taken the highest tree.','2020-03-09 15:47:22','2020-03-09 15:47:22'),(9,4,'Alice.','Alice.',NULL,'I beg your pardon!\' she exclaimed in a moment: she looked down, was an old Turtle--we used to read fairy-tales, I fancied that kind of authority over Alice. \'Stand up and to wonder what they\'ll do well enough; don\'t be particular--Here, Bill! catch hold of its mouth and began whistling. \'Oh, there\'s no room at all fairly,\' Alice began, in rather a complaining tone, \'and they drew all manner of things--everything that begins with an.','2020-02-24 01:35:31','2020-02-24 01:35:31'),(11,2,'I must, I must,\' the King say in a.','I must, I must,\' the King say ...',NULL,'There was certainly too much overcome to do it?\' \'In my youth,\' Father William replied to his son, \'I feared it might be hungry, in which the words don\'t FIT you,\' said the March Hare. \'Exactly so,\' said Alice. \'It must have a trial: For really this morning I\'ve.','2020-03-01 05:36:05','2020-03-01 05:36:05'),(12,1,'VERY good.','VERY good.',NULL,'Alice dodged behind a great deal too flustered to tell me who YOU are, first.\' \'Why?\' said the voice. \'Fetch me my gloves this moment!\' Then came a rumbling of little birds and beasts, as well as if a dish or kettle had been looking over their slates; \'but it seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure those are not the smallest notice of her little sister\'s dream. The long grass rustled at her.','2020-02-26 00:54:45','2020-02-26 00:54:45'),(13,4,'After these came the royal.','After these came the royal.',NULL,'KNOW IT TO BE TRUE--\" that\'s the queerest thing about it.\' \'She\'s in prison,\' the Queen in front of them, with her head!\' Those whom she sentenced were taken into custody by the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of its mouth, and addressed her in such a nice soft thing to get very tired of this. I vote the young lady tells us a story!\' said the Mock Turtle went on.','2020-03-01 08:53:07','2020-03-01 08:53:07'),(14,3,'She was looking up into the.','She was looking up into the.',NULL,'Alice; \'it\'s laid for a few yards off. The Cat seemed to rise like a steam-engine when she found to be lost: away went Alice after it, \'Mouse dear! Do come back in a voice of the March Hare was said to Alice; and Alice looked round, eager to see its meaning. \'And just as the large birds complained that they couldn\'t get them out of a well--\' \'What did they live at the end of every line: \'Speak roughly.','2020-03-03 10:26:35','2020-03-03 10:26:35'),(15,1,'Conqueror, whose cause was.','Conqueror, whose cause was.',NULL,'I sleep\" is the same thing as \"I sleep when I breathe\"!\' \'It IS the fun?\' said Alice. \'Did you speak?\' \'Not I!\' said the Dormouse. \'Write that down,\' the King said gravely, \'and go on crying in this affair, He trusts to you to leave the court; but on the glass table as before, \'It\'s all his fancy, that: he hasn\'t got no sorrow, you know. Please.','2020-03-04 21:01:19','2020-03-04 21:01:19'),(16,4,'FOOT, ESQ.','FOOT, ESQ.',NULL,'Dinah my dear! Let this be a grin, and she swam lazily about in the kitchen. \'When I\'M a Duchess,\' she said to Alice, and her face brightened up again.) \'Please your Majesty,\' he began. \'You\'re a very short time the Queen in front of them, with her arms round it as you can--\' \'Swim after them!\' screamed the Pigeon. \'I\'m NOT a serpent, I tell you!\' But she waited.','2020-03-16 21:40:45','2020-03-16 21:40:45'),(17,3,'Shakespeare, in the morning, just.','Shakespeare, in the morning, j...',NULL,'Mock Turtle, and to hear the words:-- \'I speak severely to my jaw, Has lasted the rest of the sort,\' said the King; and the cool fountains. CHAPTER VIII. The Queen\'s argument was, that she wanted to send the hedgehog had unrolled itself, and began smoking again. This time there could be no chance of getting up and said, \'That\'s right, Five! Always lay the blame on others!\' \'YOU\'D better not.','2020-02-24 13:50:37','2020-02-24 13:50:37'),(18,2,'Five, \'and I\'ll tell him--it.','Five, \'and I\'ll tell him--it.',NULL,'I shall ever see you again, you dear old thing!\' said Alice, quite forgetting her promise. \'Treacle,\' said a whiting before.\' \'I can see you\'re trying to box her own ears for having cheated herself in a great crowd assembled about them--all sorts of things.','2020-03-14 22:11:09','2020-03-14 22:11:09'),(19,1,'Alice. \'Why not?\' said the Dormouse; \'VERY.','Alice. \'Why not?\' said the Dor...',NULL,'March Hare. \'Yes, please do!\' but the cook and the procession came opposite to Alice, and looking.','2020-02-23 06:16:50','2020-02-23 06:16:50'),(20,1,'LITTLE larger.','LITTLE larger.',NULL,'It\'s the most curious thing I ever was at the door--I do wish I hadn\'t to bring but one; Bill\'s got the other--Bill! fetch it here, lad!--Here, put \'em up at the window, she suddenly spread out her hand in her lessons in here? Why, there\'s hardly room for YOU, and no one could possibly hear you.\' And certainly there was nothing on it (as she had not a bit of mushroom, and crawled.','2020-03-04 19:32:20','2020-03-04 19:32:20'),(21,4,'Post III','Post III','/storage/qKZEy9M0Uf86PSZP7zQhSc8AXH1v8DwQmKido0Gx.jpeg','Еще один пост','2020-03-19 16:39:57','2020-03-20 15:22:48'),(22,2,'Post II','Post II','/storage/7ATMcoZ5qRA3F11CSpmvScCWtnczOdB84eU46Rkk.jpeg','New text for Post 2','2020-03-19 17:14:30','2020-03-20 15:22:02'),(24,2,'Пост номер один','Пост номер один','/storage/3cJfsw1VmnZ1ZPMfs0FAFTkWmqBbaT1d8gb5v9EB.jpeg','Текст поста номер один + добавил текст','2020-03-20 15:21:47','2020-03-21 15:25:19');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Gino Schoen I','alessandro.runolfsson@example.com','2020-03-19 11:45:40','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','E5BaOUvNUT','2020-03-19 11:45:40','2020-03-19 11:45:40'),(2,'Tiffany Kuphal','aniyah.treutel@example.org','2020-03-19 11:45:40','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','B5fQc9UH7B','2020-03-19 11:45:40','2020-03-19 11:45:40'),(3,'Kelly Swaniawski','reichel.casper@example.com','2020-03-19 11:45:40','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','N5nERZbWY9','2020-03-19 11:45:40','2020-03-19 11:45:40'),(4,'Dr. Pink Weissnat','terrill.stark@example.com','2020-03-19 11:45:40','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Z69wKGRQyX','2020-03-19 11:45:40','2020-03-19 11:45:40');
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

-- Dump completed on 2020-03-26  9:14:38
