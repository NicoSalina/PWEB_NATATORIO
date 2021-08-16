-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-08-2021 a las 23:35:02
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tp_final`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `eliminado` tinyint(1) NOT NULL DEFAULT 0,
  `ts_create` datetime NOT NULL DEFAULT current_timestamp(),
  `ts_update` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `eliminado`, `ts_create`, `ts_update`) VALUES
(1, 'Entrenamiento Grupal', 0, '2021-08-15 11:33:32', '2021-08-16 07:02:13'),
(2, 'Entrenamiento Individual', 0, '2021-06-04 19:35:18', '2021-08-16 07:00:29'),
(3, 'Entrenamiento Personalizado', 0, '2021-07-29 16:41:37', '2021-08-16 07:00:34'),
(4, 'Pileta Libre', 0, '2021-07-29 16:42:11', '2021-08-16 07:00:44'),
(5, 'Entrenamiento para Profesor', 0, '2021-08-06 15:21:00', '2021-08-16 07:01:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes-productos`
--

CREATE TABLE `imagenes-productos` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `id_producto` int(11) NOT NULL,
  `eliminado` tinyint(1) NOT NULL DEFAULT 0,
  `ts_create` datetime NOT NULL DEFAULT current_timestamp(),
  `ts_update` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `imagenes-productos`
--

INSERT INTO `imagenes-productos` (`id`, `uid`, `id_producto`, `eliminado`, `ts_create`, `ts_update`) VALUES
(1, 'a946ce51-d0c9-4113-8667-65d5bb00d788.jpeg', 9, 0, '2021-07-31 18:34:47', '2021-08-16 17:33:25'),
(2, '8ba7dee8-3768-4231-a10b-b8af704b4b9e.jpeg', 10, 0, '2021-08-02 16:01:41', '2021-08-16 17:34:40'),
(3, '37777f9d-a16f-4297-b348-a66484db4094.jpeg', 11, 0, '2021-08-04 12:39:11', '2021-08-16 17:32:42'),
(4, '256561e8-7260-47dd-8770-45b6001eae3c.jpeg', 12, 0, '2021-08-08 21:17:02', '2021-08-16 17:35:17'),
(5, 'e6c05ee1-93ce-49ad-9ce7-f3838a6862e4.jpeg', 13, 0, '2021-08-08 21:18:44', '2021-08-16 17:41:54'),
(6, '55f1ab0b-cfa5-43ac-acec-b52bfbbbe345.jpeg', 14, 0, '2021-08-08 21:21:18', '2021-08-16 17:43:44'),
(7, '6ceaa2ce-99d2-4c62-998d-5632d601f1e2.jpeg', 15, 0, '2021-08-16 17:46:54', '2021-08-16 17:46:54'),
(8, '2bbfb432-c8e9-4d8d-ae7e-f33396995d7c.jpeg', 16, 0, '2021-08-16 17:49:00', '2021-08-16 17:49:00'),
(9, '570c8bc7-f4fb-4521-a830-f40fe30c288c.jpeg', 17, 0, '2021-08-16 17:51:31', '2021-08-16 17:51:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `precio` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `eliminado` tinyint(1) NOT NULL DEFAULT 0,
  `ts_create` datetime NOT NULL DEFAULT current_timestamp(),
  `ts_update` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `id_categoria`, `eliminado`, `ts_create`, `ts_update`) VALUES
(9, 'Bebes', 'Martes 20hs y Jueves 19hs.', 3500, 2, 0, '2021-07-31 18:34:47', '2021-08-16 18:18:52'),
(10, 'Adultos', 'Lunes 18hs, Miercoles 19hs y Viernes 19:30hs.', 4000, 2, 0, '2021-08-02 16:01:41', '2021-08-16 14:37:21'),
(11, 'Aquagym', 'Martes 15hs y Jueves 16hs.', 4000, 1, 0, '2021-08-04 12:39:11', '2021-08-16 14:37:35'),
(12, 'Competencia', 'Lunes, Miercoles, Viernes y Sabados (Horario a combinar).', 3500, 3, 0, '2021-08-08 21:17:02', '2021-08-16 17:24:44'),
(13, 'Adultos', 'Libre', 5000, 4, 0, '2021-08-08 21:18:44', '2021-08-16 17:27:32'),
(14, 'Adolecentes', 'Libre', 2000, 4, 0, '2021-08-08 21:21:18', '2021-08-16 17:27:40'),
(15, 'Adultos', 'Martes 09hs y Jueves 10hs.', 5000, 1, 0, '2021-08-16 17:46:54', '2021-08-16 18:19:12'),
(16, 'Adolecentes ', 'Martes 11hs y Jueves 12hs. ', 4850, 1, 0, '2021-08-16 17:49:00', '2021-08-16 17:49:00'),
(17, 'Adultos ', 'Lunes, Miercoles, Viernes y Sabados (Horario a combinar). ', 10000, 5, 0, '2021-08-16 17:51:31', '2021-08-16 17:51:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `rol` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `habilitado` tinyint(1) NOT NULL DEFAULT 0,
  `eliminado` tinyint(1) NOT NULL DEFAULT 0,
  `confirmacionMail` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `ts_create` datetime NOT NULL DEFAULT current_timestamp(),
  `ts_update` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `rol`, `name`, `email`, `pass`, `habilitado`, `eliminado`, `confirmacionMail`, `ts_create`, `ts_update`) VALUES
(25, 1, 'Nico', 'nicolas.salina@hotmail.com', '1d6871102e3fdefe4561d00d4d2be55b417bf094', 1, 0, '3f45247a-fbf3-4892-8d09-b3189cbbd409', '2021-08-16 03:22:40', '2021-08-16 17:28:31'),
(26, 0, 'Jose', 'np@np.com', '1d6871102e3fdefe4561d00d4d2be55b417bf094', 1, 1, '01695a4b-b1a2-4db3-9b84-33b6cfc37eda', '2021-08-16 17:30:15', '2021-08-16 18:34:08'),
(27, 1, 'Maria Paz', 'testernodeemail@gmail.com', '1d6871102e3fdefe4561d00d4d2be55b417bf094', 1, 0, '28e9ed8a-2926-4918-8b07-11a89dd3c3e4', '2021-08-16 18:16:14', '2021-08-16 18:18:16'),
(28, 0, 'Pepe ', 'pepe@hotmail.com', '1d6871102e3fdefe4561d00d4d2be55b417bf094', 1, 1, '975260ec-ba2b-498a-b5a7-541d1690cb01', '2021-08-16 18:17:37', '2021-08-16 18:34:05'),
(29, 0, 'Jimena', 'jimena@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 0, '2b48bee2-a998-4db0-960a-921e5a6c342b', '2021-08-16 18:19:41', '2021-08-16 18:20:15'),
(30, 1, 'Estefania', 'np10@np.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 0, '7fa95136-45f4-4b8f-b108-0ef4dfb1e98c', '2021-08-16 18:19:58', '2021-08-16 18:20:16'),
(31, 0, 'Mariano', 'np20@np.com', '1d6871102e3fdefe4561d00d4d2be55b417bf094', 1, 0, '18ff262c-b485-46e0-a35d-c4d20b585b8c', '2021-08-16 18:32:51', '2021-08-16 18:33:04');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `imagenes-productos`
--
ALTER TABLE `imagenes-productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `imagenes-productos`
--
ALTER TABLE `imagenes-productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `imagenes-productos`
--
ALTER TABLE `imagenes-productos`
  ADD CONSTRAINT `imagenes-productos_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
