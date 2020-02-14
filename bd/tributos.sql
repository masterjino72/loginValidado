-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-02-2020 a las 23:25:56
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

create database tributos;
use tributos;


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tributos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contribuyentes`
--

CREATE TABLE `contribuyentes` (
  `cedula` varchar(20) NOT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `clave` varchar(20) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contribuyentes`
--

INSERT INTO `contribuyentes` (`cedula`, `nombres`, `clave`, `correo`, `telefono`) VALUES
('111', 'Jairo', '111', 'jairo@correo.com', '111'),
('241-010180-0005B', 'BELKIS BLANDON PEREZ ', 'Sbeddl55', NULL, NULL),
('241-011059-0000N', 'JOSE IGNACIO UBEDA MARTINEZ', 'Qkoemb49', NULL, NULL),
('241-070856-0001F', 'CAYETANA ALBERTINA NAVARRETE', 'Mxmciy50', NULL, NULL),
('241-090348-0001V', 'EVANGELINA DEL CARMEN GUTIERREZ AGUILAR', 'Nncdrz03', NULL, NULL),
('241-130470-0004Y', 'CAROLA DEL SOCORRO GUTIERREZ CENTENO', 'Toouyv72', NULL, NULL),
('241-140391-0004B', 'NERCY ANDRYMAR HERRERA BLANDON', 'Waxbmz47', NULL, NULL),
('241-181279-0015V', 'EVENOR ANTONIO PINEDA', 'Qylfbm99', NULL, NULL),
('241-200881-0003A', 'KAREN VERONICA MORENO MATEY', 'Uuxjej93', NULL, NULL),
('241-210692-0008K', 'YAHAIRA DEL SOCORRO GONZALEZ', 'Ovgncq72', NULL, NULL),
('241-250782-0002X', 'LADISLAO JOEL MERCADO ALANIZ', 'Rpyeve16', NULL, NULL),
('241-251163-0002C', 'VILMA ISABEL MARIN GARCIA', 'Jwvsoj50', NULL, NULL),
('401-140288-0002R', 'MAYCOL JOEL UMA?A GARCIA', 'Jzpxmc55', NULL, NULL),
('408-210884-0002C', 'ESTELA MARIA BLANDON TELLEZ', 'Mvxvyt67', NULL, NULL),
('441-210564-0008J', 'MARIA ELENA MENDOZA OSEJO', 'Leewqo72', NULL, NULL),
('445-020872-0004E', 'ANGELA DEL SOCORRO MANZANARES OROZCO', 'Ufmbxb65', 'angela@correo.com', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_login`
--

CREATE TABLE `failed_login` (
  `ip_address` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tributos`
--

CREATE TABLE `tributos` (
  `cedula` varchar(20) NOT NULL,
  `expediente` int(11) DEFAULT NULL,
  `barrio` varchar(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `actividad` varchar(100) DEFAULT NULL,
  `ibi_a` varchar(30) DEFAULT NULL,
  `ibi_m` decimal(7,2) DEFAULT NULL,
  `aparcamiento_a` varchar(30) DEFAULT NULL,
  `aparcamiento_m` decimal(7,2) DEFAULT NULL,
  `cementerio_a` varchar(30) DEFAULT NULL,
  `cementerio_m` decimal(7,2) DEFAULT NULL,
  `matricula_a` varchar(30) DEFAULT NULL,
  `matricula_m` decimal(7,2) DEFAULT NULL,
  `rotulo_a` varchar(30) DEFAULT NULL,
  `rotulo_m` decimal(7,2) DEFAULT NULL,
  `ta_f` varchar(50) DEFAULT NULL,
  `ta_m` decimal(7,2) DEFAULT NULL,
  `energia_f` varchar(50) DEFAULT NULL,
  `energia_m` decimal(7,2) DEFAULT NULL,
  `piso_f` varchar(50) DEFAULT NULL,
  `piso_m` decimal(7,2) DEFAULT NULL,
  `imi_f` varchar(50) DEFAULT NULL,
  `imi_m` decimal(7,2) DEFAULT NULL,
  `retenciones_f` varchar(50) DEFAULT NULL,
  `retenciones_m` decimal(7,2) DEFAULT NULL,
  `saldos` decimal(7,2) DEFAULT NULL,
  `multas` decimal(7,2) DEFAULT NULL,
  `total` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tributos`
--

INSERT INTO `tributos` (`cedula`, `expediente`, `barrio`, `direccion`, `actividad`, `ibi_a`, `ibi_m`, `aparcamiento_a`, `aparcamiento_m`, `cementerio_a`, `cementerio_m`, `matricula_a`, `matricula_m`, `rotulo_a`, `rotulo_m`, `ta_f`, `ta_m`, `energia_f`, `energia_m`, `piso_f`, `piso_m`, `imi_f`, `imi_m`, `retenciones_f`, `retenciones_m`, `saldos`, `multas`, `total`) VALUES
('445-020872-0004E', 15, 'APANAS', 'MONUMENTO 100VRS AL OESTE', '', '', NULL, '', NULL, '2013-2017', '500.00', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '500.00', '25.00', '525.00'),
('401-140288-0002R', 16, 'BO. 20 DE MAYO', 'CASA DEL PUEBLO 1 1/2C AL ESTE', 'OPTICA', '', NULL, '', NULL, '', NULL, '2012-2017', '2400.00', '', NULL, 'ENE 2011 - SEP 2017', '2835.00', '', NULL, '', NULL, 'JUL 2012 - SEP 2017', '12800.00', '', NULL, '18035.00', '901.75', '18936.75'),
('241-200881-0003A', 17, 'CARLOS RIZO ', 'PRIMERA ETAPA 3ERA CALLE', 'PANADERIA', '2016', '88.60', '', NULL, '', NULL, '', NULL, '', NULL, 'SEP 2017 - OCT 2017', '100.00', '', NULL, '', NULL, 'SEP 2017 - OCT 2017', '400.00', '', NULL, '588.60', '29.43', '618.03'),
('241-250782-0002X', 20, 'DANIEL TELLER PAZ', 'CONTIGUO A LA CASA NO. 803', '', '', NULL, '', NULL, '2014-2017', '800.00', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '800.00', '40.00', '840.00'),
('241-140391-0004B', 35, 'BO.CARLOS NU?EZ', 'FRENTE DONDE FUE AMCASA COSTADO ESTE', 'FARMACIA', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, ' SEP 2017', '50.00', '', NULL, '', NULL, '', NULL, '', NULL, '50.00', '2.50', '52.50'),
('241-070856-0001F', 52, 'ERNESTO ROSALES', 'ESCUELA MISTRAL 1/2 AL NORTE', 'FARMACIA NATURAL', '', NULL, '', NULL, '', NULL, '2015-2017', '600.00', '', NULL, '', NULL, '', NULL, '', NULL, 'DIC 2008 - SEP 2017', '10600.00', '', NULL, '11200.00', '560.00', '11760.00'),
('241-130470-0004Y', 56, 'CARLOS NU?EZ', 'GASOLINERA PUMA ESTADIO MUNICIPAL 200 METROS AL NO', 'GASOLINERA', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, ' OCT 2017', '100.00', '', NULL, '', NULL, ' SEP 2017', '750.00', '', NULL, '850.00', '42.50', '892.50'),
('241-130470-0004Y', 56, 'ALEJANDRO RAMOS', 'ESSO CENTRAL 11/2C AL NORTE', '', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, ' OCT 2017', '35.00', '', NULL, '', NULL, '', NULL, '', NULL, '35.00', '1.75', '36.75'),
('241-130470-0004Y', 56, 'SAN IISDRO', 'SAN ISIDRO', '', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, ' OCT 2017', '35.00', '', NULL, '', NULL, '', NULL, '', NULL, '35.00', '1.75', '36.75'),
('241-251163-0002C', 57, 'EL CONSUELO', '', 'PULPERIA ', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', '600.00', '', NULL, '600.00', '30.00', '630.00'),
('408-210884-0002C', 91, 'PROYECTO LINDA VISTA', 'ESCUELA ANDRES castro 25 vrs al norte', 'GRANOS BASICOS', '', NULL, '', NULL, '', NULL, '2016-2017', '600.00', '', NULL, 'ENE 2016 - SEP 2017', '630.00', '', NULL, '', NULL, 'ENE 2016 - SEP 2017', '6300.00', '', NULL, '7530.00', '376.50', '7906.50'),
('241-090348-0001V', 107, 'MAURICIO ALTAMIRANO', 'CATEDRAL SAN JUAN 1 1/2C AL SUR', 'TIENDA', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, NULL),
('241-210692-0008K', 125, 'SISLE', 'ESCUELA 10VRS AL SUR', 'PULPERIA ', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', '100.00', '', NULL, '100.00', '5.00', '105.00'),
('241-010180-0005B', 132, 'ROGER HANGUIEN II ETAPA', 'ROGER HANGUIEN II ETAPA', 'PULPERIA ', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'AGO 2017 - SEP 2017', '30.00', '', NULL, '', NULL, 'AGO 2017 - SEP 2017', '200.00', '', NULL, '230.00', '11.50', '241.50'),
('241-011059-0000N', 147, 'SAN CRISTOBAL', 'FRENTE A LA GASOLINERA SHELL AMERICA COSTADO ESTE', 'TRANSPORTE', '2016', '1809.00', '', NULL, '', NULL, '2017', '200.00', '', NULL, 'ENE 2016 - SEP 2017', '700.00', '', NULL, '', NULL, 'ENE 2017 - SEP 2017', NULL, '', NULL, '3609.00', '180.45', '3789.45'),
('241-181279-0015V', 152, 'GRACIAS A DIOS', 'MERCADO MUNICIPAL', 'GRANOS BASICOS', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, ' SEP 2017', '68.00', '', NULL, ' SEP 2017', '300.00', ' SEP 2017', '250.00', '', NULL, '618.00', '30.90', '648.90'),
('241-181279-0015V', 152, 'VILLA LIBERTAD', 'FRENTE AL CENTRO DE SALUD', '', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, ' SEP 2017', '15.00', '', NULL, '', NULL, '', NULL, '', NULL, '15.00', '0.75', '15.75'),
('241-181279-0015V', 152, 'EL JOCOTE', 'COSTADO SUR GASOLINERA PETRONIC', '', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, ' SEP 2017', '50.00', '', NULL, '', NULL, '', NULL, '', NULL, '50.00', '2.50', '52.50'),
('441-210564-0008J', 238, 'EL PARAISO', '', 'MINI PULPERIA', '', NULL, '', NULL, '', NULL, '2017', '200.00', '', NULL, '', NULL, '', NULL, '', NULL, 'JUL 2016 - SEP 2017', '1500.00', '', NULL, '1700.00', '85.00', '1785.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contribuyentes`
--
ALTER TABLE `contribuyentes`
  ADD PRIMARY KEY (`cedula`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
