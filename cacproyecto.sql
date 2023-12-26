-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-12-2023 a las 19:43:51
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cacproyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `clave` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `nombre`, `clave`) VALUES
(1, 'pedrogonzales@gmail.com', 19992843);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidades`
--

CREATE TABLE `localidades` (
  `idlocalidad` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `idProvincia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `localidades`
--

INSERT INTO `localidades` (`idlocalidad`, `nombre`, `idProvincia`) VALUES
(1, 'Moreno', 3),
(2, 'Guaymallén', 4),
(3, 'Cafayate', 2),
(4, 'Cruz Alta', 1),
(5, 'Quilmes', 3),
(6, 'Berazategui', 3),
(7, 'San Martín', 3),
(8, 'Morón', 3),
(9, 'Castelar', 3),
(10, 'Cafayate', 2),
(11, 'CABA', 3),
(12, 'Florencio Varela', 3),
(13, 'Lavalle', 4),
(14, 'Las Heras', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `idpedido` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `lugarentrega` varchar(80) NOT NULL,
  `localidad` int(11) NOT NULL,
  `codpostal` varchar(9) NOT NULL,
  `formadepago` varchar(10) NOT NULL,
  `tarjtitular` varchar(40) NOT NULL,
  `tarjnumero` bigint(16) NOT NULL,
  `tarjvto` varchar(10) NOT NULL,
  `tarjclave` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`idpedido`, `nombre`, `apellido`, `usuario`, `mail`, `lugarentrega`, `localidad`, `codpostal`, `formadepago`, `tarjtitular`, `tarjnumero`, `tarjvto`, `tarjclave`) VALUES
(6, 'María', 'Rosales', 'mrosales', 'mrosales@gmail.com', 'null', 1, '3433', 'Efectivo', 'María Rosales', 40000012, '1220', 314),
(7, 'Pedro', 'Suarez', 'pesuar', 'pedro1999@gmail.com', 'null', 3, '1233', 'Tarjeta', 'Juan rodriguez', 2147483647, '0422', 124),
(8, 'Juana', 'Rodriguez', 'RodrigJuana', 'RodrigJuana@gmail.com', 'null', 5, '1233', 'no', 'Roberto Rodriguez', 2147483647, '0422', 153),
(9, 'Juana', 'Rodriguez', 'JuanArodri', 'jrodriguez@gmail.com', 'null', 1, '1233', 'tarjeta', 'Juan rodriguez', 2147483647, '0422', 154),
(10, 'Hermeto', 'Carmona', 'hcarmona', 'hcarmona@gmail.com', 'null', 6, '1882', 'Efectivo', 'Hermeto Carmona', 65464378945, '1225', 331),
(12, 'Facundo', 'Sileo', 'fsileo', 'fsileo@gmail.com', 'null', 1, '1884', 'checkedVal', 'Facundo Sileo', 53567658923, '0422', 423),
(13, 'Brenda', 'Benitez', 'bbenitez', 'bbenitez@hotmail.com', 'null', 1, '1223', 'Efectivo', 'Brenda Benitez', 874567, '0321', 423),
(14, 'Jesus', 'Rodriguez', 'Rodus', 'Rodus@gmail.com', 'null', 1, '1223', 'checkedVal', 'Jesus Rodriguez', 54364435346, '1124', 325),
(23, 'Beatriz', 'Perez', 'bperez', 'bperez@gmail.com', 'null', 2, '1554', 'mercado', 'Beatriz Perez', 43253253, '0227', 343),
(25, 'Hernesto', 'Peña', 'jrodriguez', 'jorgeHernesto@gmail.com', 'null', 1, '1223', 'no', 'Jesus Rodriguez', 42315234, '0225', 123),
(27, 'Hernesto', 'Rodriguez', 'heriguez', 'heriguez@gmail.com', 'null', 2, '1223', 'tarjeta', 'Jesus Rodriguez', 345324523, '0123', 342),
(28, 'Hernan', 'Jacinto', 'hjacinto', 'hjacinto@gmail.com', 'null', 3, '1255', 'mercado', 'Hernan Jacinto', 3333, '1123', 333),
(29, 'Paola', 'Hernanedz', 'phernan', 'pher@gmail.com', 'null', 3, '1234', 'tarjeta', 'Paola Hernanedz', 333, '1225', 333),
(30, 'Romina', 'Estevez', 'restevez', 'restevez@gmail.com', 'null', 7, '1882', 'tarjeta', 'Romina Estevez', 111, '0122', 123),
(31, 'Juana', 'Robledo', 'jrobledo', 'jrobledo@gmail.com', 'null', 1, '1232', 'Efectivo', 'Juana Robledo', 222, '0222', 221),
(32, 'Pablo', 'Porta', 'porta', 'porta@gmail.com', 'null', 11, '123', 'no', 'Pablo Porta', 254124132, '1124', 123),
(34, 'Lorena', 'Garnero', 'lgarnero', 'lgarnero@gmail.com', 'null', 1, '1882', 'mercado', 'Lorena Garnero', 5342523432, '0632', 123),
(35, 'Juan', 'Pio', 'jpio', 'jpio@gmail.com', 'null', 3, '1882', 'mercado', 'Juan Pio', 25234324765, '1232', 120),
(36, 'Verónica', 'Pedraza', 'vped', 'vped@gmail.com', 'null', 4, '1888', 'mercado', 'Verónica Pedraza', 2313567567, '0822', 222),
(37, 'Benjamín', 'Perez', 'bperez', 'bperez@gmail.com', 'null', 5, '1888', 'tarjeta', 'Benjamín Perez', 222432123, '1220', 222);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE `provincias` (
  `idprovincia` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`idprovincia`, `nombre`) VALUES
(3, 'Buenos Aires'),
(19, 'Catamarca'),
(16, 'Chaco'),
(13, 'Corrientes'),
(6, 'Entre Ríos'),
(12, 'La Pampa'),
(1, 'La Rioja'),
(4, 'Mendoza'),
(10, 'Misiones'),
(2, 'Salta'),
(11, 'San Juan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `clave` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `usuario`, `clave`) VALUES
(1, 'rodri@Gmail.com', 'Rosti199'),
(11, 'psuarez@gmail.com', 'Co111222'),
(12, 'jerez@gmail.com', '1234'),
(15, 'pedro1922@gmail.com', 'PedroGmail123'),
(19, 'jherben@gmail.com', 'Gjerben¡20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD PRIMARY KEY (`idlocalidad`),
  ADD UNIQUE KEY `LocProvincia` (`idlocalidad`),
  ADD KEY `LocProv` (`idProvincia`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`idpedido`),
  ADD KEY `FK_Localidad` (`localidad`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`idprovincia`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `usuario_2` (`usuario`),
  ADD KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `localidades`
--
ALTER TABLE `localidades`
  MODIFY `idlocalidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `idpedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `provincias`
--
ALTER TABLE `provincias`
  MODIFY `idprovincia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=453;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD CONSTRAINT `localidades_ibfk_1` FOREIGN KEY (`idProvincia`) REFERENCES `provincias` (`idprovincia`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `FK_Localidad` FOREIGN KEY (`localidad`) REFERENCES `localidades` (`idlocalidad`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
