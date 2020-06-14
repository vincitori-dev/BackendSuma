-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-06-2020 a las 19:59:21
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `suma`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL COMMENT 'El identificador de la categoría de movimiento',
  `name` varchar(40) NOT NULL COMMENT 'El nombre de la categoría de movimiento',
  `description` varchar(100) NOT NULL COMMENT 'La descripción de la categoría de movimiento',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Categoría de tipo ingreso (0) Categoría de tipo gasto (1)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_movimiento`
--

CREATE TABLE `categoria_movimiento` (
  `id` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `idMovimiento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `id` int(11) NOT NULL COMMENT 'El identificador de la cuenta',
  `name` varchar(40) NOT NULL COMMENT 'El nombre que el usuario pone a la cuenta',
  `description` varchar(140) NOT NULL,
  `amount` float NOT NULL COMMENT 'La cantidad total disponible en esa cuenta',
  `distribution` int(11) NOT NULL,
  `color` int(11) NOT NULL,
  `icon` int(11) NOT NULL,
  `created_at` int(11) NOT NULL COMMENT 'Fecha de creación de la cuenta',
  `updated_at` int(11) NOT NULL COMMENT 'Fecha de modificación de la cuenta'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`id`, `name`, `description`, `amount`, `distribution`, `color`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Gastos Habituales', '', 113.77, 0, 1, 1, 1580656273, 1587918262),
(2, 'Ocio', '', 250, 0, 2, 2, 1580656760, 1580656760),
(3, 'Comida', '', 138.3, 0, 3, 3, 1580656769, 1587917971),
(4, 'Mantenimiento', '', 456, 0, 4, 4, 1580656770, 1580656770),
(5, 'mercadona', '', -36, 0, 1, 3, 1584665897, 1589578799),
(6, 'Prueba1', '', 456, 0, 4, 1, 0, 0),
(7, 'mercadona', 'hola', 456, 10, 1, 3, 0, 1589211029),
(8, 'mercadona2', 'hola3', 345.56, 11, 1, 3, 1586938178, 1589382585),
(9, 'mercadona', '', 28, 0, 1, 3, 1586938540, 1587023198),
(10, 'mercadona', '', 56.8, 0, 1, 3, 1587033948, 1587917942),
(11, 'mercadona', '', 0, 0, 1, 3, 1587061681, 1587061681),
(12, 'prueba209', '', 0, 0, 1, 3, 1587062141, 1587062141),
(13, 'ahorros', '', 0, 0, 1, 3, 1587062199, 1587062199),
(14, 'sdf', '', 0, 0, 1, 3, 1587062237, 1587062237),
(15, 'dfg', '', 0, 0, 1, 3, 1587062291, 1587062291),
(16, 'dddddd', '', 0, 0, 1, 3, 1587062325, 1587062325),
(17, 'sdgsd', '', 0, 0, 1, 3, 1587062353, 1587062353),
(18, 'mercadona', '', 0, 0, 1, 3, 1587064018, 1587064018),
(19, 'mercadona', '', 0, 0, 1, 3, 1587064057, 1587064057),
(20, 'mercadona', '', 0, 0, 1, 3, 1587064087, 1587064087),
(21, 'mercadona', '', 0, 10, 1, 3, 1587064897, 1587064897),
(22, 'aaaaaaaaaaaa', '', 0, 40, 1, 3, 1587074734, 1587074734),
(23, 'hola', '', 0, 80, 1, 3, 1587657379, 1587657379),
(24, 'dd', '', 0, 80, 1, 3, 1587657491, 1587657491),
(25, 'dssd', '', 0, 80, 1, 3, 1587657606, 1587657606),
(26, 'fdg', '', 0, 80, 1, 3, 1587657698, 1587657698),
(27, 'sdfg', '', 0, 80, 1, 3, 1587657732, 1587657732),
(28, 'dasd', '', 0, 80, 1, 3, 1587657777, 1587657777),
(29, 'bncb', '', 0, 80, 1, 3, 1587657871, 1587657871),
(30, 'asdfas', '', 0, 80, 1, 3, 1587658029, 1587658029),
(31, 'dsfasdf', '', 0, 80, 1, 3, 1587658870, 1587658870),
(32, 'dfg', '', 0, 55, 1, 3, 1587659098, 1587659098),
(33, 'dsf', '', 0, 80, 1, 3, 1587659145, 1587659145),
(34, 'ahorros', '', 0, 100, 4, 3, 1587678638, 1587678638),
(35, 'inversiones', '', 0, 20, 2, 0, 1587678822, 1587678822),
(36, 'Habituales', 'Los gastos habituales', 4247.74, 20, 2, 0, 1587937923, 1589576649),
(37, 'Ahorros en caso de necesidad', '', 2092.06, 15, 3, 0, 1587938082, 1589576649),
(38, 'Cuenta para inversiones', '', 2152.5, 30, 4, 0, 1587938136, 1589576649),
(39, 'Ocio', '', 253.5, 30, 6, 0, 1587938275, 1589576649),
(40, 'Otros', '', -35.6, 5, 7, 0, 1587938298, 1589380266),
(41, 'mercadona2', 'hola3', 345.56, 11, 1, 3, 1589213567, 1589213567),
(42, 'mercadona2', 'hola3', 345.56, 11, 1, 3, 1589213728, 1589213728),
(43, 'mercadona2', 'hola3', 388.76, 11, 1, 3, 1589213739, 1589380258),
(44, 'Otros', '', 50, 5, 2, 0, 1589382436, 1589576649),
(45, 'Gastos Habituales', '', 233.52, 60, 3, 0, 1589578958, 1589618572),
(46, 'Educación', '', 115, 10, 2, 0, 1589579057, 1589618572),
(47, 'Ocio', '', 76.5, 10, 6, 0, 1589579110, 1589618572),
(48, 'Generación de Activos', '', 30, 10, 7, 0, 1589579187, 1589618572),
(49, 'Liquidez', '', 115, 10, 5, 0, 1589579226, 1589618572),
(50, 'Gastos Habituales', '', 531.05, 60, 3, 0, 1590056519, 1590056668),
(51, 'Ahorros', '', 200, 20, 5, 0, 1590056543, 1590056597),
(52, 'Otros', '', 200, 20, 6, 0, 1590056563, 1590056597),
(53, 'Gastos Habituales', '', 651.85, 60, 3, 0, 1590072675, 1590072831),
(54, 'Ahorros', '', 240, 20, 4, 0, 1590072712, 1590072793),
(55, 'Otros', '', 240, 20, 6, 0, 1590072743, 1590072793),
(56, 'Gastos Habituales', '', 686.95, 60, 4, 0, 1590074495, 1590074669),
(57, 'Ahorros', '', 313.5, 25, 5, 0, 1590074534, 1590074603),
(58, 'Otros', '', 188.1, 15, 6, 0, 1590074567, 1590074603),
(59, 'Gastos Habituales', '', 200, 60, 6, 0, 1591784826, 1591807125),
(60, 'Ocio', '', 100, 10, 5, 0, 1591785419, 1591802249),
(61, 'Emergencias', '', 100, 10, 7, 0, 1591785489, 1591802249),
(62, 'Ahorro e Inversiones', '', 200, 20, 3, 0, 1591785710, 1591802249);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL COMMENT 'El identificador de la empresa',
  `name` varchar(40) NOT NULL COMMENT 'El nombre de la empresa',
  `created_at` int(11) NOT NULL COMMENT 'Fecha de creación de la tupla empresa',
  `updated_at` int(11) NOT NULL COMMENT 'Fecha de modificación de los valores de la tupla empresa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_producto`
