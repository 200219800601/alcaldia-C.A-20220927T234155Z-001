-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-02-2022 a las 21:24:11
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `amca`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `Servicios_inicio` ()  BEGIN



select sum(cantidad_lamparas) as cantidad_quemadas from solicitud_alumbrado where categoria = 'usada';


END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carnet_de_menoridad`
--

CREATE TABLE `carnet_de_menoridad` (
  `id` int(11) NOT NULL,
  `Nombre_del_menor` varchar(125) NOT NULL,
  `Nombre_encargado` varchar(125) NOT NULL,
  `DUI_encargado` varchar(12) NOT NULL,
  `Dia_cita` varchar(50) NOT NULL,
  `Hora_retiro` varchar(125) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `DUI` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carnet_de_menoridad`
--

INSERT INTO `carnet_de_menoridad` (`id`, `Nombre_del_menor`, `Nombre_encargado`, `DUI_encargado`, `Dia_cita`, `Hora_retiro`, `Telefono`, `Email`, `DUI`) VALUES
(1, 'FGFHGFH', 'hfghfghf', '06390536-6', '0000-00-00', '9:00 AM', '72201055', 'elisa@gmail.com', 'null'),
(2, 'ghfghgh', 'ghghg', '06390536-6', '17/02/2022', '1:00 PM', '72201055', 'elisa@gmail.com', 'null'),
(3, 'fdsfsdfdf', 'dfdfdfdf', '06390536-6', '24/02/2022', '10:00 AM', '72201055', 'elisa@gmail.com', 'null'),
(4, 'fdsfsdfdf', 'dfdfdfdf', '06390536-6', '24/02/2022', '10:00 AM', '72201055', 'elisa@gmail.com', 'null'),
(5, 'cvcvbcvb', 'cvcvcvcv', '06390536-6', '22/02/2022', '11:00 AM', '72201055', 'elisa@gmail.com', 'null'),
(6, 'gvnbvn', 'nvnvbn', '06390536-6', '22/02/2022', '9:00 AM', '72201055', 'elisa@gmail.com', 'null'),
(7, 'gvnbvn', 'nvnvbn', '06390536-6', '22/02/2022', '9:00 AM', '72201055', 'elisa@gmail.com', 'null'),
(8, 'vbvb', 'vbvb', '06390536-6', '22/02/2022', '9:00 AM', '72201055', 'elisa@gmail.com', 'null'),
(9, 'vcvcb', 'cvbcvbcb', '06390536-6', '23/02/2022', '9:00 AM', '72201055', 'elisa@gmail.com', 'null'),
(10, 'aaaaaaaaaaaaaaa', 'aaaaaaaaaaaaa', '06390536-6', '23/02/2022', '9:00 AM', '56776767', 'elisa@gmail.com', 'null'),
(11, 'aaaaaaaaaaaaaaa', 'aaaaaaaaaaaaa', '06390536-6', '23/02/2022', '9:00 AM', '56776767', 'elisa@gmail.com', 'null'),
(12, 'vbcbvcbvc', 'bcvbcvbc', '06390536-6', '23/02/2022', '9:00 AM', '54654654', 'elisa@gmail.com', 'null');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(5) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id` int(5) NOT NULL,
  `idprod` int(5) NOT NULL,
  `idventa` int(5) NOT NULL,
  `cantidad` int(5) NOT NULL,
  `precio` double NOT NULL,
  `subtotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `filename` varchar(250) NOT NULL,
  `filesize` int(11) NOT NULL,
  `web_path` varchar(250) NOT NULL,
  `system_path` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `form_partida_solteria`
--

