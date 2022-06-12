-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-06-2022 a las 20:39:52
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `diplomado`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'tecnologia'),
(2, 'Hogar'),
(3, 'ElectroHogar'),
(4, 'ElectroHogar'),
(5, 'Iluminación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `precio` int(11) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `sku` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `fecha_registro`, `categoria_id`, `sku`) VALUES
(1, 'bicicleta', 200, '2022-06-03 02:16:56', 0, ''),
(2, 'tv samsung', 300, '2022-06-03 02:16:56', 0, ''),
(3, 'Teclado mecánico', 500, '2022-06-05 00:00:00', 0, ''),
(4, 'Teclado mecánico', 500, '2022-06-05 00:00:00', 0, ''),
(5, 'Teclado Kosair k95 mecánico', 700, '2022-06-05 00:00:00', 2, 'nuevo sku'),
(6, 'Teclado mecánico', 550, '2022-06-05 00:00:00', 3, ''),
(7, 'Teclado mecánico', 550, '2022-06-05 00:00:00', 3, ''),
(8, 'Teclado mecánico', 550, '2022-06-05 00:00:00', 3, ''),
(9, 'Teclado mecánico', 550, '2022-06-05 00:00:00', 3, ''),
(10, 'Teclado mecánico', 550, '2022-06-05 00:00:00', 3, ''),
(11, 'Teclado mecánico', 550, '2022-06-05 00:00:00', 3, ''),
(12, 'Teclado mecánico', 550, '2022-06-05 00:00:00', 3, ''),
(13, 'Teclado mecánico', 550, '2022-06-05 00:00:00', 3, ''),
(14, 'Teclado mecánico', 550, '2022-06-05 00:00:00', 3, ''),
(15, 'Teclado mecánico', 550, '2022-06-05 00:00:00', 3, ''),
(16, 'Teclado mecánico', 550, '2022-06-05 00:00:00', 3, ''),
(17, 'Teclado mecánico', 550, '2022-06-05 00:00:00', 3, ''),
(18, 'Teclado mecánico', 550, '2022-06-05 00:00:00', 3, ''),
(19, 'Teclado mecánico', 550, '2022-06-05 00:00:00', 3, ''),
(20, 'Teclado mecánico', 550, '2022-06-05 00:00:00', 3, ''),
(21, 'Teclado mecánico', 550, '2022-06-05 00:00:00', 3, ''),
(22, 'Teclado mecánico', 550, '2022-06-07 00:00:00', 3, ''),
(23, 'Teclado mecánico', 550, '2022-06-07 00:00:00', 3, ''),
(24, 'Teclado mecánico', 550, '2022-06-07 00:00:00', 2, ''),
(25, 'Teclado mecánico', 550, '2022-06-07 00:00:00', 2, ''),
(26, 'Teclado mecánico', 550, '2022-06-07 00:00:00', 2, ''),
(27, 'Teclado mecánico', 550, '2022-06-12 00:00:00', 2, ''),
(28, 'Teclado mecánico', 550, '2022-06-12 00:00:00', 2, 'abcdefg123'),
(29, 'Teclado mecánico', 550, '2022-06-12 00:00:00', 2, 'abcdefg123'),
(30, 'Refrigerador Samsung', 9900, '2022-06-12 00:00:00', 3, 'abcdefg123'),
(31, 'Refrigerador Samsung', 9900, '2022-06-12 00:00:00', 4, 'abcdefg123'),
(32, 'Refrigerador Samsung', 9900, '2022-06-12 00:00:00', 5, 'abcdefg123'),
(33, 'Refrigerador Samsung', 9900, '2022-06-12 00:00:00', 6, 'abcdefg123'),
(34, 'Refrigerador Samsung', 9900, '2022-06-12 00:00:00', 7, 'abcdefg123'),
(35, 'Refrigerador Samsung', 9900, '2022-06-12 00:00:00', 8, 'abcdefg123'),
(36, 'Lampara led escritorio', 990, '2022-06-12 00:00:00', 9, 'abcdefgh12');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
