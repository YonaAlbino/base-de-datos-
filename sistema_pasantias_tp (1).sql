-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 01-11-2023 a las 20:22:44
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_pasantias_tp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `Id_contacto` int(11) NOT NULL,
  `num_telefono` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`Id_contacto`, `num_telefono`, `email`) VALUES
(2, '3765 29 98 55', 'yonaalbino@gmail.com'),
(3, '3765 204055', 'carlos@gmail.com'),
(4, '3765 29 9855', 'elisa@gmail.com'),
(5, '3764 54 45 66', 'carlos19@gmial.com'),
(6, '3765 45 54 21', 'paula45@gmial.com'),
(7, '3764 23 32 12', 'noelia@gmail.com'),
(8, '3765 12 32 43', 'maximilianoZarates@gmail.com'),
(9, '3765 24 42 12', 'pepe@gmail.com'),
(10, '3764 65 32 12', 'ramona@gmail.com'),
(11, '3765 43 21 12', 'elisa@mail.com'),
(12, '3765 45 54 67', 'angeloTuMorenito19@gmail.com'),
(13, '3765 34 43 21', 'yonathan96@outlook.com'),
(14, '3764 23 31 22', 'miguel@gmail.com'),
(15, '3765 43 34 12', 'karinaRostan@gmail.com'),
(16, '3765 45 22 31', 'ises@gmial.com'),
(17, '3765 45 33 21', 'comercio18@gmail.com'),
(18, '3765 32 21 22', 'unamCampus@gmail.com'),
(19, '3765 34 43 33', 'comercio6@gmail.com'),
(20, '3765 45 54 21', 'normal10@gmail.com'),
(21, '3765 98 45 66', 'normal4@gmaim.com'),
(22, '3765 45 23 12', 'Hector@gmail.com'),
(23, '3765 54 32 21', 'juan19@gmail.com'),
(24, '3765 22 12 21', 'Paola@gmail.com'),
(25, '3765 44 22 12', 'jardinModelo21@gmail.com'),
(26, '3765 23 33 12', 'Ulies@gmail.com'),
(27, '3765 44 31 12', 'institutoStellaMaris@gmail.com'),
(29, '3765 22 12 34', 'natalia@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instituciones`
--

CREATE TABLE `instituciones` (
  `Id_institucion` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `localidad` varchar(250) NOT NULL,
  `Id_contacto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `instituciones`
--

INSERT INTO `instituciones` (`Id_institucion`, `nombre`, `localidad`, `Id_contacto`) VALUES
(4, 'Ises', 'Posadas', 16),
(5, 'Comercio 18', 'Posadas', 17),
(6, 'Unam campus', 'Posadas', 18),
(7, 'Comercio N°6 Mariano Moreno', 'Posadas', 19),
(8, 'Normal n° 10', 'Posadas', 20),
(9, 'Normal N°4', 'Obera', 21),
(10, 'Escuela jardin modelo', 'Posadas', 25),
(11, ' Instituto Stella Maris', 'Posadas', 27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles`
--

CREATE TABLE `niveles` (
  `Id_nivel` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `niveles`
--

INSERT INTO `niveles` (`Id_nivel`, `nombre`) VALUES
(1, 'primaria'),
(2, 'secundaria'),
(3, 'terciario'),
(4, 'Universidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `Id_persona` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `apellido` varchar(250) NOT NULL,
  `edad` int(11) NOT NULL,
  `dni` int(11) NOT NULL,
  `Id_tipo_persona` int(11) NOT NULL,
  `Id_contacto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`Id_persona`, `nombre`, `apellido`, `edad`, `dni`, `Id_tipo_persona`, `Id_contacto`) VALUES
(3, 'yonatahn', 'albino', 18, 40200304, 1, 2),
(4, 'carlos', 'zarates', 25, 50200345, 1, 3),
(5, 'Carlos', 'Rojelio', 23, 40212203, 3, 3),
(6, 'Pepe', 'Aguirre', 74, 20, 2, 9),
(7, 'Noelia', 'hancke', 45, 32, 3, 7),
(8, 'Ramona', 'imlauer', 24, 40200341, 2, 10),
(9, 'Hector', 'Gutierrez', 28, 40, 3, 22),
(10, 'Juan', 'Aquino', 28, 41, 1, 23),
(11, 'Paola', 'Duarte', 25, 42, 2, 24),
(12, 'Ulises', 'Carballo', 27, 40, 1, 26),
(13, 'Natalia', 'Hetinger', 25, 40, 1, 29);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_instituciones_niveles`
--

CREATE TABLE `relacion_instituciones_niveles` (
  `Id_institucion_nivel` int(11) NOT NULL,
  `Id_institucion` int(11) NOT NULL,
  `Id_nivel` int(11) NOT NULL,
  `cantidad_cursos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `relacion_instituciones_niveles`
--

INSERT INTO `relacion_instituciones_niveles` (`Id_institucion_nivel`, `Id_institucion`, `Id_nivel`, `cantidad_cursos`) VALUES
(5, 4, 3, 5),
(6, 5, 2, 15),
(7, 6, 4, 25),
(8, 7, 2, 12),
(9, 8, 2, 15),
(10, 9, 2, 22),
(12, 9, 2, 20),
(13, 10, 2, 10),
(14, 11, 2, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_reuniones_personas`
--

CREATE TABLE `relacion_reuniones_personas` (
  `Id_reuniones_personas` int(11) NOT NULL,
  `Id_reunion` int(11) NOT NULL,
  `Id_persona` int(11) NOT NULL,
  `lugar` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `relacion_reuniones_personas`
--

INSERT INTO `relacion_reuniones_personas` (`Id_reuniones_personas`, `Id_reunion`, `Id_persona`, `lugar`) VALUES
(4, 6, 5, 'Obera'),
(5, 6, 6, 'alen'),
(6, 8, 8, 'Pozo azul'),
(7, 9, 3, 'posadas'),
(8, 7, 3, 'posadas'),
(9, 7, 7, 'posadas'),
(10, 10, 4, 'Posadas'),
(11, 10, 4, 'Posadas'),
(12, 10, 5, 'Posadas'),
(13, 10, 6, 'Posadas'),
(14, 11, 8, 'Polo tic'),
(15, 11, 7, 'Polo tic'),
(17, 11, 3, 'Polo tic'),
(19, 12, 12, 'Posadas'),
(20, 13, 13, 'Posadas'),
(21, 14, 3, 'Posadas'),
(22, 14, 6, 'posadas'),
(23, 14, 4, 'posadas'),
(24, 15, 6, 'Posadas'),
(25, 15, 4, 'Posadas'),
(26, 15, 5, 'Posadas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reuniones`
--

CREATE TABLE `reuniones` (
  `Id_reunion` int(11) NOT NULL,
  `objetivo` varchar(500) NOT NULL,
  `tema` varchar(500) NOT NULL,
  `propuesta` varchar(500) NOT NULL,
  `horario_inicio` time NOT NULL,
  `hora_fin` time NOT NULL,
  `Id_institucion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reuniones`
--

INSERT INTO `reuniones` (`Id_reunion`, `objetivo`, `tema`, `propuesta`, `horario_inicio`, `hora_fin`, `Id_institucion`) VALUES
(6, 'Aprender sobre técnologias renovables', 'Energia solar', 'Ninguna hasta ahora', '20:30:01', '21:00:00', 5),
(7, 'Conocer más sobre las personas en IT', 'Tecnologias de la información', 'Indefinida', '09:00:00', '12:00:00', 6),
(8, 'Pasantías profesionalisantes', 'Tabajo', 'Que los chicos pronto a terminar su civle educativo puedan obesarvar el mundo laboral', '08:00:00', '12:00:00', 6),
(9, 'Reunir un cupo de almenos 10 chicos', 'Compañerismo', 'Que los chicos se conozcan mejor entre si', '06:20:15', '12:00:00', 7),
(10, 'Establecer una colaboración a largo plazo para promover la educación en STEM (Ciencia, Tecnología, Ingeniería y Matemáticas) en la región.', 'Innovación tecnológica en el aula.', 'Establecer un programa de tutoría en tecnología para estudiantes de la institución educativa por parte de expertos de la empresa.', '09:00:00', '12:00:00', 8),
(11, 'Explorar oportunidades de investigación conjunta en inteligencia artificial aplicada a la educación.', 'Soluciones de inteligencia artificial en la educación.', 'Crear un laboratorio de innovación conjunto para desarrollar soluciones educativas tecnológicas basadas en inteligencia artificial.', '15:00:00', '16:00:00', 9),
(12, 'Discutir la implementación de soluciones tecnológicas para mejorar la experiencia de aprendizaje en línea', 'Gamificación y aprendizaje en línea', 'Desarrollar una aplicación móvil interactiva para mejorar la experiencia de aprendizaje en línea', '10:00:00', '12:00:00', 10),
(13, 'Explorar oportunidades de colaboración en la creación de contenido educativo digital interactivo', 'Financiamiento y becas para estudiantes y proyectos', 'Establecer un fondo conjunto para la financiación de proyectos de investigación en tecnología educativa', '06:00:00', '10:00:00', 11),
(14, 'Evaluar la viabilidad de implementar una plataforma de gestión académica desarrollada por la empresa', 'Colaboración en proyectos de investigación conjunta', 'Implementar un programa de certificación en tecnología para docentes', '06:00:00', '08:00:00', 6),
(15, 'Explorar oportunidades de financiamiento conjunto para proyectos de investigación tecnológica en el ámbito educativo', 'Desarrollo de programas de pasantías tecnológicas', 'Diseñar un sistema que se encargue de administrar las diversas pasantias que se realizan en connjunto con el polo tic', '09:00:00', '12:00:00', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_persona`
--

CREATE TABLE `tipos_persona` (
  `Id_tipo` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipos_persona`
--

INSERT INTO `tipos_persona` (`Id_tipo`, `nombre`) VALUES
(1, 'alumno'),
(2, 'profesor'),
(3, 'facilitador polo tic');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`Id_contacto`);

--
-- Indices de la tabla `instituciones`
--
ALTER TABLE `instituciones`
  ADD PRIMARY KEY (`Id_institucion`),
  ADD KEY `Id_contacto` (`Id_contacto`);

--
-- Indices de la tabla `niveles`
--
ALTER TABLE `niveles`
  ADD PRIMARY KEY (`Id_nivel`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`Id_persona`),
  ADD KEY `Id_tipo_persona` (`Id_tipo_persona`),
  ADD KEY `Id_contacto` (`Id_contacto`);

--
-- Indices de la tabla `relacion_instituciones_niveles`
--
ALTER TABLE `relacion_instituciones_niveles`
  ADD PRIMARY KEY (`Id_institucion_nivel`),
  ADD KEY `Id_institucion` (`Id_institucion`,`Id_nivel`),
  ADD KEY `Id_nivel` (`Id_nivel`);

--
-- Indices de la tabla `relacion_reuniones_personas`
--
ALTER TABLE `relacion_reuniones_personas`
  ADD PRIMARY KEY (`Id_reuniones_personas`),
  ADD KEY `Id_reunion` (`Id_reunion`),
  ADD KEY `Id_persona` (`Id_persona`);

--
-- Indices de la tabla `reuniones`
--
ALTER TABLE `reuniones`
  ADD PRIMARY KEY (`Id_reunion`),
  ADD KEY `Id_institucion` (`Id_institucion`);

--
-- Indices de la tabla `tipos_persona`
--
ALTER TABLE `tipos_persona`
  ADD PRIMARY KEY (`Id_tipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `Id_contacto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `instituciones`
--
ALTER TABLE `instituciones`
  MODIFY `Id_institucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `niveles`
--
ALTER TABLE `niveles`
  MODIFY `Id_nivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `Id_persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `relacion_instituciones_niveles`
--
ALTER TABLE `relacion_instituciones_niveles`
  MODIFY `Id_institucion_nivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `relacion_reuniones_personas`
--
ALTER TABLE `relacion_reuniones_personas`
  MODIFY `Id_reuniones_personas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `reuniones`
--
ALTER TABLE `reuniones`
  MODIFY `Id_reunion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tipos_persona`
--
ALTER TABLE `tipos_persona`
  MODIFY `Id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `instituciones`
--
ALTER TABLE `instituciones`
  ADD CONSTRAINT `instituciones_ibfk_1` FOREIGN KEY (`Id_contacto`) REFERENCES `contactos` (`Id_contacto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `personas_ibfk_1` FOREIGN KEY (`Id_tipo_persona`) REFERENCES `tipos_persona` (`Id_tipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `personas_ibfk_2` FOREIGN KEY (`Id_contacto`) REFERENCES `contactos` (`Id_contacto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `relacion_instituciones_niveles`
--
ALTER TABLE `relacion_instituciones_niveles`
  ADD CONSTRAINT `relacion_instituciones_niveles_ibfk_1` FOREIGN KEY (`Id_nivel`) REFERENCES `niveles` (`Id_nivel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `relacion_instituciones_niveles_ibfk_2` FOREIGN KEY (`Id_institucion`) REFERENCES `instituciones` (`Id_institucion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `relacion_reuniones_personas`
--
ALTER TABLE `relacion_reuniones_personas`
  ADD CONSTRAINT `relacion_reuniones_personas_ibfk_1` FOREIGN KEY (`Id_persona`) REFERENCES `personas` (`Id_persona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `relacion_reuniones_personas_ibfk_2` FOREIGN KEY (`Id_reunion`) REFERENCES `reuniones` (`Id_reunion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reuniones`
--
ALTER TABLE `reuniones`
  ADD CONSTRAINT `reuniones_ibfk_1` FOREIGN KEY (`Id_institucion`) REFERENCES `instituciones` (`Id_institucion`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
