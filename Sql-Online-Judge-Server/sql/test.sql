-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: sql_online_judge
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `name` varchar(30) NOT NULL,
  `password` varchar(45) NOT NULL,
  `session` varchar(128) DEFAULT NULL,
  `extra` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin','123456','1f249a747f516cd74fe03d9ffdd846bb2599a065',NULL);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idQuestion` int NOT NULL,
  `sql` varchar(400) NOT NULL,
  `json` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkQuestion_Answer` (`idQuestion`),
  CONSTRAINT `fkQuestion_Answer` FOREIGN KEY (`idQuestion`) REFERENCES `question` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES (2,3,'SELECT a FROM test;','{\"select\": {\"value\": \"a\"}, \"from\": \"test\"}'),(10,7,'SELECT sid, name FROM student WHERE name NOT LIKE \'张%\' AND name NOT LIKE \'李%\' AND name NOT LIKE \'王%\'','{\"select\": [{\"value\": \"sid\"}, {\"value\": \"name\"}], \"from\": \"student\", \"where\": {\"and\": [{\"not_like\": [\"name\", {\"literal\": \"\\u5f20%\"}]}, {\"not_like\": [\"name\", {\"literal\": \"\\u674e%\"}]}, {\"not_like\": [\"name\", {\"literal\": \"\\u738b%\"}]}]}}'),(11,26,'SELECT FirstName, LastName, City, State FROM Person LEFT JOIN Address ON Person.PersonId = Address.PersonId','{\"select\": [{\"value\": \"FirstName\"}, {\"value\": \"LastName\"}, {\"value\": \"City\"}, {\"value\": \"State\"}], \"from\": [\"Person\", {\"left join\": \"Address\", \"on\": {\"eq\": [\"Person.PersonId\", \"Address.PersonId\"]}}]}'),(12,28,'SELECT a.NAME AS Employee1 FROM Employee1 AS a JOIN Employee1 AS b ON a.ManagerId = b.Id AND a.Salary > b.Salary','{\"select\": {\"value\": \"a.NAME\", \"name\": \"Employee1\"}, \"from\": [{\"value\": \"Employee1\", \"name\": \"a\"}, {\"join\": {\"name\": \"b\", \"value\": \"Employee1\"}, \"on\": {\"and\": [{\"eq\": [\"a.ManagerId\", \"b.Id\"]}, {\"gt\": [\"a.Salary\", \"b.Salary\"]}]}}]}'),(13,29,'SELECT Customers1.name AS Customers1 FROM Customers1 LEFT JOIN Orders ON Customers1.Id = Orders.CustomerId WHERE Orders.CustomerId IS NULL ;','{\"select\": {\"value\": \"Customers1.name\", \"name\": \"Customers1\"}, \"from\": [\"Customers1\", {\"left join\": \"Orders\", \"on\": {\"eq\": [\"Customers1.Id\", \"Orders.CustomerId\"]}}], \"where\": {\"missing\": \"Orders.CustomerId\"}}'),(14,31,'SELECT T1.Id FROM Weather T1 JOIN Weather T2 ON T1.Id=(T2.Id+1) WHERE T1.Temperature>T2.Temperature','{\"select\": {\"value\": \"T1.Id\"}, \"from\": [{\"value\": \"Weather\", \"name\": \"T1\"}, {\"join\": {\"name\": \"T2\", \"value\": \"Weather\"}, \"on\": {\"eq\": [\"T1.Id\", {\"add\": [\"T2.Id\", 1]}]}}], \"where\": {\"gt\": [\"T1.Temperature\", \"T2.Temperature\"]}}'),(15,31,'SELECT T1.Id FROM Weather T1 JOIN Weather T2 ON T1.Id=(T2.Id+1) WHERE T1.Temperature>T2.Temperature','{\"select\": {\"value\": \"T1.Id\"}, \"from\": [{\"value\": \"Weather\", \"name\": \"T1\"}, {\"join\": {\"name\": \"T2\", \"value\": \"Weather\"}, \"on\": {\"eq\": [\"T1.Id\", {\"add\": [\"T2.Id\", 1]}]}}], \"where\": {\"gt\": [\"T1.Temperature\", \"T2.Temperature\"]}}'),(16,32,'SELECT * FROM Logs l1, Logs l2, Logs l3 WHERE l1.Id = l2.Id - 1 AND l2.Id = l3.Id - 1 AND l1.Num = l2.Num AND l2.Num = l3.Num ;','{\"select\": \"*\", \"from\": [{\"value\": \"Logs\", \"name\": \"l1\"}, {\"value\": \"Logs\", \"name\": \"l2\"}, {\"value\": \"Logs\", \"name\": \"l3\"}], \"where\": {\"and\": [{\"eq\": [\"l1.Id\", {\"sub\": [\"l2.Id\", 1]}]}, {\"eq\": [\"l2.Id\", {\"sub\": [\"l3.Id\", 1]}]}, {\"eq\": [\"l1.Num\", \"l2.Num\"]}, {\"eq\": [\"l2.Num\", \"l3.Num\"]}]}}'),(17,34,'SELECT (SELECT DISTINCT Salary FROM Employee ORDER BY Salary DESC LIMIT 1 OFFSET 1) AS SecondHighestSalary ;','{\"select\": {\"value\": {\"select\": {\"value\": {\"distinct\": {\"value\": \"Salary\"}}}, \"from\": \"Employee\", \"orderby\": {\"value\": \"Salary\", \"sort\": \"desc\"}, \"offset\": 1, \"limit\": 1}, \"name\": \"SecondHighestSalary\"}}'),(18,34,'SELECT IFNULL( (SELECT DISTINCT Salary FROM Employee ORDER BY Salary DESC LIMIT 1 OFFSET 1), NULL) AS SecondHighestSalary','{\"select\": {\"value\": {\"ifnull\": [{\"select\": {\"value\": {\"distinct\": {\"value\": \"Salary\"}}}, \"from\": \"Employee\", \"orderby\": {\"value\": \"Salary\", \"sort\": \"desc\"}, \"offset\": 1, \"limit\": 1}, null]}, \"name\": \"SecondHighestSalary\"}}'),(19,14,'SELECT sid, name FROM student WHERE name NOT LIKE \'张%\' AND name NOT LIKE \'李%\' AND name NOT LIKE \'王%\'','{\"select\": [{\"value\": \"sid\"}, {\"value\": \"name\"}], \"from\": \"student\", \"where\": {\"and\": [{\"not_like\": [\"name\", {\"literal\": \"\\u5f20%\"}]}, {\"not_like\": [\"name\", {\"literal\": \"\\u674e%\"}]}, {\"not_like\": [\"name\", {\"literal\": \"\\u738b%\"}]}]}}'),(20,15,'SELECT substr(name,1,1) second_name, count(sid) p_count FROM student GROUP BY substr(name,1,1)','{\"select\": [{\"value\": {\"substr\": [\"name\", 1, 1]}, \"name\": \"second_name\"}, {\"value\": {\"count\": \"sid\"}, \"name\": \"p_count\"}], \"from\": \"student\", \"groupby\": {\"value\": {\"substr\": [\"name\", 1, 1]}}}'),(21,15,'SELECT substr(name,1,1) second_name, count(sid) p_count FROM student GROUP BY substr(name,1,1)','{\"select\": [{\"value\": {\"substr\": [\"name\", 1, 1]}, \"name\": \"second_name\"}, {\"value\": {\"count\": \"sid\"}, \"name\": \"p_count\"}], \"from\": \"student\", \"groupby\": {\"value\": {\"substr\": [\"name\", 1, 1]}}}');
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insert`
--

