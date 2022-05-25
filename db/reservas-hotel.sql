-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-05-2022 a las 17:12:29
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reservas-hotel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`id`, `img`, `fecha`) VALUES
(1, 'vistas/img/banner/banner01.jpg', '2022-04-20 15:34:20'),
(2, 'vistas/img/banner/banner02.jpg', '2022-04-20 15:34:20'),
(3, 'vistas/img/banner/banner03.jpg', '2022-04-20 15:34:20'),
(4, 'vistas/img/banner/banner04.jpg', '2022-04-20 15:34:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `ruta` text NOT NULL,
  `color` text NOT NULL,
  `tipo` text NOT NULL,
  `img` text NOT NULL,
  `descripcion` text NOT NULL,
  `incluye` text NOT NULL,
  `continental_alta` float NOT NULL,
  `continental_baja` float NOT NULL,
  `americano_alta` float NOT NULL,
  `americano_baja` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `ruta`, `color`, `tipo`, `img`, `descripcion`, `incluye`, `continental_alta`, `continental_baja`, `americano_alta`, `americano_baja`, `fecha`) VALUES
(1, 'habitacion-tipo-suite', '#847059', 'suite', 'vistas/img/suite/portada.png', 'Lorem ipsum dolor sit amet', '[{ \"item\": \"cama 2 x 2\", \"icono\": \"fas fa-bed\"},\r\n{ \"item\": \"TV de 42 Pulg\", \"icono\": \"fas fa-tv\"},\r\n{ \"item\": \"Agua Caliente\", \"icono\": \"fas fa-tint\"},\r\n{ \"item\": \"Jacuzzi\", \"icono\": \"fas fa-water\"},\r\n{ \"item\": \"Baño privado\", \"icono\": \"fas fa-toilet\"},\r\n{ \"item\": \"Sofá\", \"icono\": \"fas fa-couch\"},\r\n{ \"item\": \"Balcón\", \"icono\": \"far fa-image\"},\r\n{ \"item\": \"Servicio Wifi\", \"icono\": \"fas fa-wifi\"}]', 350000, 300000, 420000, 380000, '2019-04-06 16:28:02'),
(2, 'habitacion-tipo-especial', '#197DB1', 'especial', 'vistas/img/especial/portada.png', 'Lorem ipsum dolor sit amet', '[{ \"item\": \"cama 2 x 2\", \"icono\": \"fas fa-bed\"},\r\n{ \"item\": \"TV de 42 Pulg\", \"icono\": \"fas fa-tv\"},\r\n{ \"item\": \"Agua Caliente\", \"icono\": \"fas fa-tint\"},\r\n{ \"item\": \"Baño privado\", \"icono\": \"fas fa-toilet\"},\r\n{ \"item\": \"Sofá\", \"icono\": \"fas fa-couch\"},\r\n{ \"item\": \"Balcón\", \"icono\": \"far fa-image\"},\r\n{ \"item\": \"Servicio Wifi\", \"icono\": \"fas fa-wifi\"}]', 300000, 250000, 380000, 350000, '2019-04-06 16:28:07'),
(3, 'habitacion-tipo-standar', '#2F7D84', 'standar', 'vistas/img/standar/portada.png', 'Lorem ipsum dolor sit amet', '[{ \"item\": \"cama 2 x 2\", \"icono\": \"fas fa-bed\"},\r\n{ \"item\": \"TV de 42 Pulg\", \"icono\": \"fas fa-tv\"},\r\n{ \"item\": \"Agua Caliente\", \"icono\": \"fas fa-tint\"},\r\n{ \"item\": \"Baño privado\", \"icono\": \"fas fa-toilet\"},\r\n{ \"item\": \"Sofá\", \"icono\": \"fas fa-couch\"},\r\n{ \"item\": \"Servicio Wifi\", \"icono\": \"fas fa-wifi\"}]', 250000, 200000, 350000, 300000, '2019-04-06 16:28:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planes`
--

CREATE TABLE `planes` (
  `Id` int(11) NOT NULL,
  `tipo` varchar(500) NOT NULL,
  `img` text NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `precio_alta` int(11) NOT NULL,
  `precio_baja` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `planes`
--

INSERT INTO `planes` (`Id`, `tipo`, `img`, `descripcion`, `precio_alta`, `precio_baja`, `fecha`) VALUES
(1, 'PLAN ROMÁNTICO', 'vistas/img/planes/plan-romantico.png', 'Ven  y  celebra  con  nosotros  una  fecha  especial  como  aniversario  de  bodas,novios  o  una pedida de mano. . El paquete incluye lo siguiente: -1 de Noche de Alojamiento en Hab. Matrimonial - Botella de Espumante - Piqueo de Quesos ( 3 tipos) - Desayuno buffet - Check in 3.00 pm -Free late check out hasta las 3.00 pm - Uso del gimnasio y piscina* - Estacionamiento de cortesía Precio No incluye 10% de servicios y/o 18% de IGV ', 404, 360, '2022-05-04 14:54:40'),
(2, 'PLAN LUNA DE MIEL', 'vistas/img/planes/luna-de-miel.png', 'Disfrute su Luna de miel en Portobelo en el Plan Spa Portobelo, en plan todo incluido, un lugar perfecto para descansar, divertirse y tomar el sol en una isla paradisiaca. Aquí la fiesta y el goce están asegurados. Un ambiente amenizado con todos los ritmos de la gran cuenca de países del Caribe, así como la champeta, música que fusiona sonidos africanos y de indígenas colombianos, y que introduce a los viajeros en la cultura local.', 500, 399, '2022-05-04 14:55:41'),
(3, 'PLAN AVENTURA', 'vistas/img/planes/plan-aventura.png', 'En Aventura Amazonia encontrarás 5 circuitos multiaventura diferentes, formados por juegos que van de árbol a árbol, la supertirolina de 252 m. Al empezar, te entregarán todo el equipo necesario, que incluye arnés, mosquetones inteligentes y polea para las tirolinas. Seguidamente, y para que te habitues, un guía de Aventura Amazonia te hará pasar por el circuito de iniciación, donde te enseñará las normas básicas de seguridad del parque y el manejo el equipo.', 600, 400, '2022-05-04 14:55:53'),
(4, 'PLAN SPA', 'vistas/img/planes/plan-spa.png', 'El plan de spa para parejas es sin duda uno de los mejores planes románticos en Lima dónde encontrará gracias a nuestras instalaciones y atención, un lugar mágico, con una atención inigualable y con una vista excelente el lugar indicado para pasar con su pareja una mañana, tarde o noche inolvidable.\r\n', 450, 400, '2022-05-04 14:56:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recorrido`
--

CREATE TABLE `recorrido` (
  `id` int(11) NOT NULL,
  `foto_peq` text NOT NULL,
  `foto_grande` text NOT NULL,
  `titulo` text NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `recorrido`
--

INSERT INTO `recorrido` (`id`, `foto_peq`, `foto_grande`, `titulo`, `descripcion`, `fecha`) VALUES
(1, 'vistas/img/recorrido/pueblo01a.png\r\n', 'vistas/img/recorrido/pueblo01b.png', 'LOREM IPSUM', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo velit quis iusto magnam cupiditate dolorum repudiandae tempore cum minus eos a iure, officiis, eius, consequuntur unde nulla, enim quibusdam beatae.\r\n\r\n', '2022-05-25 14:15:17'),
(2, 'vistas/img/recorrido/pueblo02a.png', 'vistas/img/recorrido/pueblo02b.png', 'BBB BBBB', 'bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbb bbb bbbbbbbbbbbbbbbbbb bbb bbbbbb bb bbbbbbbbbbbbb bb bbbbbbbbb', '2022-05-25 14:18:51'),
(3, 'vistas/img/recorrido/pueblo03a.png', 'vistas/img/recorrido/pueblo03b.png', 'CCCCC CCCCCC', 'ccccc  cccccc ccc cc c cc c ccccccccccc c cccccc ccccccccccc  cccc ccc c cc ccccccccccc', '2022-05-25 14:18:51');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `recorrido`
--
ALTER TABLE `recorrido`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `planes`
--
ALTER TABLE `planes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `recorrido`
--
ALTER TABLE `recorrido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
