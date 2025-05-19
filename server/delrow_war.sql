-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 12-03-2021 a las 01:03:12
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
-- Estructura de tabla para la tabla delrow_war
--

CREATE TABLE delrow_war (
  zona tinyint(3) UNSIGNED DEFAULT NULL,
  puntaje float UNSIGNED DEFAULT 0,
  cazados float UNSIGNED DEFAULT 0,
  asedio float UNSIGNED DEFAULT 0,
  conquista float UNSIGNED DEFAULT 0,
  duracion float UNSIGNED DEFAULT 0,
  disponibles float UNSIGNED DEFAULT 0,
  poblacion float UNSIGNED DEFAULT 0,
  vida float UNSIGNED DEFAULT 0,
  semanal int(10) UNSIGNED DEFAULT 0,
  acumulado int(10) UNSIGNED DEFAULT 0,
  ofi_puntaje float UNSIGNED DEFAULT 0,
  ofi_cazados int(10) UNSIGNED DEFAULT 0,
  ofi_asedio int(10) UNSIGNED DEFAULT 0,
  ofi_conquista int(10) UNSIGNED DEFAULT 0,
  ofi_duracion int(10) UNSIGNED DEFAULT 0,
  ofi_disponibles int(10) UNSIGNED DEFAULT 0,
  ofi_poblacion int(10) UNSIGNED DEFAULT 0,
  ofi_vida int(10) UNSIGNED DEFAULT 0,
  max_puntaje float UNSIGNED DEFAULT 0,
  max_cazados int(10) UNSIGNED DEFAULT 0,
  max_asedio int(10) UNSIGNED DEFAULT 0,
  max_disponibles int(10) UNSIGNED DEFAULT 0,
  max_poblacion int(10) UNSIGNED DEFAULT 0,
  modificacion timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla delrow_war
--

INSERT INTO delrow_war (zona, puntaje, cazados, asedio, conquista, duracion, disponibles, poblacion, vida, semanal, acumulado, ofi_puntaje, ofi_cazados, ofi_asedio, ofi_conquista, ofi_duracion, ofi_disponibles, ofi_poblacion, ofi_vida, max_puntaje, max_cazados, max_asedio, max_disponibles, max_poblacion, modificacion) VALUES
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 01:02:44'),
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 01:02:44'),
(2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 01:02:44'),
(3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 01:02:44'),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 01:02:44'),
(5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 01:02:44'),
(6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 01:02:44'),
(7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 01:02:44'),
(8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 01:02:44'),
(9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 01:02:44'),
(10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 01:02:44'),
(11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 01:02:44'),
(12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 01:02:44'),
(13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 01:02:44'),
(14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 01:02:44'),
(15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 01:02:44'),
(16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 01:02:44'),
(100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 01:02:44'),
(101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 01:02:44'),
(102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 01:02:44'),
(103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 01:02:44'),
(104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 01:02:44'),
(105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 01:02:44');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