--

CREATE TABLE `empresa_producto` (
  `id` int(11) NOT NULL,
  `idEmpresa` int(11) NOT NULL COMMENT 'El identificador de la empresa que vende el producto',
  `idProducto` int(11) NOT NULL COMMENT 'El identificador del producto vendido por la empresa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento`
--

CREATE TABLE `movimiento` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL COMMENT 'Un resumen de lo que consiste la transaccion',
  `name` varchar(40) NOT NULL COMMENT 'El nombre que el usuario da a la transaccion',
  `amount` float NOT NULL COMMENT 'La cantidad asociada a la transacción',
  `created_at` int(11) NOT NULL COMMENT 'La fecha en la que se ha creado la transaccion',
  `updated_at` int(11) NOT NULL COMMENT 'La fecha de modificación del movimiento',
  `idCuenta` int(11) NOT NULL COMMENT 'El identificador de la cuenta asociada a este movimiento',
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `movimiento`
--

INSERT INTO `movimiento` (`id`, `description`, `name`, `amount`, `created_at`, `updated_at`, `idCuenta`, `idUsuario`) VALUES
(3, 'prueba1', 'prueba1', 10, 1580583141, 1580583141, 2, 2),
(6, 'prueba1', 'prueba1', 10, 1580590345, 1580590345, 3, 5),
(7, 'prueba1', 'prueba1', 10, 1580590346, 1580590346, 0, 6),
(8, 'prueba1', 'prueba1', 10, 1580590346, 1580590346, 0, 7),
(9, 'prueba1', 'prueba1', 10, 1580590347, 1580590347, 0, 8),
(10, 'prueba1', 'prueba1', 10, 1580590348, 1580590348, 0, 9),
(12, 'prueba1', 'prueba1', 10, 1580590349, 1580590349, 0, 10),
(13, 'prueba1', 'prueba1', 10, 1580590350, 1580590350, 0, 0),
(14, 'prueba1', 'prueba1', 10, 1580590351, 1580590351, 0, 0),
(15, 'prueba1', 'prueba1', 10, 1580590351, 1580590351, 0, 0),
(16, 'prueba1', 'prueba1', 10, 1580590352, 1580590352, 0, 0),
(17, 'prueba1', 'prueba1', 10, 1580590352, 1580590352, 0, 0),
(18, 'prueba1', 'prueba1', 10, 1580590353, 1580590353, 0, 0),
(19, 'prueba1', 'prueba1', 10, 1580590353, 1580590353, 0, 0),
(20, 'prueba1', 'prueba1', 10, 1580590354, 1580590354, 0, 0),
(21, 'prueba1', 'prueba1', 10, 1580590354, 1580590354, 0, 0),
(22, 'prueba1', 'prueba1', 10, 1580590354, 1580590354, 0, 0),
(23, 'prueba1', 'prueba1', 10, 1580590355, 1580590355, 0, 0),
(24, 'prueba1', 'prueba1', 10, 1580590355, 1580590355, 0, 0),
(25, 'prueba1', 'prueba1', 10, 1580590356, 1580590356, 0, 0),
(26, 'prueba1', 'prueba1', 10, 1580590356, 1580590356, 0, 0),
(27, 'prueba1', 'prueba1', 10, 1580590356, 1580590356, 0, 0),
(28, 'prueba1', 'prueba1', 10, 1580590359, 1580590359, 0, 0),
(29, 'prueba1', 'prueba1', 10, 1580590360, 1580590360, 0, 0),
(30, 'prueba1', 'prueba1', 10, 1580590360, 1580590360, 0, 0),
(31, 'prueba1', 'prueba1', 10, 1580590398, 1580590398, 0, 0),
(32, 'prueba1', 'prueba1', 10, 1580590399, 1580590399, 0, 0),
(33, 'prueba1', 'prueba1', 10, 1580590400, 1580590400, 0, 0),
(34, 'prueba1', 'prueba1', 10, 1580590401, 1580590401, 0, 0),
(35, 'auriculares', 'prueba14', -14, 1586947764, 1586947764, 1, 3),
(40, 'auriculares', 'prueba14', -14, 0, 1586967737, 1, 10),
(41, 'auriculares', 'prueba14', -14, 0, 1586967740, 1, 10),
(42, 'auriculares', 'prueba14', 14, 0, 1586967774, 1, 10),
(43, 'auriculares', 'prueba14', 14, 0, 1586967815, 1, 10),
(44, 'auriculares', 'prueba14', 14, 0, 1586967828, 1, 10),
(45, 'auriculares', 'prueba14', 14, 0, 1586967951, 1, 10),
(46, 'auriculares', 'prueba14', 14, 0, 1586967973, 1, 10),
(47, 'auriculares', 'prueba14', 14, 0, 1586968227, 1, 10),
(48, 'auriculares', 'prueba14', 14, 0, 1586968272, 1, 10),
(49, 'auriculares', 'prueba14', 14, 0, 1587023198, 9, 10),
(50, 'auriculares', 'prueba14', 14, 0, 1587034017, 10, 10),
(51, 'auriculares', 'prueba14', 14, 0, 1587837347, 10, 10),
(52, 'sdf', 'aaaaaaaaaaaa', -4, 0, 1587850483, 3, 10),
(53, 'el pan del mercadona', 'El pan', -1, 0, 1587850778, 3, 10),
(54, 'mas pan', 'otro pan', -1, 0, 1587851024, 3, 10),
(55, 'auriculares', 'prueba14', 14.4, 0, 1587851487, 10, 10),
(56, 'df', 'a1', -0.32, 0, 1587851507, 3, 10),
(57, 'asdf', 'afa', -0.25, 0, 1587851594, 3, 10),
(58, 'a', 'a', 5, 0, 1587852464, 0, 10),
(59, 'auriculares', 'prueba14', 14.4, 0, 1587917877, 10, 10),
(60, 'auriculares', 'prueba14', 14.4, 1587917941, 1587917941, 10, 10),
(61, 'adions', 'hola', -0.45, 1587917971, 1587917971, 3, 10),
(62, 'dfgsdg', 'sdfgs', -50.23, 1587918262, 1587918262, 1, 10),
(63, 'El alquiler del piso', 'Alquiler', -250, 1587985873, 1587985873, 36, 12),
(64, 'Inversion en acciones de Tesla', 'Acciones de Tesla', -1500, 1587985943, 1587985943, 38, 12),
(65, 'Ford vs Ferrari', 'Cine', -6.5, 1587986018, 1587986018, 39, 12),
(66, 'Donación a Caritas', 'Donación', -50, 1587986068, 1587986068, 40, 12),
(67, 'Mercado', 'Compra semanal', -124.26, 1587986123, 1587986123, 36, 12),
(68, 'la descripcion', 'Nuevo movimiento', -15.45, 1587995041, 1587995041, 37, 12),
(69, 'del mercadona', 'El pan', -0.5, 1587995842, 1587995842, 36, 12),
(70, 'auriculares', 'prueba14', 14.4, 1589215343, 1589215343, 43, 10),
(71, 'Pelicula TENET', 'Cine ', -5, 1589371167, 1589371167, 39, 12),
(72, 'auriculares', 'prueba14', 14.4, 1589379986, 1589379986, 43, 10),
(73, 'auriculares', 'prueba14', 14.4, 1589380258, 1589380258, 43, 10),
(74, 'auriculares', 'prueba14', 14.4, 1589380266, 1589380266, 40, 10),
(85, '', 'Prueba2', 300, 1589383326, 1589383326, 36, 12),
(86, '', 'Prueba2', 150, 1589383326, 1589383326, 37, 12),
(87, '', 'Prueba2', 50, 1589383326, 1589383326, 44, 12),
(88, '', 'Prueba2', 50, 1589383326, 1589383326, 38, 12),
(89, '', 'Prueba2', 300, 1589383326, 1589383326, 39, 12),
(90, '', 'Salario', 450, 1589384153, 1589384153, 36, 12),
(91, '', 'Salario', 150, 1589384153, 1589384153, 37, 12),
(92, '', 'Salario', 300, 1589384153, 1589384153, 39, 12),
(93, '', 'Salario', 50, 1589384153, 1589384153, 38, 12),
(94, '', 'Salario', 50, 1589384153, 1589384153, 44, 12),
(95, 'El alquiler del piso', 'Alquiler', -600, 1589387706, 1589387706, 39, 12),
(96, 'El alquiler del piso', 'Alquiler', -600, 1589387706, 1589387706, 37, 12),
(98, 'El alquiler del piso', 'Alquiler', -600, 1589387706, 1589387706, 36, 12),
(99, 'El alquiler del piso', 'Alquiler', -600, 1589387706, 1589387706, 44, 12),
(100, 'Comprado un Macbook pro estropeado del 2012', 'Compra Wallapop', -50, 1589451890, 1589451890, 39, 12),
(101, 'vendida mesa antigua', 'Venta Wallapop', 2.5, 1589451951, 1589451951, 38, 12),
(102, 'vendida mesa antigua', 'Venta Wallapop', 7.5, 1589451951, 1589451951, 37, 12),
(103, 'vendida mesa antigua', 'Venta Wallapop', 15, 1589451951, 1589451951, 39, 12),
(104, 'vendida mesa antigua', 'Venta Wallapop', 22.5, 1589451951, 1589451951, 36, 12),
(105, '', 'Loteria', 250, 1589553349, 1589553349, 38, 12),
(107, '', 'Loteria', 750, 1589553349, 1589553349, 37, 12),
(108, '', 'Loteria', 2250, 1589553349, 1589553349, 36, 12),
(109, '', 'Otra loteria', 2000, 1589553443, 1589553443, 36, 12),
(110, '', 'Otra loteria', 3000, 1589553443, 1589553443, 38, 12),
(111, '', 'Otra loteria', 1500, 1589553443, 1589553443, 37, 12),
(113, '', 'Otra loteria', 500, 1589553443, 1589553443, 44, 12),
(114, 'adaptación de sistema ERP para una empresa de Zamora', 'Proyecto Software', 150, 1589576649, 1589576649, 37, 12),
(115, 'adaptación de sistema ERP para una empresa de Zamora', 'Proyecto Software', 300, 1589576649, 1589576649, 39, 12),
(116, 'adaptación de sistema ERP para una empresa de Zamora', 'Proyecto Software', 300, 1589576649, 1589576649, 38, 12),
(117, 'adaptación de sistema ERP para una empresa de Zamora', 'Proyecto Software', 200, 1589576649, 1589576649, 36, 12),
(118, 'adaptación de sistema ERP para una empresa de Zamora', 'Proyecto Software', 50, 1589576649, 1589576649, 44, 12),
(119, '', 'pruebaGasto', -50, 1589578799, 1589578799, 5, 9),
(120, 'Salario por trabajar en la empresa \"X\"', 'Salario', 100, 1589579292, 1589579292, 46, 32),
(121, 'Salario por trabajar en la empresa \"X\"', 'Salario', 600, 1589579292, 1589579292, 45, 32),
(122, 'Salario por trabajar en la empresa \"X\"', 'Salario', 100, 1589579292, 1589579292, 47, 32),
(123, 'Salario por trabajar en la empresa \"X\"', 'Salario', 100, 1589579292, 1589579292, 49, 32),
(124, 'Salario por trabajar en la empresa \"X\"', 'Salario', 100, 1589579292, 1589579292, 48, 32),
(125, 'El alquiler del piso', 'Alquiler', -400, 1589579339, 1589579339, 45, 32),
(126, 'ultima pelicula de Christopher Nolan y palomitas', 'Pelicula TENET', -8.5, 1589579445, 1589579445, 47, 32),
(127, 'Compra de acciones del Banco Santander', 'Acciones de Santander', -85, 1589579567, 1589579567, 48, 32),
(128, 'En el mercadona', 'Compra Semanal', -56.48, 1589579610, 1589579610, 45, 32),
(129, '', 'Gimnasio', -30, 1589618506, 1589618506, 47, 32),
(130, 'Ingresos por jugar a la loteria', 'Loteria', 15, 1589618572, 1589618572, 46, 32),
(131, 'Ingresos por jugar a la loteria', 'Loteria', 90, 1589618572, 1589618572, 45, 32),
(132, 'Ingresos por jugar a la loteria', 'Loteria', 15, 1589618572, 1589618572, 47, 32),
(133, 'Ingresos por jugar a la loteria', 'Loteria', 15, 1589618572, 1589618572, 48, 32),
(134, 'Ingresos por jugar a la loteria', 'Loteria', 15, 1589618572, 1589618572, 49, 32),
(135, 'El salario de la empresa', 'Salario', 200, 1590056597, 1590056597, 52, 33),
(136, 'El salario de la empresa', 'Salario', 600, 1590056597, 1590056597, 50, 33),
(137, 'El salario de la empresa', 'Salario', 200, 1590056597, 1590056597, 51, 33),
(138, 'La compra en el mercadona', 'Compra semanal', -68.95, 1590056668, 1590056668, 50, 33),
(139, 'En la empresa x', 'Salario', 240, 1590072793, 1590072793, 55, 40),
(140, 'En la empresa x', 'Salario', 240, 1590072793, 1590072793, 54, 40),
(141, 'En la empresa x', 'Salario', 720, 1590072793, 1590072793, 53, 40),
(142, '', 'Compra semanal', -68.15, 1590072830, 1590072830, 53, 40),
(143, '', 'Salario', 313.5, 1590074602, 1590074602, 57, 41),
(144, '', 'Salario', 752.4, 1590074602, 1590074602, 56, 41),
(145, '', 'Salario', 188.1, 1590074603, 1590074603, 58, 41),
(146, '', 'Compra Semanal', -65.45, 1590074668, 1590074668, 56, 41),
(151, 'Salario por trabajar en la empresa X', 'Salario', 100, 1591802249, 1591802249, 60, 43),
(152, 'Salario por trabajar en la empresa X', 'Salario', 600, 1591802249, 1591802249, 59, 43),
(153, 'Salario por trabajar en la empresa X', 'Salario', 200, 1591802249, 1591802249, 62, 43),
(154, 'Salario por trabajar en la empresa X', 'Salario', 100, 1591802249, 1591802249, 61, 43),
(155, 'El alquiler del mes de Junio', 'Alquiler', -400, 1591807125, 1591807125, 59, 43);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento_producto`
--

CREATE TABLE `movimiento_producto` (
  `id` int(11) NOT NULL,
  `idMovimiento` int(11) NOT NULL COMMENT 'El identificador del movimiento que tiene el producto',
  `idProducto` int(11) NOT NULL COMMENT 'El identificador del producto que tiene el movimiento'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL COMMENT 'El identificador del producto',
  `name` int(11) NOT NULL COMMENT 'El nombre del producto',
  `price` int(11) NOT NULL COMMENT 'El precio del producto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `id` int(11) NOT NULL COMMENT 'El identificador de la sucursal',
  `idEmpresa` int(11) NOT NULL COMMENT 'El identificador de la empresa asociada',
  `location` varchar(40) NOT NULL COMMENT 'La localización de la sucursal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `distribution` int(11) NOT NULL DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `password_hash`, `access_token`, `distribution`) VALUES
(1, 'victor', '$2y$13$jf.szamI8LxdAla2qVpXVOmuKouzUO45uEg.mcNvPSAphMEL3VTkS', '1', 100),
(2, 'usuario2', '$2y$13$t9McVWS0Ycr922EFHrlYgeVlp50d6vU9yOukSPDDffRQEIX5uwJKi', '', 100),
(3, 'usuario3', '$2y$13$aP15adJI8H4RmwQ5few4F.feIIVS9LGG/7H7ZkVFGdjtEkFMDeBxC', '', 100),
(4, 'usuario4', '$2y$13$U3jIApa69afKaSqeSSAL8.0rnQYm70LhiqzB7kgtTNCU7wK.rk41O', '', 100),
(5, 'usuario5', '$2y$13$UI.FL.otXkR6nVVmmmNzL.L6nPhGgUXYvEg8KvukrZTe2ST41Yyq6', '1KOJ0cV7V91W1b4Bg-3u4BadNY73FcsV', 100),
(7, 'victor1', '$2y$13$/QrVEEio20DhNiUjkACFHOjVpbg1Rv9CUsnIyQJc30UvD8VxNpIeW', '0yveUJ8BVM5gxifWkcdDI6SQiRiU81VE', 80),
(9, 'victor2', '$2y$13$2XxEH18kVP1jOV3r5d6NcurzYlbRm6LSDrGVt8BIXVaLuawzqjkwu', '-b-DiTfDUZtjqEajiuIxmNY4gf6lvO8z', 41),
(10, 'victor3', '$2y$13$Tog2L4tue7tveFiOTgEBV.DArHFS27xKRSL2GzUgXXnhXeIs5Gfvu', 'dWS5M-V_NM7FJ9jyB5tDGXBuVaqwRyyy', 87),
(12, 'victor4', '$2y$13$cJS/jdE7HmuIjBCC8qdHqeGJ/WDjDjD7Eu/WimPzgQalBSAi0CT4q', 'iedFVIp7ibAYPEzapjuWKEp1Piy4tBvO', 0),
(13, 'victor5', '$2y$13$ftfVT9J0E/p1iKjAMpj98eh.vjju/a83nY5qWcTQ4/mAOWGq9E/gC', 'XXzf-iP2J59ozrj7HZ4LsrBdT7ImpmU0', 100),
(14, 'victor7', '$2y$13$H0B49sW1NJHVr45dfqWSLekC0Bz/mYcaly5DPVDK1uoHtoLp17xUi', 'SvOZQjiRviggC5ZIm0V9oDq-1ydtJjNT', 100),
(15, 'victor8', '$2y$13$XYEXqqz3X0.nUvti0PTtQOOnrDNRGhasdJVtLRhB.THohxL5lZg02', 'P39NN651WzTuAvb6TMPaD88_kinsxfTp', 100),
(16, 'victor9', '$2y$13$hOnzfh3DoVe/lvEKlw.nvO0xmpcVIUps/P7zRkrhjE4DxyvrvrzOy', 'D3wy7NdhMuoTX42Z7O8fkzRz-hJacE8y', 100),
(17, 'victor10', '$2y$13$DkZpWH8mYG2/Elw8BJHLWuXnsNVs273quZ7aXlEcvoRIChJeP9ukS', '8rm3I6Xokk1HM9tneqSS9c4pivrb9QI3', 100),
(18, 'victor11', '$2y$13$3jWaEXjIOxNs1DIAOQ9Zq.OnaPzfdq1/Wv4QWBIpIGa2VPkxeGyoa', 'zZXrM3-E_OL5f6sS9Gfjz15467oszGER', 100),
(19, 'victor14', '$2y$13$izhqJjuBAI1HLgqzYeTHt.NyFgO/EUf9sGTUVDoDRNE79WHS2Q9ZW', '_aGt3o1KQOC3cl9wHiGwCft5JJwMSoQd', 100),
(20, 'victor15', '$2y$13$5eQ9MZ3.h.dDhG/KNkRbDOVSwctvKb9N6PVhut3I5nGH9IPebD7FW', '8npd9KswMgVmXngAv2K79By_T_0ztSTT', 100),
(21, 'victor16', '$2y$13$AY0ez./lG1EjuKiuuWChEuYcUfWnEgc4U9nReGQK0rqLZj.IoR9Oa', 'ujEbjdMTBgXhU8WjT-eXiUobr2L4EeW-', 100),
(22, 'cuentaprueba', '$2y$13$9R6YkCEb7yazXYpWWHM8gONbPG.3rR.vxaAuBebQj0fdZAa36ojZK', '29cCO8hKW8J8k1fDYcR23xnrHYUHM5Rj', 100),
(23, 'cuentaprueba2', '$2y$13$c8de7jTeQxZ6so/4wXW/J.hG2dIUHHigdIMBtLqfxD8CInQ5IfITW', '4jM5mgunqn06qDLHDUBsFVRrINh4qOKu', 100),
(24, 'cuentaprueba3', '$2y$13$4y5j0S.HecDPMyZHwehzouNW1i2odbYz2FEgfJHEhgKRWYFjdXPty', 'iRq8s9TRs_OppD1X-OcVUrV72Oxwbx6O', 100),
(25, 'cuentaprueba4', '$2y$13$QLh.8KfRvY6slLw0Kj5JU.eFJVDuW2hTuEbC073vNAe.cBI8dW6U2', 'Fc_0Mg7MtMQLkLLvg00IUyugYqGfdWny', 100),
(26, 'cuentaprueba5', '$2y$13$e4H5qqvI1Jt0LUUY0PVr0O24CQrAOavQOR16heza4kKNNYo9a3u7S', 'oItYnJAHyeItx0SkBItvGca2tVO8WJxf', 100),
(27, 'Cuentaprueba6', '$2y$13$UWlogchaDA1vtUcljoN45eKSUv1WIDhZZ/oW0IQ5MG.Cm1i4qJw2.', 'ExnIUkS2JXoD-bsjMK_3tQraVTEo7Uym', 100),
(28, 'cuentaprueba7', '$2y$13$Di2pDB2nUrV1WdRCKYHdXOzxBBWktlaC.oThMx7KC3lTRrq.AtdHu', '7GlzKKwB48LqoQzi2nnQ0idaN-mPvA_R', 100),
(29, 'cuentaprueba8', '$2y$13$fw/XwCLht9tfKdGIYbah6.Yim0iqMJ0LnZoVvJsSAhaGaYgKctPpC', '_iszP5-R8rEYJ0qKZg2VkMvESLrcqL5r', 100),
(30, 'victor6', '$2y$13$Sc7wUddUekbSJWHU6rEQfugDIfVxXoFGK2rqrFFgB.MXzaSolKvsq', 'DpF9Ih6REu5-BuNOTseVBZZW4YwPbRR5', 100),
(31, 'victor38', '$2y$13$v.jbX0a8wfG.XNns3W8EFOLm0H2dKeO.NWdgnyfQA/T0wSRjbXKWi', 'AeAZHlIvAHywo0Rav4w8oo0u5F7R3wSO', 100),
(32, 'UsuarioRegistrado', '$2y$13$ZLIWfD1p/pQeTEb2pCOFyu9xdSEiTTZDpx5J1XTuAPMcCz6UzNff2', 'ugL6M4TGeK2GIeiqv093az1ecsmO5cyX', 0),
(33, 'Prueba1', '$2y$13$/qNmyXwf0aw5kZeJycpFcee/NjGgS2qisNZL0avWZ.vV6ShnDi9ae', 'PQkZOfDMmGqMJUeUBHjby-mrEj4f1RV_', 0),
(37, 'Prueba2', '$2y$13$X5yOEJY828yPcDnEJxiUOuLBS7P.DmNxVzTzy4g2njPFusNAcXo8u', 'ELR9r1I5-XcXBTERmUfZwzUNpOc6U2tq', 100),
(38, 'Prueba3', '$2y$13$zq6HlRMWFHXAfGc96TMb5OFRLcuLH4EI2VQkdcGvRTJqDy4vPRYPy', 'j4D_4Wr-yDSJabgn27sc4WwIZNDjY1Wr', 100),
(39, 'Prueba4', '$2y$13$hMri3ETWKG/8SVWIb/ckuOXBYgOfzxe6swJre4IF/aV4KqlhByCg.', 'nznR-AqIyy4eGTIRvzLFhSYbPudy0p6E', 100),
(40, 'Prueba6', '$2y$13$oBo1cqPMGXlL96yVeop41uoRZdkdh1TcgAx/maifGPaqPvsQ9kk0m', 'TdPmv-cl6LFP8xDgVQG82_EYq9h5lK5j', 0),
(41, 'Prueba7', '$2y$13$LG6kuhfodv.k9d7dMIDRiuFWI7lMzrBdQhZ8w29YR3CJZoRsLLmL6', '47NdTlQBnfMqgtDokYqaZBj8Lr7fYoaD', 0),
(42, 'prueba50', '$2y$13$gGo/K3DynCWGqj9rJ9YLkuJMVF9VF9s7jIPVo10U68SN1TwiuCInu', 'M1ygnCRhLc6MYIvP4mqu_Ud5EifyfoM9', 100),
(43, 'Prueba101', '$2y$13$cQJXP9BSpf/Xbr.kDuT84eKMuyGrrzS2G3IIRJgVu2r0Z/uXy2keW', '61ppd6vpcdtEXcv0Yu36E-jisBdDdnmp', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL COMMENT 'El correo electronico del usuario',
  `password` varchar(40) NOT NULL COMMENT 'La contraseña del usuario',
  `name` varchar(40) NOT NULL COMMENT 'El nombre del usuario',
  `date_of_birth` int(11) NOT NULL COMMENT 'La fecha de nacimiento del usuario',
  `created_at` int(11) NOT NULL COMMENT 'La fecha de creación del usuario',
  `updated_at` int(11) NOT NULL COMMENT 'La fecha de modificación del usuario',
  `access_token` varchar(32) NOT NULL COMMENT 'El numero que se usará para la validación de usuario'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `password`, `name`, `date_of_birth`, `created_at`, `updated_at`, `access_token`) VALUES
(1, 'victor@gmail.com', 'hola', 'victor', 19980217, 20200121, 0, '1'),
(2, 'pepito@gmail.com', 'pepito', 'pepito', 20191007, 20200130, 0, '2'),
(3, 'pepito@gmail.com', 'pepito', 'pepito', 20191007, 20200130, 0, '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_cuenta`
--

CREATE TABLE `usuario_cuenta` (
  `id` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL COMMENT 'El identificador de usuario asociado a la cuenta',
  `idCuenta` int(11) NOT NULL COMMENT 'El identificador de la cuenta asociada al usuario',
  `distribution` int(11) NOT NULL COMMENT 'Porcentaje de la cantidad introducidad por cada propietario de la cuenta'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario_cuenta`
--

INSERT INTO `usuario_cuenta` (`id`, `idUsuario`, `idCuenta`, `distribution`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 0),
(3, 10, 3, 40),
(4, 10, 1, 35),
(5, 9, 5, 0),
(6, 10, 5, 10),
(7, 10, 8, 11),
(8, 10, 7, 10),
(9, 10, 19, 10),
(10, 10, 20, 10),
(11, 10, 21, 10),
(12, 10, 22, 40),
(13, 10, 23, 80),
(14, 10, 24, 80),
(15, 10, 25, 80),
(16, 10, 26, 80),
(17, 10, 27, 80),
(18, 10, 28, 80),
(19, 10, 29, 80),
(20, 10, 30, 80),
(21, 10, 31, 80),
(22, 10, 32, 55),
(23, 10, 33, 80),
(24, 9, 34, 100),
(25, 7, 35, 20),
(26, 12, 36, 20),
(27, 12, 37, 15),
(28, 12, 38, 30),
(29, 12, 39, 30),
(30, 10, 40, 5),
(38, 12, 44, 5),
(39, 32, 45, 60),
(40, 32, 46, 10),
(41, 32, 47, 10),
(42, 32, 48, 10),
(43, 32, 49, 10),
(44, 33, 50, 60),
(45, 33, 51, 20),
(46, 33, 52, 20),
(47, 40, 53, 60),
(48, 40, 54, 20),
(49, 40, 55, 20),
(50, 41, 56, 60),
(51, 41, 57, 25),
(52, 41, 58, 15),
(53, 43, 59, 60),
(54, 43, 60, 10),
(55, 43, 61, 10),
(56, 43, 62, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_empresa`
--

CREATE TABLE `usuario_empresa` (
  `id` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL COMMENT 'El identificador del usuario que sigue a la empresa',
  `idEmpresa` int(11) NOT NULL COMMENT 'El identificador de la empresa a la que sigue el usuario'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria_movimiento`
--
ALTER TABLE `categoria_movimiento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresa_producto`
--
ALTER TABLE `empresa_producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movimiento_producto`
--
ALTER TABLE `movimiento_producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario_cuenta`
--
ALTER TABLE `usuario_cuenta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario_empresa`
--
ALTER TABLE `usuario_empresa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'El identificador de la categoría de movimiento';

--
-- AUTO_INCREMENT de la tabla `categoria_movimiento`
--
ALTER TABLE `categoria_movimiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'El identificador de la cuenta', AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'El identificador de la empresa';

--
-- AUTO_INCREMENT de la tabla `empresa_producto`
--
ALTER TABLE `empresa_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT de la tabla `movimiento_producto`
--
ALTER TABLE `movimiento_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'El identificador del producto';

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'El identificador de la sucursal';

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario_cuenta`
--
ALTER TABLE `usuario_cuenta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `usuario_empresa`
--
ALTER TABLE `usuario_empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