DROP TABLE IF EXISTS `insert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insert` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idTable` int NOT NULL,
  `sql` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idTable_idx` (`idTable`),
  CONSTRAINT `fkTable_Insert` FOREIGN KEY (`idTable`) REFERENCES `table` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insert`
--

LOCK TABLES `insert` WRITE;
/*!40000 ALTER TABLE `insert` DISABLE KEYS */;
INSERT INTO `insert` VALUES (5,4,'INSERT INTO test VALUES(\'1\', \'2\')'),(6,4,'INSERT INTO test VALUES(\'2\', \'3\')'),(7,4,'INSERT INTO test VALUES(\'3\', \'4\')'),(8,7,'INSERT INTO student VALUES(\'201800000001\', \'张三\', \'男\')'),(9,7,'INSERT INTO student VALUES(\'201800000002\', \'李四\', \'女\')'),(10,7,'INSERT INTO student VALUES(\'201800000003\', \'王五\', \'男\')'),(11,7,'INSERT INTO student VALUES(\'201800000004\', \'赵六\', \'男\')'),(12,8,'INSERT INTO Person VALUES(\'1\', \'Wang\', \'Allen\')'),(13,9,'INSERT INTO Address VALUES(\'1\', \'2\', \'New York City\', \'New York\')'),(14,11,'INSERT INTO Employee1 VALUES(\'1\', \'Joe\', \'70000\', \'3\')'),(15,11,'INSERT INTO Employee1 VALUES(\'2\', \'Henry\', \'80000\', \'4\')'),(16,11,'INSERT INTO Employee1 VALUES(\'3\', \'Sam\', \'90000\', \'None\')'),(17,11,'INSERT INTO Employee1 VALUES(\'4\', \'Max\', \'60000\', \'None\')'),(18,13,'INSERT INTO Customers1 VALUES(\'1\', \'Joe\')'),(19,13,'INSERT INTO Customers1 VALUES(\'2\', \'Henry\')'),(20,13,'INSERT INTO Customers1 VALUES(\'3\', \'Sam\')'),(21,13,'INSERT INTO Customers1 VALUES(\'4\', \'Max\')'),(22,14,'INSERT INTO Orders VALUES(\'1\', \'3\')'),(23,14,'INSERT INTO Orders VALUES(\'2\', \'1\')'),(25,18,'INSERT INTO Employee VALUES(\'1\', \'Joe\', \'70000\', \'1\')'),(26,18,'INSERT INTO Employee VALUES(\'2\', \'Jim\', \'90000\', \'1\')'),(27,18,'INSERT INTO Employee VALUES(\'3\', \'Henry\', \'80000\', \'2\')'),(28,18,'INSERT INTO Employee VALUES(\'4\', \'Sam\', \'60000\', \'2\')'),(29,18,'INSERT INTO Employee VALUES(\'5\', \'Max\', \'90000\', \'1\')'),(30,16,'INSERT INTO Department VALUES(\'1\', \'IT\')'),(31,16,'INSERT INTO Department VALUES(\'2\', \'Sales\')'),(32,19,'INSERT INTO Weather VALUES(\'1\', \'2015-01-01\', \'10\')'),(33,19,'INSERT INTO Weather VALUES(\'2\', \'2015-01-02\', \'25\')'),(34,19,'INSERT INTO Weather VALUES(\'3\', \'2015-01-03\', \'20\')'),(35,19,'INSERT INTO Weather VALUES(\'4\', \'2015-01-04\', \'30\')'),(36,20,'INSERT INTO Logs VALUES(\'1\', \'1\')'),(37,20,'INSERT INTO Logs VALUES(\'2\', \'1\')'),(38,20,'INSERT INTO Logs VALUES(\'3\', \'1\')'),(39,20,'INSERT INTO Logs VALUES(\'4\', \'2\')'),(40,20,'INSERT INTO Logs VALUES(\'5\', \'1\')'),(41,20,'INSERT INTO Logs VALUES(\'6\', \'2\')'),(42,20,'INSERT INTO Logs VALUES(\'7\', \'2\')'),(43,21,'INSERT INTO Logs VALUES(\'1\', \'john@example.com\')'),(44,21,'INSERT INTO Logs VALUES(\'2\', \'bob@example.com\')'),(45,21,'INSERT INTO Logs VALUES(\'2\', \'john@example.com\')'),(46,22,'INSERT INTO Employee VALUES(\'1\', \'100\')'),(47,22,'INSERT INTO Employee VALUES(\'2\', \'200\')'),(48,22,'INSERT INTO Employee VALUES(\'3\', \'300\')'),(50,23,'INSERT INTO student VALUES(\'201800000001\', \'张三\', \'男\', \'\', \'\', \'1\', \'1\')'),(51,23,'INSERT INTO student VALUES(\'201800000002\', \'李四\', \'女\', \'\', \'\', \'1\', \'2\')'),(52,23,'INSERT INTO student VALUES(\'201800000003\', \'王五\', \'男\', \'\', \'\', \'2\', \'1\')'),(53,23,'INSERT INTO student VALUES(\'201800000004\', \'赵六\', \'女\', \'\', \'\', \'2\', \'2\')');
/*!40000 ALTER TABLE `insert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idSchema` int NOT NULL,
  `title` varchar(1000) NOT NULL,
  `text` varchar(5000) NOT NULL,
  `score` int NOT NULL DEFAULT '5',
  `result` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `idSchema_idx` (`idSchema`),
  CONSTRAINT `fkSchema_Question` FOREIGN KEY (`idSchema`) REFERENCES `schema` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (3,9,'test','查询std数据库中test表中的a属性',100,'{\"data\": [[1], [2], [3]], \"len\": 3}'),(7,9,'查询','查询所有不姓张、不姓李、也不姓王的学生的学号 sid、姓名 name',100,'{\"data\": [[\"201800000004\", \"\\u8d75\\u516d\"]], \"len\": 1}'),(8,12,'2.1','找出没有选修任何课程的学生的学号、姓名(即没有选课记录的学生）。',100,NULL),(9,12,'2.2','找出至少选修了学号为“200900130417”的学生所选修的一门课的学生的学号、姓名(不包含这名同学)。',100,NULL),(10,12,'2.3','找出至少选修了一门其先行课程号为“300002”号课程的学生的学号、姓名。',100,NULL),(11,12,'2.4','找出选修了“操作系统”并且也选修了“数据结构”的学生的学号、姓名。',100,NULL),(12,12,'2.5','查询 20 岁的所有有选课的学生的学号、姓名、平均成绩(avg_score，此为列名，下同)（平均成绩四舍 五入到个位）、总成绩(sum_score) Test2_05 有四个列，并且列名必须是：sid、name、avg_score、sum_score。通过下面方式实现列名 定义： create or replace view test2_05 as select sid,name，（表达式） avg_score,（表达式） sum_score from …… ',100,NULL),(13,12,'2.6','查询所有课的最高成绩、最高成绩人数，test2_06 有四个列：课程号 cid、课程名称 name、最高成绩 max_score、最高成绩人数 max_score_count（一个学生同一门课成绩都是第一，只计一次,需要考虑刷 成绩情况，一个同学选了一个课程多次，两次都是最高分）。如果没有学生选课，则最高成绩为空值, 最高成绩人数为零。 提示：参考讲义关于标量子查询（只返回包含单个属性的单个元组）。',100,NULL),(14,12,'2.7','查询所有不姓张、不姓李、也不姓王的学生的学号 sid、姓名 name ',100,'{\"data\": [[\"201800000004\", \"\\u8d75\\u516d\"]], \"len\": 1}'),(15,12,'2.8','查询学生表中每一个姓氏及其人数（不考虑复姓），test2_08 有两个列：second_name、p_count ',100,'{\"data\": [[\"\\u5f20\", 1], [\"\\u674e\", 1], [\"\\u738b\", 1], [\"\\u8d75\", 1]], \"len\": 4}'),(16,12,'2.9','查询选修了 300003 号课程的学生的 sid、name、score 10． 找出同一个同学同一门课程有两次或以上不及格的所有学生的学号、姓名（即一门课程需要补考两次 或以上的学生的学号、姓名）。',100,NULL),(17,12,'3.1','将Student_31 及数据复制到主用户的表 test3_01(注意：test3_xx 要建成表不是视图， 否则删除数据时会显示无此权限)，删除表中的学号不全是数字的那些错误数据，学号应该是数字组成， 不能够包含字母空格等非数字字符。 ',100,NULL),(18,12,'3.2','将Student_31 及数据复制到主用户的表 test3_02，删除表中的出生日期和年龄(截止到 2012 年的年龄，即年龄=2012-出生年份)不一致的那些错误数据。',100,NULL),(19,12,'3.3','将Student_31 及数据复制到主用户的表 test3_03，删除表中的性别有错误的那些错误数 据（性别只能够是“男”、“女”或者空值）。',100,NULL),(20,12,'3.4','将Student_31 及数据复制到主用户的表 test3_04，删除表中的院系名称有空格的、院系 名称为空值的或者院系名称小于 3 个字的那些错误数据。',100,NULL),(21,12,'3.5','将Student_31 及数据复制到主用户的表 test3_05，删除表中的班级不规范的那些错误数 据，不规范是指和大多数不一致。 ',100,NULL),(22,12,'3.6',' 将 pub 用户下的 Student_31 及数据复制到主用户的表 test3_06，删除表中的错误数据，不规范的数据 也被认为是那些错误数据。 学号不全是数字； 出生日期和年龄不一致的(年龄=2012-出生年份)； 姓名有空格的或者长度小于 2 个字的；函数 length()返回字符串长度。  性别有错误的（只能够是“男”、“女”、空值）； 院系名称有空格的、院系名称为空值的； 院系名称小于 3 个字的；  班级数据有错误的（需要先找到班级里面的错误）。 保留最后全部正确的数据。',100,NULL),(23,12,'3.7','将Student_course_32 及数据复制到主用户的表 test3_07，删除其中的错误数据，错误第 16 页 共 34 页 指如下情况： 学号在学生信息 pub.student 中不存在的；',100,NULL),(24,12,'3.8','将Student_course_32 及数据复制到主用户的表 test3_08，删除其中的错误数据，错误 指如下情况： 课程号和教师编号在教师授课表 pub.teacher_course 中不同时存在的，即没有该教师教该课程； ',100,NULL),(25,12,'3.9','将Student_course_32 及数据复制到主用户的表 test3_09，删除其中的错误数据，错误 指如下情况： 成绩数据有错误（需要先找到成绩里面的错误）。 这个题知识点是学会用 SQL 找出错误数据，而不是用人工办法找错误数据。 提示：寻找不规范有很多解决思路，可以去对比大纲最后的提示。',100,NULL),(26,13,'Combine Two Tables','Write a SQL query for a report that provides the following information for each person in the Person table, regardless if there is an address for each of those people:  FirstName, LastName, City, State',100,'{\"data\": [[\"Wang\", \"Allen\", null, null]], \"len\": 1}'),(28,13,'Employees Earning More Than Their Managers','Given the Employee1 table, write a SQL query that finds out employees who earn more than their managers. For the above table, Joe is the only employee who earns more than his manager.',100,'{\"data\": [[\"Henry\"]], \"len\": 1}'),(29,13,'Customers Who Never Order','Suppose that a website contains two tables, the Customers table and the Orders table. Write a SQL query to find all customers who never order anything.',100,'{\"data\": [[\"Henry\"], [\"Max\"]], \"len\": 2}'),(30,13,'Department Highest Salary','Write a SQL query to find employees who have the highest salary in each of the departments. For the above tables, your SQL query should return the following rows (order of rows does not matter).',100,NULL),(31,15,'Rising Temperature','Write an SQL query to find all dates\' id with higher temperature compared to its previous dates (yesterday).  Return the result table in any order.  The query result format is in the following example:',100,'{\"data\": [[2], [4]], \"len\": 2}'),(32,16,'Consecutive Numbers','Write an SQL query to find all numbers that appear at least three times consecutively.  Return the result table in any order.',100,'{\"data\": [[1, 1, 2, 1, 3, 1]], \"len\": 1}'),(33,17,'Delete Duplicate Emails','Write a SQL query to delete all duplicate email entries in a table named Person, keeping only unique emails based on its smallest Id.',100,NULL),(34,18,'Second Highest Salary','Write a SQL query to get the second highest salary from the Employee table.',100,'{\"data\": [[200]], \"len\": 1}');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema`
