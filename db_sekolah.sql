-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping database structure for db_sekolah
DROP DATABASE IF EXISTS db_sekolah;
CREATE DATABASE IF NOT EXISTS db_sekolah /!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /!80016 DEFAULT ENCRYPTION='N' */;
USE db_sekolah;

-- Dumping structure for table db_sekolah.tbl_guru
DROP TABLE IF EXISTS tbl_guru;
CREATE TABLE IF NOT EXISTS tbl_guru (
    idguru INT NOT NULL AUTO_INCREMENT,
    nuptk CHAR(10) NOT NULL,
    nama VARCHAR(50) DEFAULT NULL,
    golongan CHAR(10) DEFAULT NULL,
    jenis_kelamin ENUM('L', 'P') DEFAULT NULL,
    PRIMARY KEY (idguru)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_sekolah.tbl_guru: ~6 rows (approximately)
DELETE FROM tbl_guru;
INSERT INTO tbl_guru (idguru, nuptk, nama, golongan, jenis_kelamin) VALUES
(3, '6969', 'azka mau\'lana m.pd', 'III/a', 'P'),
(5, '656565', 'abogobog', 'III/b', 'P'),
(8, '123123', 'Ego Irfandi m.eng', 'III/c', 'L'),
(9, '232323', 'fasdfsdf', 'III/b', 'L'),
(10, '676767', 'Abdauuu', 'III/a', 'L'),
(11, '232323', 'Abda\'u', 'III/b', 'L');

-- Dumping structure for table db_sekolah.tbl_siswa
DROP TABLE IF EXISTS tbl_siswa;
CREATE TABLE IF NOT EXISTS tbl_siswa (
    id INT NOT NULL AUTO_INCREMENT,
    nisn INT NOT NULL,
    nama_lengkap VARCHAR(255) NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    create_time TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_sekolah.tbl_siswa: ~11 rows (approximately)
DELETE FROM tbl_siswa;
INSERT INTO tbl_siswa (id, nisn, nama_lengkap, alamat, create_time) VALUES
(1, 230202007, 'Ego tok', 'jl. raya penggalang', '2024-06-20 00:47:41'),
(2, 230202069, 'abcd124', 'Jl. padepokan', '2024-06-20 00:50:21'),
(3, 230206969, 'java', 'Jl. mangga', '2024-06-20 01:00:24'),
(4, 230102001, 'siswa satu', 'jl manggis', '2024-06-20 01:03:10'),
(5, 230102002, 'siswa 2 ', 'jalan raya', '2024-06-20 01:03:27'),
(6, 230202003, 'siswa tiga', 'jalan manggis', '2024-06-20 01:03:45'),
(7, 230202004, 'siswa empat', 'jl pisang', '2024-06-20 01:04:09'),
(8, 230202006, 'siswa enam', 'jl pelem', '2024-06-20 01:04:31'),
(9, 230202005, 'siswa lima', 'jl raya', '2024-06-20 01:04:55'),
(11, 230202008, 'siswa delapan', 'jalan abcd', '2024-06-20 01:05:26'),
(12, 230109696, 'ragil', 'jl petruk', '2024-06-20 01:15:51');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;