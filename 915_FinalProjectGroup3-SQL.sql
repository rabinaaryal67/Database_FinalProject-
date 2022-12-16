-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: FinalProjectGroup3
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `CustomerId` char(8) NOT NULL,
  `CustomerLastName` varchar(72) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CustomerAddress1` varchar(72) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CustomerAddress2` varchar(72) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CustomerTown` varchar(72) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CustomerPostalCode` int DEFAULT NULL,
  `CustomerCountry` varchar(72) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `IsCustomerReseller` varbinary(1) DEFAULT NULL,
  `IsCustomerCreditRisk` varbinary(1) DEFAULT NULL,
  `UserAutorizationId` int NOT NULL,
  `SysStartTime` datetime(6) DEFAULT NULL,
  `SysEndTime` datetime(6) DEFAULT NULL,
  `CustomerFirstName` varchar(72) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`CustomerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Vehicle`
--

DROP TABLE IF EXISTS `Vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Vehicle` (
  `vehicleID` int NOT NULL,
  `VehiclePrice` int NOT NULL,
  `ManufacturerVehicleStockId` int DEFAULT NULL,
  `conditionID` int DEFAULT NULL,
  `ManufacturerVehicleMakeId` int DEFAULT NULL,
  `UserAutorizationId` int NOT NULL,
  `SysStartTime` datetime(6) DEFAULT NULL,
  `SysEndTime` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`vehicleID`),
  KEY `R_23` (`ManufacturerVehicleStockId`),
  KEY `R_24` (`conditionID`),
  KEY `R_27` (`ManufacturerVehicleMakeId`),
  CONSTRAINT `R_23` FOREIGN KEY (`ManufacturerVehicleStockId`) REFERENCES `ManufacturerVehicleStock` (`ManufacturerVehicleStockId`),
  CONSTRAINT `R_24` FOREIGN KEY (`conditionID`) REFERENCES `Condition` (`conditionID`),
  CONSTRAINT `R_27` FOREIGN KEY (`ManufacturerVehicleMakeId`) REFERENCES `ManufacturerVehicleMake` (`ManufacturerVehicleMakeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sysdiagrams`
--

DROP TABLE IF EXISTS `sysdiagrams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sysdiagrams` (
  `name` int NOT NULL,
  `principal_id` int NOT NULL,
  `diagram_id` int NOT NULL,
  `version` int DEFAULT NULL,
  `definition` varbinary(1) DEFAULT NULL,
  `UserAutorizationId` int NOT NULL,
  `SysStartTime` datetime(6) DEFAULT NULL,
  `SysEndTime` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`diagram_id`),
  UNIQUE KEY `UK_principal_name` (`principal_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-16  3:40:57