--

DROP TABLE IF EXISTS `schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `path` varchar(200) NOT NULL,
  `keywords` varchar(10000) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path_UNIQUE` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema`
--

LOCK TABLES `schema` WRITE;
/*!40000 ALTER TABLE `schema` DISABLE KEYS */;
INSERT INTO `schema` VALUES (9,'std','db\\std.db','std a b t1 test sid name sex student','123'),(12,'db1','db\\db1.db','db1 sid name sex age birthday dname class student',''),(13,'lc','db\\lc.db','lc PersonId FirstName LastName Person AddressId City State Address If Id Name Salary ManagerId Employee1 Customers1 CustomerId Orders',''),(14,'Department Highest Salary','db\\Department Highest Salary.db','Department Highest Salary Id Name DepartmentId Employee',''),(15,'Rising Temperature','db\\Rising Temperature.db','Rising Temperature Id RecordDate Weather',''),(16,' Consecutive Numbers','db\\ Consecutive Numbers.db',' Consecutive Numbers Id Num Logs',''),(17,'Delete Duplicate Emails','db\\Delete Duplicate Emails.db','Delete Duplicate Emails Id Email Logs',''),(18,'Second Highest Salary','db\\Second Highest Salary.db','Second Highest Salary Id Employee','');
/*!40000 ALTER TABLE `schema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `segmentation`
--

