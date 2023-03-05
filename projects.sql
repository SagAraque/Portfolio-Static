-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 27-12-2021 a las 18:12:26
-- Versión del servidor: 10.3.31-MariaDB-0+deb10u1
-- Versión de PHP: 7.3.31-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `projects`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id_image` int(11) NOT NULL,
  `id_project` int(10) UNSIGNED NOT NULL,
  `url` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `desc_img` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id_image`, `id_project`, `url`, `desc_img`) VALUES
(1, 1, './img/festival/festival1.webp', 'Index de la web PrimaveraSound'),
(2, 1, './img/festival/festival2.webp', 'Sección información de la web Primavera Sound'),
(3, 1, './img/festival/festival3.webp', 'Sección ubicación de la web Primavera Sound'),
(4, 1, './img/festival/festival4.webp', 'Sección quienes somos de la web Primavera Sound'),
(5, 1, './img/festival/festival5.webp', 'Sección quienes somos de la web Primavera Sound'),
(6, 1, './img/festival/festival6.webp', 'Sección contacto de la web Primavera Sound'),
(7, 1, './img/festival/festival7.webp', 'Sección entradas de la web Primavera Sound'),
(8, 1, './img/festival/festival8.webp', 'Sección información sobre el evento de Barcelona de la web Primavera Sound'),
(9, 1, './img/festival/festival9.webp', 'Sección información sobre el evento de Barcelona de la web Primavera Sound'),
(10, 1, './img/festival/festival10.webp', 'Sección información sobre el evento de Barcelona de la web Primavera Sound'),
(11, 1, './img/festival/festival11.webp', 'Sección información sobre el evento de Barcelona de la web Primavera Sound'),
(22, 2, 'img/customnloppc/customLoopPc1.webp', 'Mitad superior del index de la web CustomLoopPc'),
(23, 2, 'img/customnloppc/customLoopPc2.webp', 'Mitad inferior del index de la web CustomLoopPc'),
(24, 2, 'img/customnloppc/customLoopPc3.webp', 'Mitad superior de la sección customicación de la web CustomLoopPC'),
(25, 2, 'img/customnloppc/customLoopPc4.webp', 'Mitad inferior de la sección customicación de la web CustomLoopPC'),
(26, 2, 'img/customnloppc/customLoopPc5.webp', 'Sección refrigeración de la web CustomLoopPC'),
(27, 2, 'img/customnloppc/customLoopPc6.webp', 'Sección radiadores de la web CustomLoopPc'),
(28, 2, 'img/customnloppc/customLoopPc7.webp', 'Sección procesadores de la web CustomLoopPc'),
(29, 2, 'img/customnloppc/customLoopPc8.webp', 'Parte superior la sección del tutorial sobre como escoger los componentes de un pc de la web CustomLoopPc'),
(30, 2, 'img/customnloppc/customLoopPc9.webp', 'Sección del tutorial sobre como escoger los componentes de un pc de la web CustomLoopPc'),
(31, 2, 'img/customnloppc/customLoopPc10.webp', 'Sección de contacto de la web de CustomLoopPC'),
(32, 3, 'img/netflox/netflox1.webp', 'Mitad superior del index de la landing page de Netflox'),
(33, 3, 'img/netflox/netflox2.webp', 'Mitad inferior del index de la landing page de Netflox'),
(34, 4, 'img/coolpc/coolpc1.webp', 'Ventana de login de CoolPC'),
(35, 4, 'img/coolpc/coolpc2.webp', 'Menú principal de CoolPC'),
(36, 4, 'img/coolpc/coolpc3.webp', 'Sección solicitar componentes de CoolPC'),
(37, 4, 'img/coolpc/coolpc4.webp', 'Sección mostrar componentes de CoolPC'),
(38, 4, 'img/coolpc/coolpc5.webp', 'Sección devolver componentes de CoolPC'),
(39, 4, 'img/coolpc/coolpc6.webp', 'Sección registrar proveedores de CoolPC'),
(40, 4, 'img/coolpc/coolpc7.webp', 'Sección mostrar proveedores de CoolPC'),
(41, 4, 'img/coolpc/coolpc8.webp', 'Sección preparar pedidos de CoolPC'),
(42, 4, 'img/coolpc/coolpc9.webp', 'Sección mostrar pedidos de CoolPC'),
(43, 4, 'img/coolpc/coolpc10.webp', 'Sección preparar pedidos de CoolPC con un pedido ya preparado'),
(44, 5, 'img/ryanair/ryanair1.webp', 'Parte superior del index de la web de Ryanair'),
(45, 5, 'img/ryanair/ryanair2.webp', 'Mitad del index de la web de Ryanair'),
(46, 5, 'img/ryanair/ryanair3.webp', 'Parte inferior del index de la wb de Ryanair'),
(47, 5, 'img/ryanair/ryanair4.webp', 'Mitad superior de la sección destinos de la web de Ryanair'),
(48, 5, 'img/ryanair/ryanair5.webp', 'Mitad inferior de la sección destinos de la web de Ryanair'),
(49, 5, 'img/ryanair/ryanair6.webp', 'Mitad superior de la sección quienes somos de la web de Ryanair'),
(50, 5, 'img/ryanair/ryanair7.webp', 'Mitad inferior de la sección quienes somos de la web de Ryanair'),
(51, 5, 'img/ryanair/ryanair8.webp', 'Mitad superior de la sección contacto de la web de Ryanair'),
(52, 5, 'img/ryanair/ryanair9.webp', 'Mitad inferior de la sección contacto de la web de Ryanair'),
(53, 6, 'img/daltonismo/daltonismo1.webp', 'Mitad superior del index de la web Daltonismo'),
(54, 6, 'img/daltonismo/daltonismo2.webp', 'Mitad inferior del index de la web Daltonismo'),
(55, 6, 'img/daltonismo/daltonismo3.webp', 'Mitad superior del index de la web Daltonismo con el filtro tritanopia aplicado'),
(56, 6, 'img/daltonismo/daltonismo4.webp', 'Sección test de la web Daltonismo'),
(57, 6, 'img/daltonismo/daltonismo5.webp', 'Sección test de la web Daltonismo con el resultado de este'),
(58, 6, 'img/daltonismo/daltonismo6.webp', 'Sección contacto de la web Daltonismo'),
(59, 7, 'img/calculadora/calc1.webp', 'Interfaz calculadora VUE'),
(60, 7, 'img/calculadora/calc2.webp', 'Interfaz calculadora VUE'),
(61, 8, './img/madClothing/madClothing1.webp', 'Cabecera de la web con el formulario para recibir mas ofertas por email'),
(62, 8, './img/madClothing/madClothing2.webp', 'Primeras tres cards con ofertas de MadClothing'),
(63, 8, './img/madClothing/madClothing3.webp', 'Últimas tres cards con ofertas de MadClothing'),
(64, 8, './img/madClothing/madClothing4.webp', 'Los beneficios de comprar en MadClothing junto con el pie de página');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `languages`
--

