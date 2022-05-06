-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-05-2022 a las 17:53:06
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tfm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id` int(10) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido1` varchar(255) NOT NULL,
  `apellido2` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dni` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `pais_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_curso`
--

CREATE TABLE `alumno_curso` (
  `alumno_id` int(10) NOT NULL,
  `curso_id` int(10) NOT NULL,
  `nota` varchar(255) DEFAULT NULL,
  `bool_credencial_emitida` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_curso_criterioevaluacion`
--

CREATE TABLE `alumno_curso_criterioevaluacion` (
  `alumno_id` int(10) NOT NULL,
  `curso_id` int(10) NOT NULL,
  `criterio_evaluacion_id` int(10) NOT NULL,
  `nota` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_sesion_obligatoria`
--

CREATE TABLE `alumno_sesion_obligatoria` (
  `alumno_id` int(10) NOT NULL,
  `sesion_obligatoria_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `competencia`
--

CREATE TABLE `competencia` (
  `id` int(10) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `esco_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `competencia`
--

INSERT INTO `competencia` (`id`, `nombre`, `descripcion`, `esco_url`) VALUES
(1, 'Respetar el código ético de conducta', 'Llevar a cabo actividades en el lugar de trabajo con arreglo a principios aceptados de lo correcto y lo incorrecto, en especial en lo relativo a la equidad, la transparencia y la imparcialidad de las prácticas laborales y a la forma de tratar a los demás.', 'http://data.europa.eu/esco/skill/T4.5'),
(2, 'Colaborar en equipos y redes', 'Formar un grupo o respaldarlo con el fin de trabajar en aras de un objetivo común de una manera que demuestre que se comprenden y se respetan las funciones y competencias de los demás.', 'https://esco.ec.europa.eu/es/classification/skills?uri=http://data.europa.eu/esco/skill/T4.3'),
(3, 'Pensar de manera creativa e innovadora', 'Generar nuevas ideas o combinar las ya existentes para desarrollar nuevas soluciones innovadoras y novedosas.', 'https://esco.ec.europa.eu/es/classification/skills?uri=http://data.europa.eu/esco/skill/T2.4'),
(4, 'Cumplir los compromisos', 'Llevar a cabo las tareas asignadas con autodisciplina y de una manera fiable y orientada a la consecución de objetivos.', 'http://data.europa.eu/esco/skill/113b4428-0a31-4199-8496-070af7854b91'),
(5, 'Demostrar competencias interculturales', 'Comprender y respetar a las personas que se perciben con afinidades culturales distintas, y reaccionar ante ellas con eficacia y respeto.', 'http://data.europa.eu/esco/skill/c10d5d87-36cf-42f5-8a12-e560fb5f4af8'),
(6, 'Demostrar voluntad de aprender', 'Mostrar una actitud positiva hacia los nuevos y complejos desafíos que solo pueden satisfacerse a través del aprendizaje permanente.', 'http://data.europa.eu/esco/skill/9bf266a6-188b-4d17-a22f-2f266d76832b'),
(7, 'Dirigir a otras personas', 'Guiar, orientar y motivar a otras personas.', 'http://data.europa.eu/esco/skill/T4.4'),
(8, 'Dirigirse a un público', 'Hablar de manera estructurada y premeditada, y en persona ante un grupo de oyentes para informarlos, influir en ellos o entretenerlos.', 'http://data.europa.eu/esco/skill/609a8ac1-9d29-4237-9886-596dbbe7ca8a'),
(9, 'Discernir el contenido de una comunicación escrita', 'Esforzarse por comprender y dar sentido a la comunicación escrita, ya sea en directo, por correo electrónico o por mensaje de texto. Confirmar con el destinatario si la suposición que ha establecido sobre la base de la comunicación es válida y refleja el ', 'http://data.europa.eu/esco/skill/0e161427-3369-47c0-8669-9e226207f6d0'),
(10, 'Dominar idiomas', 'Comunicarse mediante la lectura, la escritura, el habla y la escucha en la lengua materna o en un idioma extranjero.', 'http://data.europa.eu/esco/skill/T1.1'),
(11, 'Gestión de proyectos', 'Comprender la gestión de proyectos y las actividades que caracterizan este ámbito. Conocer las variables que intervienen en la gestión de proyectos, como el tiempo, los recursos, los requisitos, los plazos y la respuesta a imprevistos.', 'http://data.europa.eu/esco/skill/7111b95d-0ce3-441a-9d92-4c75d05c4388'),
(12, 'Gestionar el tiempo', 'Planificar la secuencia temporal de acontecimientos, programas y actividades, así como el trabajo de los demás.', 'http://data.europa.eu/esco/skill/d9013e0e-e937-43d5-ab71-0e917ee882b8'),
(13, 'Lidiar con problemas', 'Idear y poner en marcha soluciones a problemas prácticos, operativos o conceptuales que surjan durante la realización del trabajo en una amplia gama de contextos.', 'http://data.europa.eu/esco/skill/T2.3'),
(14, 'Mostrar empatía', 'Mostrar empatía para evitar cualquier tipo de violencia y aislamiento simbólico y garantizar que se presta la debida atención a todo el mundo. Debe incluir una capacidad para comprender diferentes comunicaciones verbales y no verbales de sentimientos y se', 'http://data.europa.eu/esco/skill/77b636e8-fab3-41a8-8022-1e0a354059dc'),
(15, 'Pensamiento sistemático', 'El enfoque integrado para comprender cómo diversos componentes de un sistema se interrelacionan, interactúan e influyen entre sí dentro de un sistema logístico completo.', 'http://data.europa.eu/esco/skill/0f9958d2-f700-4f62-b90b-a5873cb5ae4c'),
(16, 'Pensar de forma analítica', 'Elaborar ideas basadas en la lógica y el razonamiento para identificar los puntos fuertes y débiles de las soluciones, conclusiones o enfoques alternativos en relación con los problemas.', 'http://data.europa.eu/esco/skill/4707da90-9cfc-46ca-8de0-38a0b7bfb137'),
(17, 'Pensar de manera crítica', 'Emitir y defender juicios basados en pruebas internas y criterios externos. Evaluar de manera crítica la credibilidad y fiabilidad de la información antes de utilizarla o transmitirla a otras personas. Desarrollar un pensamiento independiente y crítico.', 'http://data.europa.eu/esco/skill/7dd94ad3-13d6-43fe-8b94-51fcbf67ced9'),
(18, 'Planificar y organizar', 'Dirigir actividades y tareas, fijar calendarios y coordinar las actividades de grupos e individuos con el fin de lograr los objetivos a tiempo y respetando el presupuesto.', 'http://data.europa.eu/esco/skill/T2.2'),
(19, 'Tomar decisiones', 'Making a choice from several alternative possibilities.', 'http://data.europa.eu/esco/skill/S4.9'),
(20, 'Trabajar con dispositivos y aplicaciones digitales', 'Llevar a cabo tareas digitales sencillas como utilizar hardware ya configurado, buscar información en internet, utilizar software estandarizado para la comunicación o la colaboración con otras personas, o para crear y editar contenido sencillo, y elegir e', 'http://data.europa.eu/esco/skill/T1.3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `criterioevaluacion_curso`
--

CREATE TABLE `criterioevaluacion_curso` (
  `criterio_evaluacion_id` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `criterio_evaluacion`
--

CREATE TABLE `criterio_evaluacion` (
  `id` int(10) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `criterio_evaluacion`
--

INSERT INTO `criterio_evaluacion` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Memoria final', 'Entrega de la memoria final como parte de la evaluación final de la actividad extracurricular.'),
(2, 'Informe de evaluación', 'Informe del jefe de equipo en el que se han desarrollado las competencias.'),
(3, 'Asistencia obligatoria', 'Sesión formativa con asistencia obligatoria.'),
(4, 'Participación activa', 'Participación activa durante toda la actividad, mostrando interés y compromiso.'),
(5, 'Actividades de evaluación continua', 'Realización de actividades o trabajos a lo largo de la evaluación, pudiendo ser tanto individuales como grupales.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `id` int(10) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `prerequisito` varchar(255) DEFAULT NULL,
  `ects` int(10) NOT NULL,
  `numero_plazas` int(10) NOT NULL,
  `periodo_inscripcion_inicio` date NOT NULL,
  `periodo_inscripcion_fin` date NOT NULL,
  `facultad_id` int(10) NOT NULL,
  `semestre_id` int(10) NOT NULL,
  `modes_of_learning_and_assessment_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso_competencia`
--

CREATE TABLE `curso_competencia` (
  `curso_id` int(10) NOT NULL,
  `competencia_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE `facultad` (
  `id` int(10) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `web` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) NOT NULL,
  `pais_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`id`, `nombre`, `email`, `web`, `direccion`, `pais_id`) VALUES
(1, 'Facultad de Ingeniería', 'informacion.ingenieria@deusto.es', NULL, 'Avenida de las Universidades 24, 48007 Bilbo, Bizkaia', 1),
(2, 'Deusto Campus Fe', NULL, NULL, 'Avenida de las Universidades 24, 48007 Bilbo, Bizkaia', 1),
(3, 'Deusto Campus Solidaridad', 'pastoral@deusto.es', 'https://estudiantes.deusto.es/cs/Satellite/estudiantes/es/estudiantes_ud/actividades-1/solidaridad', 'Avenida de las Universidades 24, 48007 Bilbo, Bizkaia', 1),
(4, 'Vicerrectorado de Comunidad Universitaria', NULL, NULL, 'Avenida de las Universidades 24, 48007 Bilbo, Bizkaia', 1),
(5, 'Dpto. Lenguas Modernas y Estudios Vascos, CCSS y HH', NULL, NULL, 'Avenida de las Universidades 24, 48007 Bilbo, Bizkaia', 1),
(6, 'Colegio Mayor Deusto', 'colegio.mayor@deusto.es', 'https://www.deusto.es/cs/Satellite/colegiomayor/es/colegio-mayor-1', 'Camino Ugasko 7, 48014 Bilbo, Bizkaia', 1),
(7, 'Deusto Campus Cultura', 'cultura@deusto.es', 'https://estudiantes.deusto.es/cs/Satellite/estudiantes/es/estudiantes_ud/actividades-1/cultura-0', 'Avenida de las Universidades 24, 48007 Bilbo, Bizkaia', 1),
(8, 'Servicio de Orientación Universitaria', 'sou@deusto.es', 'https://estudiantes.deusto.es/cs/Satellite/estudiantes/es/estudiantes_ud/atencion-al-estudiante/orientacion-universitaria', 'Avenida de las Universidades 24, 48007 Bilbo, Bizkaia', 1),
(9, 'Vicerrectorado de Relaciones Internacionales y Transformación Digital', NULL, NULL, 'Avenida de las Universidades 24, 48007 Bilbo, Bizkaia', 1),
(10, 'Deusto Campus Deporte', 'infocampus@deusto.es', 'https://estudiantes.deusto.es/cs/Satellite/estudiantes/es/estudiantes_ud/actividades-1/deportes', 'Avenida de las Universidades 24, 48007 Bilbo, Bizkaia', 1),
(11, 'BAM Escuela Universitaria de Magisterio', 'idazkaritza@bam.edu.es', 'https://www.bam.edu.es/es/', 'Larrauri 1A, 48160 Derio, Bizkaia', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(10) NOT NULL,
  `nombre_castellano` varchar(255) NOT NULL,
  `nombre_ingles` varchar(255) NOT NULL,
  `codigo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `nombre_castellano`, `nombre_ingles`, `codigo`) VALUES
(1, 'Femenino', 'female', 'FEMALE'),
(2, 'Masculino', 'male', 'MALE'),
(3, 'No aplicable', 'Not applicable', 'NAP'),
(4, 'No conocido', 'Not known', 'NKN'),
(5, 'No indicado', 'not stated', 'NST');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modes_of_learning_and_assessment`
--

CREATE TABLE `modes_of_learning_and_assessment` (
  `id` int(10) NOT NULL,
  `nombre_castellano` varchar(255) NOT NULL,
  `nombre_ingles` varchar(255) NOT NULL,
  `codigo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modes_of_learning_and_assessment`
--

INSERT INTO `modes_of_learning_and_assessment` (`id`, `nombre_castellano`, `nombre_ingles`, `codigo`) VALUES
(1, 'Basado en trabajos', 'Workbased', '729f3bed4b'),
(2, 'Basado en proyectos', 'Project based', '7813801c77'),
(3, 'Presencial', 'Presential', '9191af2ed9'),
(4, 'Online', 'Online', '920fbb3cbe'),
(5, 'Híbrido', 'Blended', 'e92d221e4d'),
(6, 'Basado en investigación-Laboratorio', 'Research-Lab based', 'ed4c557045');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organizacion`
--

CREATE TABLE `organizacion` (
  `id` int(10) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `identificador_legal` varchar(20) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `web` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `acronimo` varchar(10) NOT NULL,
  `pais_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `organizacion`
--

INSERT INTO `organizacion` (`id`, `nombre`, `identificador_legal`, `logo`, `web`, `direccion`, `email`, `acronimo`, `pais_id`) VALUES
(1, 'Universidad de Deusto', '95980027GYGQGGUS5U58', 'https://parking.deusto.es/images/ud.png', NULL, 'Avenida de las Universidades 24, 48007 Bilbo, Bizkaia', 'secretaria.general@deusto.es', 'UD', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` int(10) NOT NULL,
  `nombre_castellano` varchar(255) NOT NULL,
  `nombre_ingles` varchar(255) NOT NULL,
  `codigo` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `nombre_castellano`, `nombre_ingles`, `codigo`) VALUES
(1, 'España', 'Spain', 'ESP'),
(2, 'Francia', 'France', 'FRA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `id` int(10) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido1` varchar(255) NOT NULL,
  `apellido2` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `genero_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id`, `nombre`, `apellido1`, `apellido2`, `email`, `password`, `genero_id`) VALUES
(1, 'Aitor', 'García', 'López', 'aitor@deusto.es', 'aitor123', 2),
(2, 'Maria', 'Ruiz', NULL, 'maria@deusto.es', 'maria123', 1),
(14, 'l', 'l', 'l', 'l@deusto.es', 'lll', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_curso`
--

CREATE TABLE `profesor_curso` (
  `profesor_id` int(10) NOT NULL,
  `curso_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secretaria`
--

CREATE TABLE `secretaria` (
  `id` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `secretaria`
--

INSERT INTO `secretaria` (`id`, `email`, `password`) VALUES
(1, 'secretaria@deusto.es', 'secretaria123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semestre`
--

CREATE TABLE `semestre` (
  `id` int(10) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `semestre`
--

INSERT INTO `semestre` (`id`, `nombre`) VALUES
(1, 'Semestre 1'),
(2, 'Semestre 2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesion_obligatoria`
--

CREATE TABLE `sesion_obligatoria` (
  `id` int(10) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `curso_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_roles`
--

CREATE TABLE `users_roles` (
  `id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users_roles`
--

INSERT INTO `users_roles` (`id`, `role`) VALUES
(1, 'secretaria'),
(2, 'profesor'),
(3, 'alumno');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Alumno_Genero` (`genero_id`),
  ADD KEY `FK_Alumno_Pais` (`pais_id`);

--
-- Indices de la tabla `alumno_curso`
--
ALTER TABLE `alumno_curso`
  ADD PRIMARY KEY (`alumno_id`,`curso_id`),
  ADD KEY `FK_AlumnoCurso_Curso` (`curso_id`),
  ADD KEY `FK_AlumnoCurso_Alumno` (`alumno_id`);

--
-- Indices de la tabla `alumno_curso_criterioevaluacion`
--
ALTER TABLE `alumno_curso_criterioevaluacion`
  ADD PRIMARY KEY (`alumno_id`,`curso_id`,`criterio_evaluacion_id`),
  ADD KEY `FK_AlumnoCursoCriterioEvaluacion_CriterioEvaluacion` (`criterio_evaluacion_id`),
  ADD KEY `FK_AlumnoCursoCriterioEvaluacion_Curso` (`curso_id`),
  ADD KEY `FK_AlumnoCursoCriterioEvaluacion_Alumno` (`alumno_id`);

--
-- Indices de la tabla `alumno_sesion_obligatoria`
--
ALTER TABLE `alumno_sesion_obligatoria`
  ADD PRIMARY KEY (`alumno_id`,`sesion_obligatoria_id`),
  ADD KEY `FK_AlumnoSesionObligatoria_SesionObligatoria` (`sesion_obligatoria_id`),
  ADD KEY `FK_AlumnoSesionObligatoria_Alumno` (`alumno_id`);

--
-- Indices de la tabla `competencia`
--
ALTER TABLE `competencia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `criterioevaluacion_curso`
--
ALTER TABLE `criterioevaluacion_curso`
  ADD PRIMARY KEY (`criterio_evaluacion_id`,`curso_id`),
  ADD KEY `FK_Curso_Id` (`curso_id`),
  ADD KEY `FK_CriterioEvaluacion_Id` (`criterio_evaluacion_id`);

--
-- Indices de la tabla `criterio_evaluacion`
--
ALTER TABLE `criterio_evaluacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Curso_Facultad` (`facultad_id`),
  ADD KEY `FK_Curso_Semestre` (`semestre_id`),
  ADD KEY `FK_Modes_Of_Learning_And_Assessment` (`modes_of_learning_and_assessment_id`);

--
-- Indices de la tabla `curso_competencia`
--
ALTER TABLE `curso_competencia`
  ADD PRIMARY KEY (`curso_id`,`competencia_id`),
  ADD KEY `FK_CursoCompetencia_Competencia` (`competencia_id`),
  ADD KEY `FK_CursoCompetencia_Curso` (`curso_id`);

--
-- Indices de la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Pais_id` (`pais_id`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modes_of_learning_and_assessment`
--
ALTER TABLE `modes_of_learning_and_assessment`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `organizacion`
--
ALTER TABLE `organizacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Organizacion_Pais` (`pais_id`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Profesor_Genero` (`genero_id`);

--
-- Indices de la tabla `profesor_curso`
--
ALTER TABLE `profesor_curso`
  ADD PRIMARY KEY (`profesor_id`,`curso_id`),
  ADD KEY `FK_ProfesorCurso_Curso` (`curso_id`),
  ADD KEY `FK_ProfesorCurso_Profesor` (`profesor_id`);

--
-- Indices de la tabla `secretaria`
--
ALTER TABLE `secretaria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `semestre`
--
ALTER TABLE `semestre`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sesion_obligatoria`
--
ALTER TABLE `sesion_obligatoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_SesionObligatoria_Curso` (`curso_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`,`id_role`),
  ADD KEY `FK_id_role` (`id_role`);

--
-- Indices de la tabla `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `competencia`
--
ALTER TABLE `competencia`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `criterio_evaluacion`
--
ALTER TABLE `criterio_evaluacion`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `facultad`
--
ALTER TABLE `facultad`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `modes_of_learning_and_assessment`
--
ALTER TABLE `modes_of_learning_and_assessment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `organizacion`
--
ALTER TABLE `organizacion`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `secretaria`
--
ALTER TABLE `secretaria`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `semestre`
--
ALTER TABLE `semestre`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sesion_obligatoria`
--
ALTER TABLE `sesion_obligatoria`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `users_roles`
--
ALTER TABLE `users_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `FK_Alumno_Genero` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Alumno_Pais` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `alumno_curso`
--
ALTER TABLE `alumno_curso`
  ADD CONSTRAINT `FK_AlumnoCurso_Alumno` FOREIGN KEY (`alumno_id`) REFERENCES `alumno` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_AlumnoCurso_Curso` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `alumno_curso_criterioevaluacion`
--
ALTER TABLE `alumno_curso_criterioevaluacion`
  ADD CONSTRAINT `FK_AlumnoCursoCriterioEvaluacion_Alumno` FOREIGN KEY (`alumno_id`) REFERENCES `alumno` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_AlumnoCursoCriterioEvaluacion_CriterioEvaluacion` FOREIGN KEY (`criterio_evaluacion_id`) REFERENCES `criterio_evaluacion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_AlumnoCursoCriterioEvaluacion_Curso` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `alumno_sesion_obligatoria`
--
ALTER TABLE `alumno_sesion_obligatoria`
  ADD CONSTRAINT `FK_AlumnoSesionObligatoria_Alumno` FOREIGN KEY (`alumno_id`) REFERENCES `alumno` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_AlumnoSesionObligatoria_SesionObligatoria` FOREIGN KEY (`sesion_obligatoria_id`) REFERENCES `sesion_obligatoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `criterioevaluacion_curso`
--
ALTER TABLE `criterioevaluacion_curso`
  ADD CONSTRAINT `FK_CriterioEvaluacion_Id` FOREIGN KEY (`criterio_evaluacion_id`) REFERENCES `criterio_evaluacion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Curso_Id` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `FK_Curso_Facultad` FOREIGN KEY (`facultad_id`) REFERENCES `facultad` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Curso_Semestre` FOREIGN KEY (`semestre_id`) REFERENCES `semestre` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Modes_Of_Learning_And_Assessment` FOREIGN KEY (`modes_of_learning_and_assessment_id`) REFERENCES `modes_of_learning_and_assessment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `curso_competencia`
--
ALTER TABLE `curso_competencia`
  ADD CONSTRAINT `FK_CursoCompetencia_Competencia` FOREIGN KEY (`competencia_id`) REFERENCES `competencia` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CursoCompetencia_Curso` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD CONSTRAINT `FK_Pais_id` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `organizacion`
--
ALTER TABLE `organizacion`
  ADD CONSTRAINT `FK_Organizacion_Pais` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`);

--
-- Filtros para la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD CONSTRAINT `FK_Profesor_Genero` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`id`);

--
-- Filtros para la tabla `profesor_curso`
--
ALTER TABLE `profesor_curso`
  ADD CONSTRAINT `FK_ProfesorCurso_Curso` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ProfesorCurso_Profesor` FOREIGN KEY (`profesor_id`) REFERENCES `profesor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sesion_obligatoria`
--
ALTER TABLE `sesion_obligatoria`
  ADD CONSTRAINT `FK_SesionObligatoria_Curso` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_id_role` FOREIGN KEY (`id_role`) REFERENCES `users_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