DROP TABLE IF EXISTS `segmentation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `segmentation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idAnswer` int NOT NULL,
  `rank` int NOT NULL,
  `score` int NOT NULL,
  `data` text NOT NULL,
  `extra` text,
  PRIMARY KEY (`id`),
  KEY `idAnswer_idx` (`idAnswer`),
  CONSTRAINT `fkAnswer_Segmentation` FOREIGN KEY (`idAnswer`) REFERENCES `answer` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segmentation`
--

LOCK TABLES `segmentation` WRITE;
/*!40000 ALTER TABLE `segmentation` DISABLE KEYS */;
INSERT INTO `segmentation` VALUES (3,2,0,50,'SELECT a',NULL),(4,2,1,50,'FROM test',NULL),(11,10,0,17,'SELECT sid , name',NULL),(12,10,1,17,'FROM student',NULL),(13,10,2,17,'WHERE name',NULL),(14,10,3,17,'NOT LIKE \' 张',NULL),(15,10,4,17,'% \' AND name NOT',NULL),(16,10,5,17,'LIKE \' 李 % \' AND',NULL),(17,11,0,25,'SELECT FirstName , LastName , City , State',NULL),(18,11,1,25,'FROM Person',NULL),(19,11,2,25,'LEFT JOIN',NULL),(20,11,3,25,'Address ON Person.PersonId',NULL),(21,12,0,20,'SELECT a.NAME',NULL),(22,12,1,20,'AS Employee1',NULL),(23,12,2,20,'FROM a',NULL),(24,12,3,20,'Employee1 AS',NULL),(25,12,4,20,'JOIN Employee1 AS b ON a.ManagerId',NULL),(26,13,0,17,'SELECT Customers1.name',NULL),(27,13,1,17,'AS Customers1',NULL),(28,13,2,17,'FROM Customers1',NULL),(29,13,3,17,'LEFT JOIN Orders',NULL),(30,13,4,17,'ON',NULL),(31,13,5,17,'Customers1.Id = Orders.CustomerId',NULL),(32,16,0,20,'SELECT *',NULL),(33,16,1,20,'FROM Logs l1 , Logs',NULL),(34,16,2,20,'l2 , Logs l3 1 1 = AND - l1.Num l2.Num',NULL),(35,16,3,20,'WHERE = l1.Id - l2.Id',NULL),(36,16,4,20,'AND l2.Id = l3.Id',NULL),(37,19,0,17,'SELECT sid , name',NULL),(38,19,1,17,'FROM student',NULL),(39,19,2,17,'WHERE name',NULL),(40,19,3,17,'NOT LIKE \' 张',NULL),(41,19,4,17,'% \' AND name NOT',NULL),(42,19,5,17,'LIKE \' 李 % \' AND',NULL);
/*!40000 ALTER TABLE `segmentation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `session` varchar(128) DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `session_UNIQUE` (`session`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('1','123456','cb1bf0de744e5050f87e72ae7d8125070366d080','123'),('2','123456',NULL,'456');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submit`
--

DROP TABLE IF EXISTS `submit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idStudent` varchar(15) NOT NULL,
  `idQuestion` int NOT NULL,
  `idAnswer` int NOT NULL,
  `score` int NOT NULL,
  `answer` varchar(300) NOT NULL,
  `correct` varchar(300) NOT NULL,
  `segmentJson` varchar(5000) NOT NULL,
  `spelling` int NOT NULL,
  `type` int NOT NULL,
  `result` varchar(5000) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `info` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idStudent_idx` (`idStudent`),
  KEY `idQuestion_idx` (`idQuestion`),
  KEY `fkAnswer_Submit_idx` (`idAnswer`),
  CONSTRAINT `fkAnswer_Submit` FOREIGN KEY (`idAnswer`) REFERENCES `answer` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkQuestion_Submit` FOREIGN KEY (`idQuestion`) REFERENCES `question` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkStudent_Submit` FOREIGN KEY (`idStudent`) REFERENCES `student` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submit`
--

LOCK TABLES `submit` WRITE;
/*!40000 ALTER TABLE `submit` DISABLE KEYS */;
INSERT INTO `submit` VALUES (76,'1',3,2,0,'12345','12345','\"{\\\"compare\\\": []}\"',0,3,'near \"12345\": syntax error','2021-06-07 08:29:21','0 0 0 0 0\nnear \"12345\": syntax error'),(77,'1',3,2,99,'select a from test;','SELECT a FROM test','\"{\\\"compare\\\": []}\"',1,1,'{\"data\": [[1], [2]], \"len\": 2}','2021-06-07 08:29:57','1 1 1 1 1 1 0 1 0 1 1 1 1 0 0.889 0.889 0.889 0.889 0.889\n'),(78,'1',3,2,100,'select a from test;','SELECT a FROM test;','\"{\\\"compare\\\": []}\"',0,0,'{\"data\": [[1], [2]], \"len\": 2}','2021-06-07 08:30:58','1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0\n'),(83,'1',3,2,100,'select a from test;','SELECT a FROM test;','\"{\\\"compare\\\": []}\"',0,0,'{\"data\": [[1], [2]], \"len\": 2}','2021-06-07 14:15:05','1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0\n'),(84,'1',3,2,100,'SELECT a FROM test;','SELECT a FROM test;','\"{\\\"compare\\\": []}\"',0,0,'{\"data\": [[1], [2]], \"len\": 2}','2021-06-08 08:14:55','1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0\n'),(85,'1',3,2,99,'SELECT a FRM test;','SELECT a FROM test;','\"{\\\"compare\\\": []}\"',1,1,'{\"data\": [[1], [2]], \"len\": 2}','2021-06-08 08:15:10','1 1 1 1 1 1 0 1 0 0.857 0.857 0.857 0 1 1 1 1 0\n'),(86,'1',3,2,0,'select a for test;','SELECT a FOR test;','\"{\\\"compare\\\": []}\"',0,3,'near \"test\": syntax error','2021-06-09 07:42:08','1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 0\nnear \"test\": syntax error'),(87,'1',3,2,99,'select a fro test;','SELECT a FROM test;','\"{\\\"compare\\\": []}\"',1,1,'{\"data\": [[1], [2]], \"len\": 2}','2021-06-09 07:42:26','1 1 1 1 1 1 0 1 0 0.857 0.857 0.857 0 1 1 1 1 0\n'),(88,'1',3,2,0,'SELECT a FRO test;','SELECT a ROW test;','\"{\\\"compare\\\": []}\"',1,3,'near \"test\": syntax error','2021-06-09 08:54:04','1 1 1 1 1 1 0 1 0 0.667 0.667 0.667 0 1 1 1 1 0\nnear \"test\": syntax error'),(89,'1',3,2,99,'SELECT a Fro test;','SELECT a FROM test;','\"{\\\"compare\\\": []}\"',1,1,'{\"data\": [[1], [2], [3]], \"len\": 3}','2021-06-09 08:55:03','1 1 1 1 1 1 0 1 0 0.857 0.857 0.857 0 1 1 1 1 0\n'),(90,'1',7,10,0,'select sid, name from student\nwhere name not like \'张%\' and name not like \'李%\' and name not like \'王%\'','SELECT sid, name FROM student name NOT LIKE  AND name NOT LIKE  AND name NOT LIKE ','\"{\\\"compare\\\": []}\"',4,3,'near \"LIKE\": syntax error','2021-06-09 11:27:03','1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0\nnear \"LIKE\": syntax error'),(91,'1',7,10,0,'select sid, name from student where name not like \'张%\' and name not like \'李%\' and name not like \'王%\'','SELECT sid, name FROM student WHERE name NOT LIKE  AND name NOT LIKE  AND name NOT LIKE ','\"{\\\"compare\\\": []}\"',3,3,'near \"AND\": syntax error','2021-06-09 11:27:17','1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0\nnear \"AND\": syntax error'),(92,'1',7,10,0,'select sid, name from student where name not like \'张%\' and name not like \'李%\' and name not like \'王%\';','SELECT sid, name FROM student WHERE name NOT LIKE  AND name NOT LIKE  AND name NOT LIKE ;','\"{\\\"compare\\\": []}\"',3,3,'near \"AND\": syntax error','2021-06-09 11:27:32','1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0\nnear \"AND\": syntax error'),(93,'1',7,10,0,'select sid, name from student where name not like \'张%\' and name not like \'李%\' and name not like \'王%\';','SELECT sid, name FROM student WHERE name NOT LIKE  AND name NOT LIKE  AND name NOT LIKE ;','\"{\\\"compare\\\": []}\"',3,3,'near \"AND\": syntax error','2021-06-09 11:27:33','1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0\nnear \"AND\": syntax error'),(94,'1',7,10,0,'select sid, name from student where name not like \'张%\' and name not like \'李%\' and name not like \'王%\';','SELECT sid, name FROM student WHERE name NOT LIKE  AND name NOT LIKE  AND name NOT LIKE ;','\"{\\\"compare\\\": []}\"',3,3,'near \"AND\": syntax error','2021-06-09 11:27:33','1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0\nnear \"AND\": syntax error'),(95,'1',7,10,0,'select sid, name from student where name not like \'张%\' and name not like \'李%\' and name not like \'王%\';','SELECT sid, name FROM student WHERE name NOT LIKE  AND name NOT LIKE  AND name NOT LIKE ;','\"{\\\"compare\\\": []}\"',3,3,'near \"AND\": syntax error','2021-06-09 11:27:33','1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0\nnear \"AND\": syntax error'),(96,'1',7,10,0,'select sid, name from student where name not like \'张%\' and name not like \'李%\' and name not like \'王%\';','SELECT sid, name FROM student WHERE name NOT LIKE  AND name NOT LIKE  AND name NOT LIKE ;','\"{\\\"compare\\\": []}\"',3,3,'near \"AND\": syntax error','2021-06-09 11:27:34','1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0\nnear \"AND\": syntax error'),(97,'1',7,10,100,'select sid, name from student\nwhere name not like \'张%\' and name not like \'李%\' and name not like \'王%\'','SELECT sid, name FROM student name NOT LIKE  AND name NOT LIKE  AND name NOT LIKE ','\"{\\\"compare\\\": []}\"',0,0,'{\"data\": [[\"201800000004\", \"\\u8d75\\u516d\"]], \"len\": 1}','2021-06-09 11:38:31','1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0\n'),(98,'1',7,10,100,'select sid, name from student\nwhere name not like \'张%\' and name not like \'李%\' and name not like \'王%\'','SELECT sid, name FROM student name NOT LIKE  AND name NOT LIKE  AND name NOT LIKE ','\"{\\\"compare\\\": []}\"',0,0,'{\"data\": [[\"201800000004\", \"\\u8d75\\u516d\"]], \"len\": 1}','2021-06-09 11:41:35','1 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 1 0 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 1 0 0 0 0 0\n'),(99,'1',3,2,100,'select a from test;','SELECT a FROM test;','\"{\\\"compare\\\": []}\"',0,0,'{\"data\": [[1], [2], [3]], \"len\": 3}','2021-06-10 07:03:34','1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0\n'),(100,'1',26,11,100,'select FirstName, LastName, City, State\nfrom Person left join Address\non Person.PersonId = Address.PersonId','SELECT FirstName, LastName, City, State Person LEFT JOIN AddressId Person.PersonId = Address.PersonId','\"{\\\"compare\\\": []}\"',0,0,'{\"data\": [[\"Wang\", \"Allen\", null, null]], \"len\": 1}','2021-06-10 07:31:50','1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 0.667 0.667 0.667 0.667 0.667 0.667 0.667 0.667 0.667 0.667 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0.737 0.737 0.737 0.737 0.737 0.737 0.737 0.737 0.737 0.737 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1\n'),(101,'1',28,12,100,'SELECT\n     a.NAME AS Employee1\nFROM Employee1 AS a JOIN Employee1 AS b\n     ON a.ManagerId = b.Id\n     AND a.Salary > b.Salary','SELECT     AS.NAMES AS Employee11FROM Employee11 AS AS JOIN Employee11 AS BY     ON AS.ManagerId = BY.Id     AND AS.Salary > BY.Salary','\"{\\\"compare\\\": []}\"',0,0,'{\"data\": [[\"Henry\"]], \"len\": 1}','2021-06-10 07:40:27','0.923 0.923 0.923 0.923 0.923 0.923 0.923 0 0 0 0 0 0.667 0 0.889 0.889 0.889 0.889 0 1 1 0 0.941 0.941 0.941 0.941 0.941 0.941 0.941 0.941 0 0.889 0.889 0.889 0.889 0.889 0 0.941 0.941 0.941 0.941 0.941 0.941 0.941 0.941 0 0 1 1 0 0.667 0 1 1 1 1 0 0.941 0.941 0.941 0.941 0.941 0.941 0.941 0.941 0 0 1 1 0 0.5 0.5 0 0 0 0 0 1 1 0 0.667 0 1 1 1 1 1 1 1 1 1 0 0 0 0.667 0 0.8 0.8 0.8 0 0 0 0 0 1 1 1 0 0.667 0 1 1 1 1 1 1 0 0 0 0.667 0 1 1 1 1 1 1\n');
/*!40000 ALTER TABLE `submit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table`
--

DROP TABLE IF EXISTS `table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `idSchema` int NOT NULL,
  `sql` varchar(500) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idSchema_idx` (`idSchema`),
  CONSTRAINT `fkSchema_Table` FOREIGN KEY (`idSchema`) REFERENCES `schema` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table`
--

LOCK TABLES `table` WRITE;
/*!40000 ALTER TABLE `table` DISABLE KEYS */;
INSERT INTO `table` VALUES (4,'test',9,'CREATE TABLE test ( a INTEGER PRIMARY KEY, b INTEGER );',''),(7,'student',9,'create table student (sid char(12) not null,name varchar(10),sex char(2));',''),(8,'Person',13,'Create table Person (PersonId int, FirstName varchar(255), LastName varchar(255))',''),(9,'Address',13,'Create table Address (AddressId int, PersonId int, City varchar(255), State varchar(255))',''),(11,'Employee1',13,'Create table Employee1 (Id int, Name varchar(255), Salary int, ManagerId int)',''),(13,'Customers1',13,'Create table Customers1 (Id int, Name varchar(255))',''),(14,'Orders',13,'Create table Orders (Id int, CustomerId int)',''),(16,'Department',14,'Create table Department (Id int, Name varchar(255))',''),(18,'Employee',14,'Create table Employee (Id int, Name varchar(255), Salary int, DepartmentId int)',''),(19,'Weather',15,'Create table Weather (Id int, RecordDate date, Temperature int)',''),(20,'Logs',16,'Create table Logs (Id int, Num int)',''),(21,'Logs',17,'Create table Logs (Id int, Email char(20))',''),(22,'Employee',18,'Create table Employee (Id int, Salary int)',''),(23,'student',12,'create table student (sid char(12) not null,name varchar(10),sex char(2),age int,birthday date,dname varchar(30),class varchar(10))','');
/*!40000 ALTER TABLE `table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-03 20:01:53
