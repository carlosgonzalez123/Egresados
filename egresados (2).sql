-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-12-2019 a las 15:54:31
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `egresados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `egresado`
--

CREATE TABLE `egresado` (
  `id` int(11) NOT NULL,
  `documento` varchar(12) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `programa` int(11) DEFAULT NULL,
  `codigo` varchar(10) DEFAULT NULL,
  `perfil` text,
  `clave` varchar(50) DEFAULT NULL,
  `validado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `egresado`
--

INSERT INTO `egresado` (`id`, `documento`, `nombre`, `telefono`, `email`, `programa`, `codigo`, `perfil`, `clave`, `validado`) VALUES
(1, '1093787904', 'Jhoan Mancilla', '3112037610', 'jhoan@hotmail.com', 115, '1151618', 'Ingeniero', '123456', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudio`
--

CREATE TABLE `estudio` (
  `id` int(11) NOT NULL,
  `egresado` int(11) DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  `periodofin` varchar(4) DEFAULT NULL,
  `lugar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estudio`
--

INSERT INTO `estudio` (`id`, `egresado`, `titulo`, `nivel`, `periodofin`, `lugar`) VALUES
(1, 1, 'Ingeniero', 3, '2025', 'Cucuta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia`
--

CREATE TABLE `experiencia` (
  `id` int(11) NOT NULL,
  `egresado` int(11) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `funciones` text,
  `periodoinicio` varchar(4) DEFAULT NULL,
  `periodofin` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `experiencia`
--

INSERT INTO `experiencia` (`id`, `egresado`, `descripcion`, `funciones`, `periodoinicio`, `periodofin`) VALUES
(1, 1, 'Web de Scorts', 'Administrador, Ceo y seo', '2019', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE `nivel` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nivel`
--

INSERT INTO `nivel` (`id`, `descripcion`) VALUES
(1, 'Basica'),
(2, 'Secundaria'),
(3, 'Universitaria'),
(4, 'Maestria'),
(5, 'Doctorado'),
(6, 'El puto amo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE `programa` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `programa`
--

INSERT INTO `programa` (`codigo`, `nombre`) VALUES
(111, 'Ingenieria Civil'),
(112, 'Ingenieria Mecanica'),
(115, 'Ingenieria de Sistemas'),
(119, 'Ingenieria Insdustrial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario` varchar(20) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `clave` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `programa` int(11) DEFAULT NULL,
  `tipo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario`, `nombre`, `clave`, `email`, `programa`, `tipo`) VALUES
('gallardo', 'Oscar Gallardo', '123456', 'galla@gmail.com', 115, 0),
('ingrene', 'Carlos Rene Angarita', '123456', 'rene@gmail.com', 115, 1),
('smoke', 'Jhoan', '123456', 'jhoan@hotmail.com', 115, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `egresado`
--
ALTER TABLE `egresado`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `documento` (`documento`),
  ADD KEY `IXFK_egresado_programa` (`programa`);

--
-- Indices de la tabla `estudio`
--
ALTER TABLE `estudio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IXFK_estudio_egresado` (`egresado`),
  ADD KEY `IXFK_estudio_nivel` (`nivel`);

--
-- Indices de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IXFK_experiencia_egresado` (`egresado`);

--
-- Indices de la tabla `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `IXFK_usuario_programa` (`programa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `egresado`
--
ALTER TABLE `egresado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `estudio`
--
ALTER TABLE `estudio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `nivel`
--
ALTER TABLE `nivel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `egresado`
--
ALTER TABLE `egresado`
  ADD CONSTRAINT `FK_egresado_programa` FOREIGN KEY (`programa`) REFERENCES `programa` (`codigo`);

--
-- Filtros para la tabla `estudio`
--
ALTER TABLE `estudio`
  ADD CONSTRAINT `FK_estudio_egresado` FOREIGN KEY (`egresado`) REFERENCES `egresado` (`id`),
  ADD CONSTRAINT `FK_estudio_nivel` FOREIGN KEY (`nivel`) REFERENCES `nivel` (`id`);

--
-- Filtros para la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD CONSTRAINT `FK_experiencia_egresado` FOREIGN KEY (`egresado`) REFERENCES `egresado` (`id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_usuario_programa` FOREIGN KEY (`programa`) REFERENCES `programa` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
