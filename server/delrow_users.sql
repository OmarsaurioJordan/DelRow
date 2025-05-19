-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 12-03-2021 a las 00:51:16
-- Versión del servidor: 10.4.15-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: u630689278_games
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla delrow_users
--

CREATE TABLE delrow_users (
  correo tinytext DEFAULT NULL,
  password tinytext DEFAULT NULL,
  nombre tinytext DEFAULT NULL,
  zona tinyint(4) DEFAULT NULL,
  emocion tinyint(3) UNSIGNED DEFAULT NULL,
  genero tinyint(3) UNSIGNED DEFAULT NULL,
  piel tinyint(3) UNSIGNED DEFAULT NULL,
  pelo tinyint(3) UNSIGNED DEFAULT NULL,
  tinte tinyint(3) UNSIGNED DEFAULT NULL,
  barba tinyint(3) UNSIGNED DEFAULT NULL,
  camisa tinyint(3) UNSIGNED DEFAULT NULL,
  pantalon tinyint(3) UNSIGNED DEFAULT NULL,
  rol tinyint(3) UNSIGNED DEFAULT NULL,
  zodiaco tinyint(3) UNSIGNED DEFAULT NULL,
  comport tinyint(3) UNSIGNED DEFAULT NULL,
  txtl tinyint(3) UNSIGNED DEFAULT NULL,
  texto text DEFAULT NULL,
  registro date DEFAULT NULL,
  modifica date DEFAULT NULL,
  activo date DEFAULT NULL,
  editar tinyint(3) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