CREATE TABLE `languages` (
  `id_language` int(2) UNSIGNED NOT NULL,
  `name_language` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `languages`
--

INSERT INTO `languages` (`id_language`, `name_language`) VALUES
(1, 'HTML'),
(2, 'CSS'),
(3, 'Javascript'),
(4, 'PHP'),
(5, 'JAVA'),
(6, 'MySQL'),
(7, 'VUE'),
(8, 'Python'),
(9, 'R'),
(10, 'Bootstrap');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `language_images`
--

CREATE TABLE `language_images` (
  `id_language` int(2) UNSIGNED NOT NULL,
  `logo_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `background_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `alt_background` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `alt_logo` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `language_images`
--

INSERT INTO `language_images` (`id_language`, `logo_url`, `background_url`, `alt_background`, `alt_logo`) VALUES
(1, './img/logoHtml.png', './img/html.webp', 'Fragmento de código de html', 'Logo de HTML'),
(2, './img/logoCss.png', './img/css.webp', 'Fragmento de código de CSS', 'Logo de CSS en blanco y negro'),
(3, './img/logoJs.png', './img/js.webp', 'Fragmento de código de javascript', 'Logo de Javascript en blanco y negro'),
(4, './img/logoPhp.png', './img/php.webp', 'Fragmento de código de php', 'Logo de php en blanco y negro'),
(5, './img/logoJava.png', './img/java.webp', 'Fragmento de código de un metodo en java', 'Logo de Java en blanco y negro'),
(6, './img/logoMysql.png', './img/mysql.webp', 'Fragmento de código de un procedimiento en MySQL', 'Logo de MySQL en blanco y negro'),
(7, './img/logoVue.png', './img/vue.webp', 'Fragmento de código de VUE', 'Logo de VUE en blanco y negro'),
(8, './img/logoPython.png', './img/python.webp', 'Fragmento de código de python', 'Logo de python en blanco y negro'),
(9, './img/logoR.png', './img/r.webp', 'Fragmento de código de R', 'Logo de R en blanco y negro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects`
--

CREATE TABLE `projects` (
  `id_project` int(10) UNSIGNED NOT NULL,
  `name_project` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `desc_project` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `languages` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `projects`
--

INSERT INTO `projects` (`id_project`, `name_project`, `desc_project`, `languages`) VALUES
(1, 'Primavera Sound', 'Web inspirada en Primavera Sound\r\n', 'HTML/CSS'),
(2, 'CustomLoopPC', 'Tienda online de componentes informáticos - Web grupal', 'HTML/CSS/Javascript'),
(3, 'Netflox', 'Landing page de Netflox, inspirada en Netflix', 'HTML/CSS'),
(4, 'CoolPC', 'CRUD con conexión a base de datos', 'Java/MySQL'),
(5, 'Ryanair', 'Web inspirada en la aerolinea Ryanair', 'HTML/CSS/Javascript'),
(6, 'Daltonismo', 'Web sobre el daltonismo', 'HTML/CSS/Javascript'),
(7, 'Calculadora VUE', 'PWA creada con VUE', 'HTML/CSS/Javascript/VUE'),
(8, 'MadClothing', 'Landing page de ofertas para black friday', 'HTML/CSS/Javascript/Bootstrap');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects_languages`
--

CREATE TABLE `projects_languages` (
  `id_project` int(2) UNSIGNED NOT NULL,
  `id_language` int(2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `projects_languages`
--

INSERT INTO `projects_languages` (`id_project`, `id_language`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(4, 5),
(4, 6),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 2),
(7, 3),
(7, 7),
(8, 1),
(8, 2),
(8, 3),
(8, 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id_image`),
  ADD KEY `fg_id_project` (`id_project`);

--
-- Indices de la tabla `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id_language`);

--
-- Indices de la tabla `language_images`
--
ALTER TABLE `language_images`
  ADD PRIMARY KEY (`id_language`);

--
-- Indices de la tabla `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id_project`);

--
-- Indices de la tabla `projects_languages`
--
ALTER TABLE `projects_languages`
  ADD PRIMARY KEY (`id_project`,`id_language`),
  ADD KEY `id_language` (`id_language`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `languages`
--
ALTER TABLE `languages`
  MODIFY `id_language` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `projects`
--
ALTER TABLE `projects`
  MODIFY `id_project` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `fg_id_project` FOREIGN KEY (`id_project`) REFERENCES `projects` (`id_project`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `language_images`
--
ALTER TABLE `language_images`
  ADD CONSTRAINT `language_images_ibfk_1` FOREIGN KEY (`id_language`) REFERENCES `languages` (`id_language`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `projects_languages`
--
ALTER TABLE `projects_languages`
  ADD CONSTRAINT `projects_languages_ibfk_1` FOREIGN KEY (`id_language`) REFERENCES `languages` (`id_language`) ON UPDATE CASCADE,
  ADD CONSTRAINT `projects_languages_ibfk_2` FOREIGN KEY (`id_project`) REFERENCES `projects` (`id_project`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