CREATE TABLE `form_partida_solteria` (
  `id` int(5) NOT NULL,
  `nombre_titular` varchar(80) NOT NULL,
  `fecha_nacimiento` varchar(100) NOT NULL,
  `nombre_padre` varchar(100) NOT NULL,
  `nombre_madre` varchar(100) NOT NULL,
  `tipo_partida` varchar(50) NOT NULL,
  `dia_retiro` varchar(100) NOT NULL,
  `hora_retiro` varchar(50) NOT NULL,
  `telefono` varchar(11) NOT NULL,
  `estado` int(5) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dui` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `form_partida_solteria`
--

INSERT INTO `form_partida_solteria` (`id`, `nombre_titular`, `fecha_nacimiento`, `nombre_padre`, `nombre_madre`, `tipo_partida`, `dia_retiro`, `hora_retiro`, `telefono`, `estado`, `email`, `dui`) VALUES
(1, 'vccvbc', '2022-02-09', 'vbvb', 'bb', 'Autentico', '16/02/2022', '1', '72201055', 1, 'null', '06390536-6'),
(16, 'bnmbnm', '2022-02-01', 'bnmmbn', 'fgfg', 'Normal', '16/02/2022', '2', '72201055', 1, 'elisa@gmail.com', '06390536-6'),
(17, 'dfdfg', '2022-02-14', 'dfgfg', 'fgg', 'Normal', '16/02/2022', '3', '72201055', 1, 'null', '06390536-6'),
(18, 'dfdfg', '2022-02-14', 'dfgfg', 'fgg', 'Normal', '16/02/2022', '3', '72201055', 1, 'elisa@gmail.com', 'null'),
(19, 'cvcbvvb', '2022-02-15', 'bvvbvb', 'vbvbvb', 'Normal', '16/02/2022', '2', '72201055', 1, 'elisa@gmail.com', 'null'),
(20, 'dfdfg', '2022-02-09', 'dfdfgf', 'fgfgfg', 'Normal', '17/02/2022', '1', '72201055', 1, 'elisa@gmail.com', 'null'),
(21, 'fcgf', '2022-02-22', 'bvbvb', 'fdggf', 'Normal', '16/02/2022', '1', '72201055', 1, 'elisa@gmail.com', 'null'),
(22, 'fcgf', '2022-02-22', 'bvbvb', 'fdggf', 'Normal', '16/02/2022', '1', '72201055', 1, 'elisa@gmail.com', 'null'),
(23, 'fcgf', '2022-02-22', 'bvbvb', 'fdggf', 'Normal', '16/02/2022', '1', '72201055', 1, 'elisa@gmail.com', 'null'),
(24, 'fggfg', '2022-02-09', 'fgfg', 'gffgf', 'Normal', '17/02/2022', '1', '72201055', 1, 'elisa@gmail.com', 'null'),
(25, 'hjghj', '2022-02-08', 'ghfh', 'hgfh', 'Normal', '17/02/2022', '1', '72201055', 1, 'elisa@gmail.com', 'null'),
(26, 'jgjtj', '2022-02-02', 'ggfgfg', 'fgdfgg', 'Normal', '17/02/2022', '9:00 AM', '72201055', 1, 'elisa@gmail.com', 'null'),
(27, 'hgjjhj', '2022-02-03', 'mjhjkjk', 'hjh', 'Normal', '18/02/2022', '9:00 AM', '72201055', 1, 'elisa@gmail.com', 'null'),
(28, 'dd', '2022-02-18', 'ddd', 'ddddddddddddd', 'Normal', '25/02/2022', '10:00 AM', '70139480', 1, '', ''),
(29, 'dd', '2022-02-18', 'ddd', 'ddddddddddddd', 'Normal', '25/02/2022', '10:00 AM', '78888888', 1, '', ''),
(30, 'dd', '2022-02-18', 'ddd', 'ddddddddddddd', 'Normal', '25/02/2022', '9:00 AM', '78888888', 1, '', ''),
(31, 'david', '2022-02-18', 'juan', 'llll', 'Normal', '25/02/2022', '9:00 AM', '70857996', 1, '', ''),
(32, 'hjghjgj', '2022-02-09', 'ghghgh', 'ghgh', 'Normal', '18/02/2022', '9:00 AM', '72201055', 1, 'elisa@gmail.com', 'null'),
(33, 'elisabeth', '2022-02-19', 'fff', 'fffddd', 'Normal', '25/02/2022', '9:00 AM', '70139480', 1, 'null', '04869090-4'),
(34, 'prueba', '2022-02-25', 'dddddddddd', 'ddddddddddddd', 'Normal', '25/02/2022', '9:00 AM', '78888881', 1, '', ''),
(35, 'prueba', '2022-02-25', 'dddddddddd', 'ddddddddddddd', 'Normal', '25/02/2022', '9:00 AM', '78888881', 1, '', ''),
(36, 'prueba', '2022-02-25', 'dddddddddd', 'ddddddddddddd', 'Normal', '25/02/2022', '9:00 AM', '78888881', 1, '', ''),
(37, 'prueba', '2022-02-25', 'dddddddddd', 'ddddddddddddd', 'Normal', '25/02/2022', '9:00 AM', '72201055', 1, 'elisa@gmail.com', 'null'),
(38, 'prueba', '2022-02-25', 'dddddddddd', 'ddddddddddddd', 'Normal', '25/02/2022', '9:00 AM', '76666661', 1, 'elisa@gmail.com', 'null');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partida_de_defuncion`
--

CREATE TABLE `partida_de_defuncion` (
  `id` int(11) NOT NULL,
  `Nombre_titular` varchar(125) NOT NULL,
  `Fecha_muerte` varchar(50) NOT NULL,
  `Nombre_Padre` varchar(125) NOT NULL,
  `Nombre_madre` varchar(125) NOT NULL,
  `Tipo_partida` varchar(125) NOT NULL,
  `Dia_retiro` varchar(50) NOT NULL,
  `Hora_retiro` varchar(125) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `DUI` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `partida_de_defuncion`
--

INSERT INTO `partida_de_defuncion` (`id`, `Nombre_titular`, `Fecha_muerte`, `Nombre_Padre`, `Nombre_madre`, `Tipo_partida`, `Dia_retiro`, `Hora_retiro`, `Telefono`, `Email`, `DUI`) VALUES
(1, 'fghgh', '2022-02-02', 'fgfhgfh', 'gfhfhh', 'Normal', '0000-00-00', '1', '72201055', 'elisa@gmail.com', 'null'),
(2, 'fghgh', '2022-02-02', 'fgfhgfh', 'gfhfhh', 'Normal', '0000-00-00', '1', '72201055', 'elisa@gmail.com', 'null'),
(3, '', '0000-00-00', '', '', '', '0000-00-00', '9:00 AM', '72201055', 'elisa@gmail.com', 'null'),
(4, 'fhhg', '2022-02-08', 'ghhf', 'ghfhgh', 'Normal', '17/02/2022', '1', '72201055', 'null', '04869090-4'),
(5, 'fhhg', '2022-02-08', 'ghhf', 'ghfhgh', 'Normal', '17/02/2022', '1', '72201055', 'null', '04869090-4'),
(6, 'GCFGFG', '2022-02-07', 'ngnhn', 'hnghnh', 'Normal', '17/02/2022', '9:00 AM', '72201055', 'elisa@gmail.com', 'null'),
(7, 'vbvbvb', '2022-02-02', 'vbcbcv', 'bvbcb', 'Normal', '18/02/2022', '9:00 AM', '72201055', 'elisa@gmail.com', 'null'),
(8, 'dfgdfgfg', '2022-02-02', 'gfgggfgf', 'gggggggggggggg', 'Normal', '18/02/2022', '9:00 AM', '45654665', 'null', '04869090-4'),
(9, 'Salvador Manuel Lopez', '2020-01-29', 'Salvador antonio lopez', 'Andrea Lopez', 'Normal', '23/02/2022', '1:00 PM', '70575166', 'null', '05753802-0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partida_de_divorcio`
--

CREATE TABLE `partida_de_divorcio` (
  `id` int(5) NOT NULL,
  `Nombre_titular` varchar(125) NOT NULL,
  `Fecha_divorcio` varchar(50) NOT NULL,
  `Nombre_exConyuge` varchar(125) NOT NULL,
  `Tipo_partida` varchar(125) NOT NULL,
  `Dia_retiro` varchar(50) NOT NULL,
  `Hora_retiro` varchar(125) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `DUI` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `partida_de_divorcio`
--

INSERT INTO `partida_de_divorcio` (`id`, `Nombre_titular`, `Fecha_divorcio`, `Nombre_exConyuge`, `Tipo_partida`, `Dia_retiro`, `Hora_retiro`, `Telefono`, `Email`, `DUI`) VALUES
(1, 'cffg', '2022-02-09', 'bvbv', 'Normal', '0000-00-00', '10:00 AM', '72201055', 'elisa@gmail.com', 'null'),
(2, 'cffg', '2022-02-09', 'bvbv', 'Normal', '0000-00-00', '10:00 AM', '72201055', 'elisa@gmail.com', 'null'),
(3, 'fgfhgfh', '2022-02-09', 'fgfhh', 'Normal', '0000-00-00', '9:00 AM', '72201055', 'elisa@gmail.com', 'null'),
(4, 'fgfhgfh', '2022-02-09', 'fgfhh', 'Normal', '0000-00-00', '9:00 AM', '72201055', 'elisa@gmail.com', 'null'),
(5, 'gbfgf', '2022-02-02', 'fggdf', 'Normal', '0000-00-00', '9:00 AM', '72201055', 'null', '06390536-6'),
(6, 'gbfgf', '2022-02-02', 'fggdf', 'Normal', '17/02/2022', '9:00 AM', '72201055', 'null', '06390536-6'),
(7, 'xcxc', '2022-02-02', 'cxcc', 'Normal', '23/02/2022', '2:00 PM', '72201055', 'elisa@gmail.com', 'null'),
(8, 'ffffffffffffffff', '2022-02-02', 'ffffffffffffffff', 'Normal', '18/02/2022', '2:00 PM', '73445565', 'null', '06390536-6'),
(9, 'ffffffffffffffff', '2022-02-02', 'ffffffffffffffff', 'Normal', '18/02/2022', '2:00 PM', '73445565', 'null', '06390536-6'),
(10, 'ffffffffffffffff', '2022-02-02', 'ffffffffffffffff', 'Normal', '18/02/2022', '2:00 PM', '73445565', 'null', '06390536-6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partida_de_matrimonio`
--

CREATE TABLE `partida_de_matrimonio` (
  `id` int(5) NOT NULL,
  `Nombre_titular` varchar(125) NOT NULL,
  `Fecha_matrimonio` varchar(50) NOT NULL,
  `Nombre_conyuge` varchar(125) NOT NULL,
  `Tipo_partida` varchar(50) NOT NULL,
  `Dia_retiro` varchar(50) NOT NULL,
  `Hora_retiro` varchar(50) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Email` varchar(125) NOT NULL,
  `DUI` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `partida_de_matrimonio`
--

INSERT INTO `partida_de_matrimonio` (`id`, `Nombre_titular`, `Fecha_matrimonio`, `Nombre_conyuge`, `Tipo_partida`, `Dia_retiro`, `Hora_retiro`, `Telefono`, `Email`, `DUI`) VALUES
(1, 'bvbg', '2022-02-08', 'nbbnnb', 'Normal', '0000-00-00', '10:00 AM', '72201055', 'null', '04869090-4'),
(2, 'bvbg', '2022-02-08', 'nbbnnb', 'Normal', '17/02/2022', '10:00 AM', '72201055', 'null', '04869090-4'),
(3, 'sdsdsd', '2022-02-15', 'dssdsd', 'Normal', '18/02/2022', '9:00 AM', '72201055', 'elisa@gmail.com', 'null'),
(4, 'gbvcbcvb', '2022-02-01', 'vbcvbcvb', 'Normal', '21/02/2022', '9:00 AM', '72201055', 'elisa@gmail.com', 'null'),
(5, 'fgfgfgf', '2022-02-10', 'fgfgfgfg', 'Normal', '18/02/2022', '9:00 AM', '73450234', '', ''),
(6, '', '', '', '', '', '', '', '', ''),
(7, '', '', '', '', '', '', '', '', ''),
(8, 'fgfgfgf', '2022-02-10', 'fgfgfgfg', 'Normal', '18/02/2022', '9:00 AM', '76767565', 'elisa@gmail.com', 'null'),
(9, '', '', '', '', '', '', '', '', ''),
(10, '', '', '', '', '', '', '', '', ''),
(11, 'bnnbn', '2022-02-02', 'bvnbnbn', 'Normal', '21/02/2022', '11:00 AM', '74563568', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partida_de_nacimiento`
--

CREATE TABLE `partida_de_nacimiento` (
  `id` int(5) NOT NULL,
  `Nombres` varchar(100) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Fecha_nacimiento` varchar(100) NOT NULL,
  `Tipo_certificado` varchar(50) NOT NULL,
  `Nombre_madre` varchar(125) NOT NULL,
  `Nombre_padre` varchar(125) NOT NULL,
  `Dia_retiro` varchar(100) NOT NULL,
  `Hora_retiro` varchar(50) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `DUI` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `partida_de_nacimiento`
--

INSERT INTO `partida_de_nacimiento` (`id`, `Nombres`, `Apellidos`, `Fecha_nacimiento`, `Tipo_certificado`, `Nombre_madre`, `Nombre_padre`, `Dia_retiro`, `Hora_retiro`, `Telefono`, `Email`, `DUI`) VALUES
(1, 'fgfg', 'gfgfg', '2022-02-16', 'value1', 'fgfg', 'gfg', '23/02/2022', '3', '72201055', 'elisa@gmail.com', 'null'),
(2, 'fgfg', 'gfgfg', '2022-02-16', 'value1', 'fgfg', 'gfg', '23/02/2022', '3', '72201055', 'elisa@gmail.com', 'null'),
(3, 'cvcb', 'bvcbvb', '2022-02-09', 'Normal', 'xcvxvx', 'cvxvcxv', '17/02/2022', '9:00 AM', '72201055', 'elisa@gmail.com', 'null'),
(5, 'fghgh', 'fhh', '2022-02-16', 'Normal', 'hghf', 'fhgfh', '17/02/2022', '9:00 AM', '72201055', 'elisa@gmail.com', 'null'),
(6, 'dfgg', 'fggfg', '2022-02-03', 'Normal', 'gffg', 'fgfg', '25/02/2022', '11:00 AM', '72201055', 'elisa@gmail.com', 'null'),
(7, 'dfgg', 'fggfg', '2022-02-03', 'Normal', 'gffg', 'fgfg', '25/02/2022', '11:00 AM', '72201055', 'elisa@gmail.com', 'null'),
(8, 'vccbcb', 'cbcbb', '2022-02-02', 'Normal', 'cbvcbcvb', 'cbvbcb', '25/02/2022', '10:00 AM', '72201055', 'elisa@gmail.com', 'null'),
(9, 'fhgfhfgh', 'fghfghgfh', '2022-02-24', 'Normal', 'ghfghgh', 'hfghgh', '25/02/2022', '2:00 PM', '72201055', 'elisa@gmail.com', 'null'),
(10, 'fhgfhfgh', 'fghfghgfh', '2022-02-24', 'Normal', 'ghfghgh', 'hfghgh', '25/02/2022', '2:00 PM', '74555551', 'elisa@gmail.com', 'null'),
(13, 'cvxcvvxcv', 'vcxcvxvcc', '2022-02-11', 'Normal', 'cvcxvcc', 'vvvvvvvvvvvvvvv', '18/02/2022', '9:00 AM', '73444444', 'elisa@gmail.com', 'null'),
(14, 'aaaaaaaaaaaaaaaaa', 'aaaaaaaaaaa', '2022-02-11', 'Normal', 'aaaaaaaaaaaa', 'aaaaaaaaaaaa', '21/02/2022', '2:00 PM', '65767677', 'elisa@gmail.com', 'null');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precios_doc`
--

CREATE TABLE `precios_doc` (
  `id` int(5) NOT NULL,
  `nombre_documento` varchar(50) NOT NULL,
  `precio` double NOT NULL,
  `estado` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `precios_doc`
--

INSERT INTO `precios_doc` (`id`, `nombre_documento`, `precio`, `estado`) VALUES
(1, 'partida_normal_FormSolteria', 5.5, 1),
(2, 'partida_autentica_FormSolteria', 0.2, 1),
(3, 'partida_nacimiento', 5.5, 0),
(4, 'partida_autentica_Formnacimiento', 5.1, 1),
(5, 'partida_normal_Formnacimiento', 5.2, 1),
(6, 'partida_autentica_FormMatrimonio', 5.3, 1),
(7, 'partida_normal_FormMatrimonio', 5.4, 1),
(8, 'partida_autentica_FormDivorcio', 5.6, 1),
(9, 'partida_normal_FormDivorcio', 5.7, 1),
(10, 'partida_autentica_FormDefuncion', 5.8, 1),
(11, 'partida_normal_FormDefuncion', 5.9, 1),
(12, 'partida_autentica_FormCarnet', 6, 1),
(13, 'partida_normal_FormCarnet', 6.1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(5) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` double NOT NULL,
  `existencia` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `existencia`) VALUES
(1, 'coca', 20, 500),
(2, 'pepsi', 10, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_files`
--

CREATE TABLE `productos_files` (
  `producto_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes_transporte`
--

CREATE TABLE `solicitudes_transporte` (
  `id` int(5) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `area` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `detalle` varchar(255) NOT NULL,
  `estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `solicitudes_transporte`
--

INSERT INTO `solicitudes_transporte` (`id`, `nombre`, `area`, `fecha`, `hora`, `detalle`, `estado`) VALUES
(1, 'david', 'cementerios', '2022-01-21', '08:00:00', 'Necesito realizar una inspeccion', 'aprobada'),
(2, 'admin', 'zonas verdes', '2022-01-14', '10:59:00', 'llevar arboles', 'pendiente'),
(3, 'mauricio', 'mercado', '2022-01-26', '10:58:00', 'necesito transporte para ir por tomates', 'pendiente'),
(4, 'fff', 'mercado', '2022-01-21', '08:00:00', 'necesito transporte para ir por tomates gg', 'eliminada'),
(5, 'carlos', 'zonas verdes', '2022-01-24', '08:00:00', 'para ir a inpeccion a zapotitan', 'aprobada'),
(6, 'carlos', 'zonas verdes', '2022-01-24', '21:00:00', 'necesito transporte para ir por tomates', 'aprobada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_alumbrado`
--

CREATE TABLE `solicitud_alumbrado` (
  `id` int(5) NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `fecha_reporte` date NOT NULL,
  `canton` varchar(50) NOT NULL,
  `coloniapasaje` varchar(50) NOT NULL,
  `ubicacion_lampara` varchar(200) NOT NULL,
  `Cantidad_lamparas` int(5) NOT NULL,
  `Nombre_reportante` varchar(200) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `dui` varchar(10) NOT NULL,
  `estado` varchar(11) NOT NULL,
  `categoria` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `solicitud_alumbrado`
--

INSERT INTO `solicitud_alumbrado` (`id`, `codigo`, `fecha_reporte`, `canton`, `coloniapasaje`, `ubicacion_lampara`, `Cantidad_lamparas`, `Nombre_reportante`, `telefono`, `dui`, `estado`, `categoria`) VALUES
(1, '', '2022-01-31', 'san andres', 'sector san joaquin', 'la lampara esta ubicada cerca de la escuela en el segundo tumulo', 25, 'luis mejia', '70139480', '048690909', 'pendiente', 'nueva'),
(2, '', '2022-01-24', 'Santa Lucia', 'colonia la linea', 'a la par de la linea ferrea', 10, 'dm', '5555555', '55555555', 'pendiente', 'usada'),
(3, 'ddd', '2022-02-03', 'dddd', 'dddd', 'ddd', 10, 'dddd', 'ddd', '44444', 'pendiente', 'usada'),
(4, 'ddd', '2022-02-03', 'dddd', 'dddd', 'ddd', 10, 'dddd', 'ddd', '44444', 'pendiente', 'nueva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(5) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `rol` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `pass`, `nombre`, `rol`) VALUES
(1, 'davidmejia0093@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'DAVID MEJIA', 1),
(14, 'luisfriendemo@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'soy user', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(5) NOT NULL,
  `idcli` int(5) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carnet_de_menoridad`
--
ALTER TABLE `carnet_de_menoridad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idprod` (`idprod`) USING BTREE,
  ADD KEY `idventa` (`idventa`) USING BTREE;

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `form_partida_solteria`
--
ALTER TABLE `form_partida_solteria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `partida_de_defuncion`
--
ALTER TABLE `partida_de_defuncion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `partida_de_divorcio`
--
ALTER TABLE `partida_de_divorcio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `partida_de_matrimonio`
--
ALTER TABLE `partida_de_matrimonio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `partida_de_nacimiento`
--
ALTER TABLE `partida_de_nacimiento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `precios_doc`
--
ALTER TABLE `precios_doc`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitudes_transporte`
--
ALTER TABLE `solicitudes_transporte`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitud_alumbrado`
--
ALTER TABLE `solicitud_alumbrado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idcli` (`idcli`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carnet_de_menoridad`
--
ALTER TABLE `carnet_de_menoridad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `form_partida_solteria`
--
ALTER TABLE `form_partida_solteria`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `partida_de_defuncion`
--
ALTER TABLE `partida_de_defuncion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `partida_de_divorcio`
--
ALTER TABLE `partida_de_divorcio`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `partida_de_matrimonio`
--
ALTER TABLE `partida_de_matrimonio`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `partida_de_nacimiento`
--
ALTER TABLE `partida_de_nacimiento`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `precios_doc`
--
ALTER TABLE `precios_doc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `solicitudes_transporte`
--
ALTER TABLE `solicitudes_transporte`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `solicitud_alumbrado`
--
ALTER TABLE `solicitud_alumbrado`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `idproducto` FOREIGN KEY (`idprod`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idventa` FOREIGN KEY (`idventa`) REFERENCES `ventas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `idcliente` FOREIGN KEY (`idcli`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
