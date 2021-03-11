-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-03-2021 a las 23:52:39
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `goodjob`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_list` ()  BEGIN
 select * from users inner join profiles on users.id = profiles.user_id;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account_banks`
--

CREATE TABLE `account_banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_inter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `account_banks`
--

INSERT INTO `account_banks` (`id`, `bank_id`, `user_id`, `number`, `number_inter`, `status`, `created_at`, `updated_at`) VALUES
(3, 5, 1, '001112312000700045', '001112312000700045', 1, '2021-01-18 19:17:47', '2021-01-18 19:17:47'),
(4, 7, 1, '32002021456545644', '220020214565456442344', 1, '2021-01-18 19:19:18', '2021-01-18 19:19:18'),
(6, 3, 1, '32002021456545644', '32002021456545644', 1, '2021-01-18 19:52:15', '2021-01-18 19:52:15'),
(7, 2, 1, '32002021456545644', '32002021456545644', 1, '2021-01-18 19:52:25', '2021-01-18 19:52:25'),
(9, 2, 1, '32002021456545622', '32002021456545622', 1, '2021-01-18 19:54:03', '2021-01-18 20:38:07'),
(10, 14, 9, '99999999999999', '20000555525828282828', 1, '2021-01-31 04:20:14', '2021-01-31 04:20:14'),
(11, 7, 13, '9874561230000', '789456123000005552', 1, '2021-01-31 06:30:12', '2021-01-31 06:30:12'),
(12, 7, 16, '2000123456789', '78945200033369', 1, '2021-01-31 06:56:58', '2021-01-31 06:56:58'),
(13, 7, 18, '987000000926', '9874562220000', 1, '2021-01-31 15:01:07', '2021-01-31 15:01:07'),
(14, 7, 24, '98745623333', '958744422233', 1, '2021-01-31 17:29:48', '2021-01-31 17:29:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account_types`
--

CREATE TABLE `account_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `account_types`
--

INSERT INTO `account_types` (`id`, `name`) VALUES
(1, 'Usuario C'),
(2, 'Empresa'),
(3, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_init` date NOT NULL,
  `date_end` date NOT NULL,
  `person_required` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ubigeo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `title`, `description`, `date_init`, `date_end`, `person_required`, `address`, `address_reference`, `ubigeo`, `country`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Que es Lorsdawdaem Ipsum', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', '2021-01-15', '2021-01-18', 10, '83KLeSyGu0cwpM72FPUkai46wdOin16sJabAWTteOHBNrsxMM3mLf3wtVvn9rMfzjijcv4oceXmE4F1ySI1VaOsjCloKhMmbwFlNk5uRqj0nZyrg9hOWb49v5QXOTcTAwXyHiPB8WLFsbPclw6JtkO', 'https://www.google.com.pe/maps/@-12.0630149,-77.0296179,13z?hl=es-419', '160105', 'PE', 1, '2021-01-15 21:38:25', '2021-01-15 21:38:25'),
(2, 2, 'Que es Lor sdfsef em Ipsum', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', '2021-01-15', '2021-01-16', 10, 'Ef6pUHziTigKPVkEptQmXGSqp2mKc3FXpBTpgu0pVAB7nBn08dyhiDLMfyrullnoowHQVl6E5pceWe6iahVAI3hgpp1SEndkZSHXCKHD1i8TKBMTEOZxNK9nsEeEsxGHCQ6EXFeIvehkwTXfOKNLYu', 'https://www.google.com.pe/maps/@-12.0630149,-77.0296179,13z?hl=es-419', '160105', 'PE', 1, '2021-01-15 21:38:25', '2021-01-15 21:38:25'),
(3, 2, 'Que es Loremfses  Ipsum', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', '2021-01-15', '2021-01-19', 10, 'djgfsXmyPy3pjeknqZnPfCIb25iKCPpViIT8n1NwQZoeadm6YDJR3mJHS4K8tsqkZ6N0PeLEjIv3nXREahy9UGuk0wbsTiMAxesl80a2Tdu4WrkLow0xzjEn1EefI2n0GVxmHiXA71ql1In107AeMP', 'https://www.google.com.pe/maps/@-12.0630149,-77.0296179,13z?hl=es-419', '160105', 'PE', 1, '2021-01-15 21:38:25', '2021-01-15 21:38:25'),
(4, 2, 'Que esgss Lorem Ipsum', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', '2021-01-15', '2021-01-21', 10, 'jm9E7TyTAWpQE95wxz42ROQt5qQGqD2xqjVzusvW9FUuq48GwvkGCBt8esKzIBCk8jUBvLS51VlPXRAHlDGIGEv8qOddr4LeeXvN6ygWU0ys3ynSCmcixfkwnCrzp7dz13CIdX1gthN41iik9KMj8T', 'https://www.google.com.pe/maps/@-12.0630149,-77.0296179,13z?hl=es-419', '160105', 'PE', 1, '2021-01-15 21:38:25', '2021-01-15 21:38:25'),
(5, 2, 'Que es Lgdrfgdrorem Ipsum', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', '2021-01-15', '2021-01-20', 10, 'CXjDfbztqWwVQbn2LUscUOBvpoMQe8uBVlZhaCbB1D80EvEWvfGaoVN6WNM5OtJNHYeWIoTyYFp30Ukm1JZBeUWgrbgv8yayG4vp7MZY2J4AiP3zMNbT1czWLLaUQVf91yfjEHHg3PpuYSrCQsVz3r', 'https://www.google.com.pe/maps/@-12.0630149,-77.0296179,13z?hl=es-419', '160105', 'PE', 1, '2021-01-15 21:38:25', '2021-01-15 21:38:25'),
(6, 2, 'https   www youtube com watch v XRR5pBH4Zck', 'asdfasd asfas fdasFecha de Inicio:Fecha de Inicio:Fecha de InicFecha de Inicio:Fecha de Inicio:io:fdsfesfsef sefsfsdfdFecha de Inicio:ssdasfsedf sdfFecha de Inicio:Fecha de Inicio:Fecha de Inicio:Fecha de Inicio:Fecha de Inicio:Fecha de Inicio:', '2021-01-19', '2021-01-20', 9, 'saafaefsdefesdfes', 'https://www.lipsum.com/', '150117', 'PE', 1, '2021-01-18 20:58:15', '2021-01-18 20:58:15'),
(7, 2, 'Limpiar la zona de Belaunde   Tupac Amaru   Comas', 'Limpiar y recoger toda la zona la basura que se encuentra en el lugar, el motivo de esta tarea es reducir la contamición en todo nuestro distrito, ya que amenudo se camina por ese lugar niños, jovenes e adultos. Comunicarse mediante wsp al 999 999 999 para más información.', '2021-01-30', '2021-02-02', 10, 'Jr por allá', 'https://www.google.maps', '150101', 'PE', 1, '2021-01-25 22:46:40', '2021-01-25 22:46:40'),
(8, 2, 'Limpiar la zona de Belaunde Tupac Amaru Comas Lima METROPOLITANA', 'Limpiar y recoger toda la zona la basura que se encuentra en el lugar, el motivo de esta tarea es reducir la contamición en todo nuestro distrito, ya que amenudo se camina por ese lugar niños, jovenes e adultos. Comunicarse mediante wsp al 999 999 999 para más información.', '2021-01-28', '2021-01-30', 5, 'Jr por allá', 'https://www.google.maps', '150101', 'PE', 1, '2021-01-25 22:49:39', '2021-01-25 22:49:39'),
(9, 2, 'update postamna', 'ijdnsuabhdiuadouaiuasfrfse', '2021-02-14', '2021-02-15', 4, 'jr mas pams', 'https://www.google.com.epmas', '150101', 'PE', 1, '2021-01-25 22:51:25', '2021-02-16 02:39:03'),
(10, 2, 'Soporte 24 7', 'dawdasd', '2021-01-26', '2021-01-28', 4, 'Jr por allá', 'https://www.lipsum.com/', '150101', 'PE', 1, '2021-01-25 23:14:14', '2021-01-25 23:14:14'),
(11, 2, 'Soporte 24 7', 'dawdad', '2021-01-27', '2021-01-30', 3, 'Jr por allá', 'https://www.lipsum.com/', '150103', 'PE', 1, '2021-01-25 23:20:30', '2021-01-25 23:20:30'),
(12, 2, 'PUENTE CAMOTE LIMPIAR LA BASURA JUNTADA', 'Limpiar y recoger toda la zona la basura que se encuentra en el lugar, el motivo de esta tarea es reducir la contamición en todo nuestro distrito, ya que amenudo se camina por ese lugar niños, jovenes e adultos. Comunicarse mediante wsp al 999 999 999 para más información.', '2021-01-26', '2021-01-27', 10, 'Jr por allá', 'https://www.lipsum.com/', '150101', 'PE', 1, '2021-01-25 23:24:04', '2021-01-25 23:24:04'),
(14, 2, 'reisgeerpostman test', 'asdjk nikbn aiufjbsdeiufn sdiojfnsdfkl nsdfklonsodfmsomsoijdfnisdufnsm sdnisdfsdef oksndfiju sndfioujsndfo sfbsaediufnsdfoknmsdfklnsdfjkn hsijfnsd iojfnsiejfnsdofm sd sidejubfni osunmfre isuydhfbr hgjghjgjygj', '2021-02-17', '2021-02-18', 10, 'jr postamn', 'https://www.googlemaps.com', '150101', 'PE', 1, '2021-02-15 23:36:33', '2021-02-15 23:36:33'),
(15, 2, 'register postman activity', 'asdjk nikbn aiufjbsdeiufn sdiojfnsdfkl nsdfklonsodfmsomsoijdfnisdufnsm sdnisdfsdef oksndfiju sndfioujsndfo sfbsaediufnsdfoknmsdfklnsdfjkn hsijfnsd iojfnsiejfnsdofm sd sidejubfni osunmfre isuydhfbr hgjghjgjygj', '2021-02-17', '2021-02-18', 10, 'jr postamn', 'https://www.googlemaps.com', '150101', 'PE', 1, '2021-02-15 23:37:23', '2021-02-15 23:37:23'),
(16, 2, 'reisgeerpostman activityrrsdw', 'asdjk nikbn aiufjbsdeiufn sdiojfnsdfkl nsdfklonsodfmsomsoijdfnisdufnsm sdnisdfsdef oksndfiju sndfioujsndfo sfbsaediufnsdfoknmsdfklnsdfjkn hsijfnsd iojfnsiejfnsdofm sd sidejubfni osunmfre isuydhfbr', '2021-02-16', '2021-02-17', 10, 'jr postamn', 'https://www.googlemaps.com', '150101', 'PE', 1, '2021-02-16 02:38:20', '2021-02-16 02:38:20'),
(18, 2, 'Soporte 24 7sss', 'awdfdsfsdf', '2021-03-04', '2021-03-05', 6, 'Jr por allá', 'https://www.lipsum.com/', '150116', 'PE', 1, '2021-03-02 00:58:06', '2021-03-02 01:59:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `banks`
--

INSERT INTO `banks` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Banco de Comercio', 1, '2021-01-18 14:35:00', '2021-01-18 14:35:00'),
(2, 'Banco de Crédito del Perú', 1, '2021-01-18 14:35:00', '2021-01-18 14:35:00'),
(3, 'Banco Interamericano de Finanzas (BanBif)', 1, '2021-01-18 14:35:00', '2021-01-18 14:35:00'),
(4, 'Banco Pichincha', 1, '2021-01-18 14:35:00', '2021-01-18 14:35:00'),
(5, 'BBVA', 1, '2021-01-18 14:35:00', '2021-01-18 14:35:00'),
(6, 'Citibank Perú', 1, '2021-01-18 14:35:00', '2021-01-18 14:35:00'),
(7, 'Interbank', 1, '2021-01-18 14:35:00', '2021-01-18 14:35:00'),
(8, 'MiBanco', 1, '2021-01-18 14:35:00', '2021-01-18 14:35:00'),
(9, 'Scotiabank Perú', 1, '2021-01-18 14:35:00', '2021-01-18 14:35:00'),
(10, 'Banco GNB Perú', 1, '2021-01-18 14:35:00', '2021-01-18 14:35:00'),
(11, 'Banco Falabella', 1, '2021-01-18 14:35:00', '2021-01-18 14:35:00'),
(12, 'Banco Ripley', 1, '2021-01-18 14:35:00', '2021-01-18 14:35:00'),
(13, 'Banco Santander Perú', 1, '2021-01-18 14:35:00', '2021-01-18 14:35:00'),
(14, 'Banco Azteca', 1, '2021-01-18 14:35:00', '2021-01-18 14:35:00'),
(15, 'CRAC CAT Perú', 1, '2021-01-18 14:35:00', '2021-01-18 14:35:00'),
(16, 'ICBC PERU BANK', 1, '2021-01-18 14:35:00', '2021-01-18 14:35:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departments`
--

CREATE TABLE `departments` (
  `id` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `departments`
--

INSERT INTO `departments` (`id`, `name`) VALUES
('01', 'Amazonas'),
('02', 'Áncash'),
('03', 'Apurímac'),
('04', 'Arequipa'),
('05', 'Ayacucho'),
('06', 'Cajamarca'),
('07', 'Callao'),
('08', 'Cusco'),
('09', 'Huancavelica'),
('10', 'Huánuco'),
('11', 'Ica'),
('12', 'Junín'),
('13', 'La Libertad'),
('14', 'Lambayeque'),
('15', 'Lima'),
('16', 'Loreto'),
('17', 'Madre de Dios'),
('18', 'Moquegua'),
('19', 'Pasco'),
('20', 'Piura'),
('21', 'Puno'),
('22', 'San Martín'),
('23', 'Tacna'),
('24', 'Tumbes'),
('25', 'Ucayali');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `districts`
--

CREATE TABLE `districts` (
  `id` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `districts`
--

INSERT INTO `districts` (`id`, `province_id`, `name`) VALUES
('010101', '0101', 'Chachapoyas'),
('010102', '0101', 'Asunción'),
('010103', '0101', 'Balsas'),
('010104', '0101', 'Cheto'),
('010105', '0101', 'Chiliquin'),
('010106', '0101', 'Chuquibamba'),
('010107', '0101', 'Granada'),
('010108', '0101', 'Huancas'),
('010109', '0101', 'La Jalca'),
('010110', '0101', 'Leimebamba'),
('010111', '0101', 'Levanto'),
('010112', '0101', 'Magdalena'),
('010113', '0101', 'Mariscal Castilla'),
('010114', '0101', 'Molinopampa'),
('010115', '0101', 'Montevideo'),
('010116', '0101', 'Olleros'),
('010117', '0101', 'Quinjalca'),
('010118', '0101', 'San Francisco de Daguas'),
('010119', '0101', 'San Isidro de Maino'),
('010120', '0101', 'Soloco'),
('010121', '0101', 'Sonche'),
('010201', '0102', 'Bagua'),
('010202', '0102', 'Aramango'),
('010203', '0102', 'Copallin'),
('010204', '0102', 'El Parco'),
('010205', '0102', 'Imaza'),
('010206', '0102', 'La Peca'),
('010301', '0103', 'Jumbilla'),
('010302', '0103', 'Chisquilla'),
('010303', '0103', 'Churuja'),
('010304', '0103', 'Corosha'),
('010305', '0103', 'Cuispes'),
('010306', '0103', 'Florida'),
('010307', '0103', 'Jazan'),
('010308', '0103', 'Recta'),
('010309', '0103', 'San Carlos'),
('010310', '0103', 'Shipasbamba'),
('010311', '0103', 'Valera'),
('010312', '0103', 'Yambrasbamba'),
('010401', '0104', 'Nieva'),
('010402', '0104', 'El Cenepa'),
('010403', '0104', 'Río Santiago'),
('010501', '0105', 'Lamud'),
('010502', '0105', 'Camporredondo'),
('010503', '0105', 'Cocabamba'),
('010504', '0105', 'Colcamar'),
('010505', '0105', 'Conila'),
('010506', '0105', 'Inguilpata'),
('010507', '0105', 'Longuita'),
('010508', '0105', 'Lonya Chico'),
('010509', '0105', 'Luya'),
('010510', '0105', 'Luya Viejo'),
('010511', '0105', 'María'),
('010512', '0105', 'Ocalli'),
('010513', '0105', 'Ocumal'),
('010514', '0105', 'Pisuquia'),
('010515', '0105', 'Providencia'),
('010516', '0105', 'San Cristóbal'),
('010517', '0105', 'San Francisco de Yeso'),
('010518', '0105', 'San Jerónimo'),
('010519', '0105', 'San Juan de Lopecancha'),
('010520', '0105', 'Santa Catalina'),
('010521', '0105', 'Santo Tomas'),
('010522', '0105', 'Tingo'),
('010523', '0105', 'Trita'),
('010601', '0106', 'San Nicolás'),
('010602', '0106', 'Chirimoto'),
('010603', '0106', 'Cochamal'),
('010604', '0106', 'Huambo'),
('010605', '0106', 'Limabamba'),
('010606', '0106', 'Longar'),
('010607', '0106', 'Mariscal Benavides'),
('010608', '0106', 'Milpuc'),
('010609', '0106', 'Omia'),
('010610', '0106', 'Santa Rosa'),
('010611', '0106', 'Totora'),
('010612', '0106', 'Vista Alegre'),
('010701', '0107', 'Bagua Grande'),
('010702', '0107', 'Cajaruro'),
('010703', '0107', 'Cumba'),
('010704', '0107', 'El Milagro'),
('010705', '0107', 'Jamalca'),
('010706', '0107', 'Lonya Grande'),
('010707', '0107', 'Yamon'),
('020101', '0201', 'Huaraz'),
('020102', '0201', 'Cochabamba'),
('020103', '0201', 'Colcabamba'),
('020104', '0201', 'Huanchay'),
('020105', '0201', 'Independencia'),
('020106', '0201', 'Jangas'),
('020107', '0201', 'La Libertad'),
('020108', '0201', 'Olleros'),
('020109', '0201', 'Pampas Grande'),
('020110', '0201', 'Pariacoto'),
('020111', '0201', 'Pira'),
('020112', '0201', 'Tarica'),
('020201', '0202', 'Aija'),
('020202', '0202', 'Coris'),
('020203', '0202', 'Huacllan'),
('020204', '0202', 'La Merced'),
('020205', '0202', 'Succha'),
('020301', '0203', 'Llamellin'),
('020302', '0203', 'Aczo'),
('020303', '0203', 'Chaccho'),
('020304', '0203', 'Chingas'),
('020305', '0203', 'Mirgas'),
('020306', '0203', 'San Juan de Rontoy'),
('020401', '0204', 'Chacas'),
('020402', '0204', 'Acochaca'),
('020501', '0205', 'Chiquian'),
('020502', '0205', 'Abelardo Pardo Lezameta'),
('020503', '0205', 'Antonio Raymondi'),
('020504', '0205', 'Aquia'),
('020505', '0205', 'Cajacay'),
('020506', '0205', 'Canis'),
('020507', '0205', 'Colquioc'),
('020508', '0205', 'Huallanca'),
('020509', '0205', 'Huasta'),
('020510', '0205', 'Huayllacayan'),
('020511', '0205', 'La Primavera'),
('020512', '0205', 'Mangas'),
('020513', '0205', 'Pacllon'),
('020514', '0205', 'San Miguel de Corpanqui'),
('020515', '0205', 'Ticllos'),
('020601', '0206', 'Carhuaz'),
('020602', '0206', 'Acopampa'),
('020603', '0206', 'Amashca'),
('020604', '0206', 'Anta'),
('020605', '0206', 'Ataquero'),
('020606', '0206', 'Marcara'),
('020607', '0206', 'Pariahuanca'),
('020608', '0206', 'San Miguel de Aco'),
('020609', '0206', 'Shilla'),
('020610', '0206', 'Tinco'),
('020611', '0206', 'Yungar'),
('020701', '0207', 'San Luis'),
('020702', '0207', 'San Nicolás'),
('020703', '0207', 'Yauya'),
('020801', '0208', 'Casma'),
('020802', '0208', 'Buena Vista Alta'),
('020803', '0208', 'Comandante Noel'),
('020804', '0208', 'Yautan'),
('020901', '0209', 'Corongo'),
('020902', '0209', 'Aco'),
('020903', '0209', 'Bambas'),
('020904', '0209', 'Cusca'),
('020905', '0209', 'La Pampa'),
('020906', '0209', 'Yanac'),
('020907', '0209', 'Yupan'),
('021001', '0210', 'Huari'),
('021002', '0210', 'Anra'),
('021003', '0210', 'Cajay'),
('021004', '0210', 'Chavin de Huantar'),
('021005', '0210', 'Huacachi'),
('021006', '0210', 'Huacchis'),
('021007', '0210', 'Huachis'),
('021008', '0210', 'Huantar'),
('021009', '0210', 'Masin'),
('021010', '0210', 'Paucas'),
('021011', '0210', 'Ponto'),
('021012', '0210', 'Rahuapampa'),
('021013', '0210', 'Rapayan'),
('021014', '0210', 'San Marcos'),
('021015', '0210', 'San Pedro de Chana'),
('021016', '0210', 'Uco'),
('021101', '0211', 'Huarmey'),
('021102', '0211', 'Cochapeti'),
('021103', '0211', 'Culebras'),
('021104', '0211', 'Huayan'),
('021105', '0211', 'Malvas'),
('021201', '0212', 'Caraz'),
('021202', '0212', 'Huallanca'),
('021203', '0212', 'Huata'),
('021204', '0212', 'Huaylas'),
('021205', '0212', 'Mato'),
('021206', '0212', 'Pamparomas'),
('021207', '0212', 'Pueblo Libre'),
('021208', '0212', 'Santa Cruz'),
('021209', '0212', 'Santo Toribio'),
('021210', '0212', 'Yuracmarca'),
('021301', '0213', 'Piscobamba'),
('021302', '0213', 'Casca'),
('021303', '0213', 'Eleazar Guzmán Barron'),
('021304', '0213', 'Fidel Olivas Escudero'),
('021305', '0213', 'Llama'),
('021306', '0213', 'Llumpa'),
('021307', '0213', 'Lucma'),
('021308', '0213', 'Musga'),
('021401', '0214', 'Ocros'),
('021402', '0214', 'Acas'),
('021403', '0214', 'Cajamarquilla'),
('021404', '0214', 'Carhuapampa'),
('021405', '0214', 'Cochas'),
('021406', '0214', 'Congas'),
('021407', '0214', 'Llipa'),
('021408', '0214', 'San Cristóbal de Rajan'),
('021409', '0214', 'San Pedro'),
('021410', '0214', 'Santiago de Chilcas'),
('021501', '0215', 'Cabana'),
('021502', '0215', 'Bolognesi'),
('021503', '0215', 'Conchucos'),
('021504', '0215', 'Huacaschuque'),
('021505', '0215', 'Huandoval'),
('021506', '0215', 'Lacabamba'),
('021507', '0215', 'Llapo'),
('021508', '0215', 'Pallasca'),
('021509', '0215', 'Pampas'),
('021510', '0215', 'Santa Rosa'),
('021511', '0215', 'Tauca'),
('021601', '0216', 'Pomabamba'),
('021602', '0216', 'Huayllan'),
('021603', '0216', 'Parobamba'),
('021604', '0216', 'Quinuabamba'),
('021701', '0217', 'Recuay'),
('021702', '0217', 'Catac'),
('021703', '0217', 'Cotaparaco'),
('021704', '0217', 'Huayllapampa'),
('021705', '0217', 'Llacllin'),
('021706', '0217', 'Marca'),
('021707', '0217', 'Pampas Chico'),
('021708', '0217', 'Pararin'),
('021709', '0217', 'Tapacocha'),
('021710', '0217', 'Ticapampa'),
('021801', '0218', 'Chimbote'),
('021802', '0218', 'Cáceres del Perú'),
('021803', '0218', 'Coishco'),
('021804', '0218', 'Macate'),
('021805', '0218', 'Moro'),
('021806', '0218', 'Nepeña'),
('021807', '0218', 'Samanco'),
('021808', '0218', 'Santa'),
('021809', '0218', 'Nuevo Chimbote'),
('021901', '0219', 'Sihuas'),
('021902', '0219', 'Acobamba'),
('021903', '0219', 'Alfonso Ugarte'),
('021904', '0219', 'Cashapampa'),
('021905', '0219', 'Chingalpo'),
('021906', '0219', 'Huayllabamba'),
('021907', '0219', 'Quiches'),
('021908', '0219', 'Ragash'),
('021909', '0219', 'San Juan'),
('021910', '0219', 'Sicsibamba'),
('022001', '0220', 'Yungay'),
('022002', '0220', 'Cascapara'),
('022003', '0220', 'Mancos'),
('022004', '0220', 'Matacoto'),
('022005', '0220', 'Quillo'),
('022006', '0220', 'Ranrahirca'),
('022007', '0220', 'Shupluy'),
('022008', '0220', 'Yanama'),
('030101', '0301', 'Abancay'),
('030102', '0301', 'Chacoche'),
('030103', '0301', 'Circa'),
('030104', '0301', 'Curahuasi'),
('030105', '0301', 'Huanipaca'),
('030106', '0301', 'Lambrama'),
('030107', '0301', 'Pichirhua'),
('030108', '0301', 'San Pedro de Cachora'),
('030109', '0301', 'Tamburco'),
('030201', '0302', 'Andahuaylas'),
('030202', '0302', 'Andarapa'),
('030203', '0302', 'Chiara'),
('030204', '0302', 'Huancarama'),
('030205', '0302', 'Huancaray'),
('030206', '0302', 'Huayana'),
('030207', '0302', 'Kishuara'),
('030208', '0302', 'Pacobamba'),
('030209', '0302', 'Pacucha'),
('030210', '0302', 'Pampachiri'),
('030211', '0302', 'Pomacocha'),
('030212', '0302', 'San Antonio de Cachi'),
('030213', '0302', 'San Jerónimo'),
('030214', '0302', 'San Miguel de Chaccrampa'),
('030215', '0302', 'Santa María de Chicmo'),
('030216', '0302', 'Talavera'),
('030217', '0302', 'Tumay Huaraca'),
('030218', '0302', 'Turpo'),
('030219', '0302', 'Kaquiabamba'),
('030220', '0302', 'José María Arguedas'),
('030301', '0303', 'Antabamba'),
('030302', '0303', 'El Oro'),
('030303', '0303', 'Huaquirca'),
('030304', '0303', 'Juan Espinoza Medrano'),
('030305', '0303', 'Oropesa'),
('030306', '0303', 'Pachaconas'),
('030307', '0303', 'Sabaino'),
('030401', '0304', 'Chalhuanca'),
('030402', '0304', 'Capaya'),
('030403', '0304', 'Caraybamba'),
('030404', '0304', 'Chapimarca'),
('030405', '0304', 'Colcabamba'),
('030406', '0304', 'Cotaruse'),
('030407', '0304', 'Ihuayllo'),
('030408', '0304', 'Justo Apu Sahuaraura'),
('030409', '0304', 'Lucre'),
('030410', '0304', 'Pocohuanca'),
('030411', '0304', 'San Juan de Chacña'),
('030412', '0304', 'Sañayca'),
('030413', '0304', 'Soraya'),
('030414', '0304', 'Tapairihua'),
('030415', '0304', 'Tintay'),
('030416', '0304', 'Toraya'),
('030417', '0304', 'Yanaca'),
('030501', '0305', 'Tambobamba'),
('030502', '0305', 'Cotabambas'),
('030503', '0305', 'Coyllurqui'),
('030504', '0305', 'Haquira'),
('030505', '0305', 'Mara'),
('030506', '0305', 'Challhuahuacho'),
('030601', '0306', 'Chincheros'),
('030602', '0306', 'Anco_Huallo'),
('030603', '0306', 'Cocharcas'),
('030604', '0306', 'Huaccana'),
('030605', '0306', 'Ocobamba'),
('030606', '0306', 'Ongoy'),
('030607', '0306', 'Uranmarca'),
('030608', '0306', 'Ranracancha'),
('030609', '0306', 'Rocchacc'),
('030610', '0306', 'El Porvenir'),
('030611', '0306', 'Los Chankas'),
('030701', '0307', 'Chuquibambilla'),
('030702', '0307', 'Curpahuasi'),
('030703', '0307', 'Gamarra'),
('030704', '0307', 'Huayllati'),
('030705', '0307', 'Mamara'),
('030706', '0307', 'Micaela Bastidas'),
('030707', '0307', 'Pataypampa'),
('030708', '0307', 'Progreso'),
('030709', '0307', 'San Antonio'),
('030710', '0307', 'Santa Rosa'),
('030711', '0307', 'Turpay'),
('030712', '0307', 'Vilcabamba'),
('030713', '0307', 'Virundo'),
('030714', '0307', 'Curasco'),
('040101', '0401', 'Arequipa'),
('040102', '0401', 'Alto Selva Alegre'),
('040103', '0401', 'Cayma'),
('040104', '0401', 'Cerro Colorado'),
('040105', '0401', 'Characato'),
('040106', '0401', 'Chiguata'),
('040107', '0401', 'Jacobo Hunter'),
('040108', '0401', 'La Joya'),
('040109', '0401', 'Mariano Melgar'),
('040110', '0401', 'Miraflores'),
('040111', '0401', 'Mollebaya'),
('040112', '0401', 'Paucarpata'),
('040113', '0401', 'Pocsi'),
('040114', '0401', 'Polobaya'),
('040115', '0401', 'Quequeña'),
('040116', '0401', 'Sabandia'),
('040117', '0401', 'Sachaca'),
('040118', '0401', 'San Juan de Siguas'),
('040119', '0401', 'San Juan de Tarucani'),
('040120', '0401', 'Santa Isabel de Siguas'),
('040121', '0401', 'Santa Rita de Siguas'),
('040122', '0401', 'Socabaya'),
('040123', '0401', 'Tiabaya'),
('040124', '0401', 'Uchumayo'),
('040125', '0401', 'Vitor'),
('040126', '0401', 'Yanahuara'),
('040127', '0401', 'Yarabamba'),
('040128', '0401', 'Yura'),
('040129', '0401', 'José Luis Bustamante Y Rivero'),
('040201', '0402', 'Camaná'),
('040202', '0402', 'José María Quimper'),
('040203', '0402', 'Mariano Nicolás Valcárcel'),
('040204', '0402', 'Mariscal Cáceres'),
('040205', '0402', 'Nicolás de Pierola'),
('040206', '0402', 'Ocoña'),
('040207', '0402', 'Quilca'),
('040208', '0402', 'Samuel Pastor'),
('040301', '0403', 'Caravelí'),
('040302', '0403', 'Acarí'),
('040303', '0403', 'Atico'),
('040304', '0403', 'Atiquipa'),
('040305', '0403', 'Bella Unión'),
('040306', '0403', 'Cahuacho'),
('040307', '0403', 'Chala'),
('040308', '0403', 'Chaparra'),
('040309', '0403', 'Huanuhuanu'),
('040310', '0403', 'Jaqui'),
('040311', '0403', 'Lomas'),
('040312', '0403', 'Quicacha'),
('040313', '0403', 'Yauca'),
('040401', '0404', 'Aplao'),
('040402', '0404', 'Andagua'),
('040403', '0404', 'Ayo'),
('040404', '0404', 'Chachas'),
('040405', '0404', 'Chilcaymarca'),
('040406', '0404', 'Choco'),
('040407', '0404', 'Huancarqui'),
('040408', '0404', 'Machaguay'),
('040409', '0404', 'Orcopampa'),
('040410', '0404', 'Pampacolca'),
('040411', '0404', 'Tipan'),
('040412', '0404', 'Uñon'),
('040413', '0404', 'Uraca'),
('040414', '0404', 'Viraco'),
('040501', '0405', 'Chivay'),
('040502', '0405', 'Achoma'),
('040503', '0405', 'Cabanaconde'),
('040504', '0405', 'Callalli'),
('040505', '0405', 'Caylloma'),
('040506', '0405', 'Coporaque'),
('040507', '0405', 'Huambo'),
('040508', '0405', 'Huanca'),
('040509', '0405', 'Ichupampa'),
('040510', '0405', 'Lari'),
('040511', '0405', 'Lluta'),
('040512', '0405', 'Maca'),
('040513', '0405', 'Madrigal'),
('040514', '0405', 'San Antonio de Chuca'),
('040515', '0405', 'Sibayo'),
('040516', '0405', 'Tapay'),
('040517', '0405', 'Tisco'),
('040518', '0405', 'Tuti'),
('040519', '0405', 'Yanque'),
('040520', '0405', 'Majes'),
('040601', '0406', 'Chuquibamba'),
('040602', '0406', 'Andaray'),
('040603', '0406', 'Cayarani'),
('040604', '0406', 'Chichas'),
('040605', '0406', 'Iray'),
('040606', '0406', 'Río Grande'),
('040607', '0406', 'Salamanca'),
('040608', '0406', 'Yanaquihua'),
('040701', '0407', 'Mollendo'),
('040702', '0407', 'Cocachacra'),
('040703', '0407', 'Dean Valdivia'),
('040704', '0407', 'Islay'),
('040705', '0407', 'Mejia'),
('040706', '0407', 'Punta de Bombón'),
('040801', '0408', 'Cotahuasi'),
('040802', '0408', 'Alca'),
('040803', '0408', 'Charcana'),
('040804', '0408', 'Huaynacotas'),
('040805', '0408', 'Pampamarca'),
('040806', '0408', 'Puyca'),
('040807', '0408', 'Quechualla'),
('040808', '0408', 'Sayla'),
('040809', '0408', 'Tauria'),
('040810', '0408', 'Tomepampa'),
('040811', '0408', 'Toro'),
('050101', '0501', 'Ayacucho'),
('050102', '0501', 'Acocro'),
('050103', '0501', 'Acos Vinchos'),
('050104', '0501', 'Carmen Alto'),
('050105', '0501', 'Chiara'),
('050106', '0501', 'Ocros'),
('050107', '0501', 'Pacaycasa'),
('050108', '0501', 'Quinua'),
('050109', '0501', 'San José de Ticllas'),
('050110', '0501', 'San Juan Bautista'),
('050111', '0501', 'Santiago de Pischa'),
('050112', '0501', 'Socos'),
('050113', '0501', 'Tambillo'),
('050114', '0501', 'Vinchos'),
('050115', '0501', 'Jesús Nazareno'),
('050116', '0501', 'Andrés Avelino Cáceres Dorregaray'),
('050201', '0502', 'Cangallo'),
('050202', '0502', 'Chuschi'),
('050203', '0502', 'Los Morochucos'),
('050204', '0502', 'María Parado de Bellido'),
('050205', '0502', 'Paras'),
('050206', '0502', 'Totos'),
('050301', '0503', 'Sancos'),
('050302', '0503', 'Carapo'),
('050303', '0503', 'Sacsamarca'),
('050304', '0503', 'Santiago de Lucanamarca'),
('050401', '0504', 'Huanta'),
('050402', '0504', 'Ayahuanco'),
('050403', '0504', 'Huamanguilla'),
('050404', '0504', 'Iguain'),
('050405', '0504', 'Luricocha'),
('050406', '0504', 'Santillana'),
('050407', '0504', 'Sivia'),
('050408', '0504', 'Llochegua'),
('050409', '0504', 'Canayre'),
('050410', '0504', 'Uchuraccay'),
('050411', '0504', 'Pucacolpa'),
('050412', '0504', 'Chaca'),
('050501', '0505', 'San Miguel'),
('050502', '0505', 'Anco'),
('050503', '0505', 'Ayna'),
('050504', '0505', 'Chilcas'),
('050505', '0505', 'Chungui'),
('050506', '0505', 'Luis Carranza'),
('050507', '0505', 'Santa Rosa'),
('050508', '0505', 'Tambo'),
('050509', '0505', 'Samugari'),
('050510', '0505', 'Anchihuay'),
('050511', '0505', 'Oronccoy'),
('050601', '0506', 'Puquio'),
('050602', '0506', 'Aucara'),
('050603', '0506', 'Cabana'),
('050604', '0506', 'Carmen Salcedo'),
('050605', '0506', 'Chaviña'),
('050606', '0506', 'Chipao'),
('050607', '0506', 'Huac-Huas'),
('050608', '0506', 'Laramate'),
('050609', '0506', 'Leoncio Prado'),
('050610', '0506', 'Llauta'),
('050611', '0506', 'Lucanas'),
('050612', '0506', 'Ocaña'),
('050613', '0506', 'Otoca'),
('050614', '0506', 'Saisa'),
('050615', '0506', 'San Cristóbal'),
('050616', '0506', 'San Juan'),
('050617', '0506', 'San Pedro'),
('050618', '0506', 'San Pedro de Palco'),
('050619', '0506', 'Sancos'),
('050620', '0506', 'Santa Ana de Huaycahuacho'),
('050621', '0506', 'Santa Lucia'),
('050701', '0507', 'Coracora'),
('050702', '0507', 'Chumpi'),
('050703', '0507', 'Coronel Castañeda'),
('050704', '0507', 'Pacapausa'),
('050705', '0507', 'Pullo'),
('050706', '0507', 'Puyusca'),
('050707', '0507', 'San Francisco de Ravacayco'),
('050708', '0507', 'Upahuacho'),
('050801', '0508', 'Pausa'),
('050802', '0508', 'Colta'),
('050803', '0508', 'Corculla'),
('050804', '0508', 'Lampa'),
('050805', '0508', 'Marcabamba'),
('050806', '0508', 'Oyolo'),
('050807', '0508', 'Pararca'),
('050808', '0508', 'San Javier de Alpabamba'),
('050809', '0508', 'San José de Ushua'),
('050810', '0508', 'Sara Sara'),
('050901', '0509', 'Querobamba'),
('050902', '0509', 'Belén'),
('050903', '0509', 'Chalcos'),
('050904', '0509', 'Chilcayoc'),
('050905', '0509', 'Huacaña'),
('050906', '0509', 'Morcolla'),
('050907', '0509', 'Paico'),
('050908', '0509', 'San Pedro de Larcay'),
('050909', '0509', 'San Salvador de Quije'),
('050910', '0509', 'Santiago de Paucaray'),
('050911', '0509', 'Soras'),
('051001', '0510', 'Huancapi'),
('051002', '0510', 'Alcamenca'),
('051003', '0510', 'Apongo'),
('051004', '0510', 'Asquipata'),
('051005', '0510', 'Canaria'),
('051006', '0510', 'Cayara'),
('051007', '0510', 'Colca'),
('051008', '0510', 'Huamanquiquia'),
('051009', '0510', 'Huancaraylla'),
('051010', '0510', 'Hualla'),
('051011', '0510', 'Sarhua'),
('051012', '0510', 'Vilcanchos'),
('051101', '0511', 'Vilcas Huaman'),
('051102', '0511', 'Accomarca'),
('051103', '0511', 'Carhuanca'),
('051104', '0511', 'Concepción'),
('051105', '0511', 'Huambalpa'),
('051106', '0511', 'Independencia'),
('051107', '0511', 'Saurama'),
('051108', '0511', 'Vischongo'),
('060101', '0601', 'Cajamarca'),
('060102', '0601', 'Asunción'),
('060103', '0601', 'Chetilla'),
('060104', '0601', 'Cospan'),
('060105', '0601', 'Encañada'),
('060106', '0601', 'Jesús'),
('060107', '0601', 'Llacanora'),
('060108', '0601', 'Los Baños del Inca'),
('060109', '0601', 'Magdalena'),
('060110', '0601', 'Matara'),
('060111', '0601', 'Namora'),
('060112', '0601', 'San Juan'),
('060201', '0602', 'Cajabamba'),
('060202', '0602', 'Cachachi'),
('060203', '0602', 'Condebamba'),
('060204', '0602', 'Sitacocha'),
('060301', '0603', 'Celendín'),
('060302', '0603', 'Chumuch'),
('060303', '0603', 'Cortegana'),
('060304', '0603', 'Huasmin'),
('060305', '0603', 'Jorge Chávez'),
('060306', '0603', 'José Gálvez'),
('060307', '0603', 'Miguel Iglesias'),
('060308', '0603', 'Oxamarca'),
('060309', '0603', 'Sorochuco'),
('060310', '0603', 'Sucre'),
('060311', '0603', 'Utco'),
('060312', '0603', 'La Libertad de Pallan'),
('060401', '0604', 'Chota'),
('060402', '0604', 'Anguia'),
('060403', '0604', 'Chadin'),
('060404', '0604', 'Chiguirip'),
('060405', '0604', 'Chimban'),
('060406', '0604', 'Choropampa'),
('060407', '0604', 'Cochabamba'),
('060408', '0604', 'Conchan'),
('060409', '0604', 'Huambos'),
('060410', '0604', 'Lajas'),
('060411', '0604', 'Llama'),
('060412', '0604', 'Miracosta'),
('060413', '0604', 'Paccha'),
('060414', '0604', 'Pion'),
('060415', '0604', 'Querocoto'),
('060416', '0604', 'San Juan de Licupis'),
('060417', '0604', 'Tacabamba'),
('060418', '0604', 'Tocmoche'),
('060419', '0604', 'Chalamarca'),
('060501', '0605', 'Contumaza'),
('060502', '0605', 'Chilete'),
('060503', '0605', 'Cupisnique'),
('060504', '0605', 'Guzmango'),
('060505', '0605', 'San Benito'),
('060506', '0605', 'Santa Cruz de Toledo'),
('060507', '0605', 'Tantarica'),
('060508', '0605', 'Yonan'),
('060601', '0606', 'Cutervo'),
('060602', '0606', 'Callayuc'),
('060603', '0606', 'Choros'),
('060604', '0606', 'Cujillo'),
('060605', '0606', 'La Ramada'),
('060606', '0606', 'Pimpingos'),
('060607', '0606', 'Querocotillo'),
('060608', '0606', 'San Andrés de Cutervo'),
('060609', '0606', 'San Juan de Cutervo'),
('060610', '0606', 'San Luis de Lucma'),
('060611', '0606', 'Santa Cruz'),
('060612', '0606', 'Santo Domingo de la Capilla'),
('060613', '0606', 'Santo Tomas'),
('060614', '0606', 'Socota'),
('060615', '0606', 'Toribio Casanova'),
('060701', '0607', 'Bambamarca'),
('060702', '0607', 'Chugur'),
('060703', '0607', 'Hualgayoc'),
('060801', '0608', 'Jaén'),
('060802', '0608', 'Bellavista'),
('060803', '0608', 'Chontali'),
('060804', '0608', 'Colasay'),
('060805', '0608', 'Huabal'),
('060806', '0608', 'Las Pirias'),
('060807', '0608', 'Pomahuaca'),
('060808', '0608', 'Pucara'),
('060809', '0608', 'Sallique'),
('060810', '0608', 'San Felipe'),
('060811', '0608', 'San José del Alto'),
('060812', '0608', 'Santa Rosa'),
('060901', '0609', 'San Ignacio'),
('060902', '0609', 'Chirinos'),
('060903', '0609', 'Huarango'),
('060904', '0609', 'La Coipa'),
('060905', '0609', 'Namballe'),
('060906', '0609', 'San José de Lourdes'),
('060907', '0609', 'Tabaconas'),
('061001', '0610', 'Pedro Gálvez'),
('061002', '0610', 'Chancay'),
('061003', '0610', 'Eduardo Villanueva'),
('061004', '0610', 'Gregorio Pita'),
('061005', '0610', 'Ichocan'),
('061006', '0610', 'José Manuel Quiroz'),
('061007', '0610', 'José Sabogal'),
('061101', '0611', 'San Miguel'),
('061102', '0611', 'Bolívar'),
('061103', '0611', 'Calquis'),
('061104', '0611', 'Catilluc'),
('061105', '0611', 'El Prado'),
('061106', '0611', 'La Florida'),
('061107', '0611', 'Llapa'),
('061108', '0611', 'Nanchoc'),
('061109', '0611', 'Niepos'),
('061110', '0611', 'San Gregorio'),
('061111', '0611', 'San Silvestre de Cochan'),
('061112', '0611', 'Tongod'),
('061113', '0611', 'Unión Agua Blanca'),
('061201', '0612', 'San Pablo'),
('061202', '0612', 'San Bernardino'),
('061203', '0612', 'San Luis'),
('061204', '0612', 'Tumbaden'),
('061301', '0613', 'Santa Cruz'),
('061302', '0613', 'Andabamba'),
('061303', '0613', 'Catache'),
('061304', '0613', 'Chancaybaños'),
('061305', '0613', 'La Esperanza'),
('061306', '0613', 'Ninabamba'),
('061307', '0613', 'Pulan'),
('061308', '0613', 'Saucepampa'),
('061309', '0613', 'Sexi'),
('061310', '0613', 'Uticyacu'),
('061311', '0613', 'Yauyucan'),
('070101', '0701', 'Callao'),
('070102', '0701', 'Bellavista'),
('070103', '0701', 'Carmen de la Legua Reynoso'),
('070104', '0701', 'La Perla'),
('070105', '0701', 'La Punta'),
('070106', '0701', 'Ventanilla'),
('070107', '0701', 'Mi Perú'),
('080101', '0801', 'Cusco'),
('080102', '0801', 'Ccorca'),
('080103', '0801', 'Poroy'),
('080104', '0801', 'San Jerónimo'),
('080105', '0801', 'San Sebastian'),
('080106', '0801', 'Santiago'),
('080107', '0801', 'Saylla'),
('080108', '0801', 'Wanchaq'),
('080201', '0802', 'Acomayo'),
('080202', '0802', 'Acopia'),
('080203', '0802', 'Acos'),
('080204', '0802', 'Mosoc Llacta'),
('080205', '0802', 'Pomacanchi'),
('080206', '0802', 'Rondocan'),
('080207', '0802', 'Sangarara'),
('080301', '0803', 'Anta'),
('080302', '0803', 'Ancahuasi'),
('080303', '0803', 'Cachimayo'),
('080304', '0803', 'Chinchaypujio'),
('080305', '0803', 'Huarocondo'),
('080306', '0803', 'Limatambo'),
('080307', '0803', 'Mollepata'),
('080308', '0803', 'Pucyura'),
('080309', '0803', 'Zurite'),
('080401', '0804', 'Calca'),
('080402', '0804', 'Coya'),
('080403', '0804', 'Lamay'),
('080404', '0804', 'Lares'),
('080405', '0804', 'Pisac'),
('080406', '0804', 'San Salvador'),
('080407', '0804', 'Taray'),
('080408', '0804', 'Yanatile'),
('080501', '0805', 'Yanaoca'),
('080502', '0805', 'Checca'),
('080503', '0805', 'Kunturkanki'),
('080504', '0805', 'Langui'),
('080505', '0805', 'Layo'),
('080506', '0805', 'Pampamarca'),
('080507', '0805', 'Quehue'),
('080508', '0805', 'Tupac Amaru'),
('080601', '0806', 'Sicuani'),
('080602', '0806', 'Checacupe'),
('080603', '0806', 'Combapata'),
('080604', '0806', 'Marangani'),
('080605', '0806', 'Pitumarca'),
('080606', '0806', 'San Pablo'),
('080607', '0806', 'San Pedro'),
('080608', '0806', 'Tinta'),
('080701', '0807', 'Santo Tomas'),
('080702', '0807', 'Capacmarca'),
('080703', '0807', 'Chamaca'),
('080704', '0807', 'Colquemarca'),
('080705', '0807', 'Livitaca'),
('080706', '0807', 'Llusco'),
('080707', '0807', 'Quiñota'),
('080708', '0807', 'Velille'),
('080801', '0808', 'Espinar'),
('080802', '0808', 'Condoroma'),
('080803', '0808', 'Coporaque'),
('080804', '0808', 'Ocoruro'),
('080805', '0808', 'Pallpata'),
('080806', '0808', 'Pichigua'),
('080807', '0808', 'Suyckutambo'),
('080808', '0808', 'Alto Pichigua'),
('080901', '0809', 'Santa Ana'),
('080902', '0809', 'Echarate'),
('080903', '0809', 'Huayopata'),
('080904', '0809', 'Maranura'),
('080905', '0809', 'Ocobamba'),
('080906', '0809', 'Quellouno'),
('080907', '0809', 'Kimbiri'),
('080908', '0809', 'Santa Teresa'),
('080909', '0809', 'Vilcabamba'),
('080910', '0809', 'Pichari'),
('080911', '0809', 'Inkawasi'),
('080912', '0809', 'Villa Virgen'),
('080913', '0809', 'Villa Kintiarina'),
('080914', '0809', 'Megantoni'),
('081001', '0810', 'Paruro'),
('081002', '0810', 'Accha'),
('081003', '0810', 'Ccapi'),
('081004', '0810', 'Colcha'),
('081005', '0810', 'Huanoquite'),
('081006', '0810', 'Omachaç'),
('081007', '0810', 'Paccaritambo'),
('081008', '0810', 'Pillpinto'),
('081009', '0810', 'Yaurisque'),
('081101', '0811', 'Paucartambo'),
('081102', '0811', 'Caicay'),
('081103', '0811', 'Challabamba'),
('081104', '0811', 'Colquepata'),
('081105', '0811', 'Huancarani'),
('081106', '0811', 'Kosñipata'),
('081201', '0812', 'Urcos'),
('081202', '0812', 'Andahuaylillas'),
('081203', '0812', 'Camanti'),
('081204', '0812', 'Ccarhuayo'),
('081205', '0812', 'Ccatca'),
('081206', '0812', 'Cusipata'),
('081207', '0812', 'Huaro'),
('081208', '0812', 'Lucre'),
('081209', '0812', 'Marcapata'),
('081210', '0812', 'Ocongate'),
('081211', '0812', 'Oropesa'),
('081212', '0812', 'Quiquijana'),
('081301', '0813', 'Urubamba'),
('081302', '0813', 'Chinchero'),
('081303', '0813', 'Huayllabamba'),
('081304', '0813', 'Machupicchu'),
('081305', '0813', 'Maras'),
('081306', '0813', 'Ollantaytambo'),
('081307', '0813', 'Yucay'),
('090101', '0901', 'Huancavelica'),
('090102', '0901', 'Acobambilla'),
('090103', '0901', 'Acoria'),
('090104', '0901', 'Conayca'),
('090105', '0901', 'Cuenca'),
('090106', '0901', 'Huachocolpa'),
('090107', '0901', 'Huayllahuara'),
('090108', '0901', 'Izcuchaca'),
('090109', '0901', 'Laria'),
('090110', '0901', 'Manta'),
('090111', '0901', 'Mariscal Cáceres'),
('090112', '0901', 'Moya'),
('090113', '0901', 'Nuevo Occoro'),
('090114', '0901', 'Palca'),
('090115', '0901', 'Pilchaca'),
('090116', '0901', 'Vilca'),
('090117', '0901', 'Yauli'),
('090118', '0901', 'Ascensión'),
('090119', '0901', 'Huando'),
('090201', '0902', 'Acobamba'),
('090202', '0902', 'Andabamba'),
('090203', '0902', 'Anta'),
('090204', '0902', 'Caja'),
('090205', '0902', 'Marcas'),
('090206', '0902', 'Paucara'),
('090207', '0902', 'Pomacocha'),
('090208', '0902', 'Rosario'),
('090301', '0903', 'Lircay'),
('090302', '0903', 'Anchonga'),
('090303', '0903', 'Callanmarca'),
('090304', '0903', 'Ccochaccasa'),
('090305', '0903', 'Chincho'),
('090306', '0903', 'Congalla'),
('090307', '0903', 'Huanca-Huanca'),
('090308', '0903', 'Huayllay Grande'),
('090309', '0903', 'Julcamarca'),
('090310', '0903', 'San Antonio de Antaparco'),
('090311', '0903', 'Santo Tomas de Pata'),
('090312', '0903', 'Secclla'),
('090401', '0904', 'Castrovirreyna'),
('090402', '0904', 'Arma'),
('090403', '0904', 'Aurahua'),
('090404', '0904', 'Capillas'),
('090405', '0904', 'Chupamarca'),
('090406', '0904', 'Cocas'),
('090407', '0904', 'Huachos'),
('090408', '0904', 'Huamatambo'),
('090409', '0904', 'Mollepampa'),
('090410', '0904', 'San Juan'),
('090411', '0904', 'Santa Ana'),
('090412', '0904', 'Tantara'),
('090413', '0904', 'Ticrapo'),
('090501', '0905', 'Churcampa'),
('090502', '0905', 'Anco'),
('090503', '0905', 'Chinchihuasi'),
('090504', '0905', 'El Carmen'),
('090505', '0905', 'La Merced'),
('090506', '0905', 'Locroja'),
('090507', '0905', 'Paucarbamba'),
('090508', '0905', 'San Miguel de Mayocc'),
('090509', '0905', 'San Pedro de Coris'),
('090510', '0905', 'Pachamarca'),
('090511', '0905', 'Cosme'),
('090601', '0906', 'Huaytara'),
('090602', '0906', 'Ayavi'),
('090603', '0906', 'Córdova'),
('090604', '0906', 'Huayacundo Arma'),
('090605', '0906', 'Laramarca'),
('090606', '0906', 'Ocoyo'),
('090607', '0906', 'Pilpichaca'),
('090608', '0906', 'Querco'),
('090609', '0906', 'Quito-Arma'),
('090610', '0906', 'San Antonio de Cusicancha'),
('090611', '0906', 'San Francisco de Sangayaico'),
('090612', '0906', 'San Isidro'),
('090613', '0906', 'Santiago de Chocorvos'),
('090614', '0906', 'Santiago de Quirahuara'),
('090615', '0906', 'Santo Domingo de Capillas'),
('090616', '0906', 'Tambo'),
('090701', '0907', 'Pampas'),
('090702', '0907', 'Acostambo'),
('090703', '0907', 'Acraquia'),
('090704', '0907', 'Ahuaycha'),
('090705', '0907', 'Colcabamba'),
('090706', '0907', 'Daniel Hernández'),
('090707', '0907', 'Huachocolpa'),
('090709', '0907', 'Huaribamba'),
('090710', '0907', 'Ñahuimpuquio'),
('090711', '0907', 'Pazos'),
('090713', '0907', 'Quishuar'),
('090714', '0907', 'Salcabamba'),
('090715', '0907', 'Salcahuasi'),
('090716', '0907', 'San Marcos de Rocchac'),
('090717', '0907', 'Surcubamba'),
('090718', '0907', 'Tintay Puncu'),
('090719', '0907', 'Quichuas'),
('090720', '0907', 'Andaymarca'),
('090721', '0907', 'Roble'),
('090722', '0907', 'Pichos'),
('090723', '0907', 'Santiago de Tucuma'),
('100101', '1001', 'Huanuco'),
('100102', '1001', 'Amarilis'),
('100103', '1001', 'Chinchao'),
('100104', '1001', 'Churubamba'),
('100105', '1001', 'Margos'),
('100106', '1001', 'Quisqui (Kichki)'),
('100107', '1001', 'San Francisco de Cayran'),
('100108', '1001', 'San Pedro de Chaulan'),
('100109', '1001', 'Santa María del Valle'),
('100110', '1001', 'Yarumayo'),
('100111', '1001', 'Pillco Marca'),
('100112', '1001', 'Yacus'),
('100113', '1001', 'San Pablo de Pillao'),
('100201', '1002', 'Ambo'),
('100202', '1002', 'Cayna'),
('100203', '1002', 'Colpas'),
('100204', '1002', 'Conchamarca'),
('100205', '1002', 'Huacar'),
('100206', '1002', 'San Francisco'),
('100207', '1002', 'San Rafael'),
('100208', '1002', 'Tomay Kichwa'),
('100301', '1003', 'La Unión'),
('100307', '1003', 'Chuquis'),
('100311', '1003', 'Marías'),
('100313', '1003', 'Pachas'),
('100316', '1003', 'Quivilla'),
('100317', '1003', 'Ripan'),
('100321', '1003', 'Shunqui'),
('100322', '1003', 'Sillapata'),
('100323', '1003', 'Yanas'),
('100401', '1004', 'Huacaybamba'),
('100402', '1004', 'Canchabamba'),
('100403', '1004', 'Cochabamba'),
('100404', '1004', 'Pinra'),
('100501', '1005', 'Llata'),
('100502', '1005', 'Arancay'),
('100503', '1005', 'Chavín de Pariarca'),
('100504', '1005', 'Jacas Grande'),
('100505', '1005', 'Jircan'),
('100506', '1005', 'Miraflores'),
('100507', '1005', 'Monzón'),
('100508', '1005', 'Punchao'),
('100509', '1005', 'Puños'),
('100510', '1005', 'Singa'),
('100511', '1005', 'Tantamayo'),
('100601', '1006', 'Rupa-Rupa'),
('100602', '1006', 'Daniel Alomía Robles'),
('100603', '1006', 'Hermílio Valdizan'),
('100604', '1006', 'José Crespo y Castillo'),
('100605', '1006', 'Luyando'),
('100606', '1006', 'Mariano Damaso Beraun'),
('100607', '1006', 'Pucayacu'),
('100608', '1006', 'Castillo Grande'),
('100609', '1006', 'Pueblo Nuevo'),
('100610', '1006', 'Santo Domingo de Anda'),
('100701', '1007', 'Huacrachuco'),
('100702', '1007', 'Cholon'),
('100703', '1007', 'San Buenaventura'),
('100704', '1007', 'La Morada'),
('100705', '1007', 'Santa Rosa de Alto Yanajanca'),
('100801', '1008', 'Panao'),
('100802', '1008', 'Chaglla'),
('100803', '1008', 'Molino'),
('100804', '1008', 'Umari'),
('100901', '1009', 'Puerto Inca'),
('100902', '1009', 'Codo del Pozuzo'),
('100903', '1009', 'Honoria'),
('100904', '1009', 'Tournavista'),
('100905', '1009', 'Yuyapichis'),
('101001', '1010', 'Jesús'),
('101002', '1010', 'Baños'),
('101003', '1010', 'Jivia'),
('101004', '1010', 'Queropalca'),
('101005', '1010', 'Rondos'),
('101006', '1010', 'San Francisco de Asís'),
('101007', '1010', 'San Miguel de Cauri'),
('101101', '1011', 'Chavinillo'),
('101102', '1011', 'Cahuac'),
('101103', '1011', 'Chacabamba'),
('101104', '1011', 'Aparicio Pomares'),
('101105', '1011', 'Jacas Chico'),
('101106', '1011', 'Obas'),
('101107', '1011', 'Pampamarca'),
('101108', '1011', 'Choras'),
('110101', '1101', 'Ica'),
('110102', '1101', 'La Tinguiña'),
('110103', '1101', 'Los Aquijes'),
('110104', '1101', 'Ocucaje'),
('110105', '1101', 'Pachacutec'),
('110106', '1101', 'Parcona'),
('110107', '1101', 'Pueblo Nuevo'),
('110108', '1101', 'Salas'),
('110109', '1101', 'San José de Los Molinos'),
('110110', '1101', 'San Juan Bautista'),
('110111', '1101', 'Santiago'),
('110112', '1101', 'Subtanjalla'),
('110113', '1101', 'Tate'),
('110114', '1101', 'Yauca del Rosario'),
('110201', '1102', 'Chincha Alta'),
('110202', '1102', 'Alto Laran'),
('110203', '1102', 'Chavin'),
('110204', '1102', 'Chincha Baja'),
('110205', '1102', 'El Carmen'),
('110206', '1102', 'Grocio Prado'),
('110207', '1102', 'Pueblo Nuevo'),
('110208', '1102', 'San Juan de Yanac'),
('110209', '1102', 'San Pedro de Huacarpana'),
('110210', '1102', 'Sunampe'),
('110211', '1102', 'Tambo de Mora'),
('110301', '1103', 'Nasca'),
('110302', '1103', 'Changuillo'),
('110303', '1103', 'El Ingenio'),
('110304', '1103', 'Marcona'),
('110305', '1103', 'Vista Alegre'),
('110401', '1104', 'Palpa'),
('110402', '1104', 'Llipata'),
('110403', '1104', 'Río Grande'),
('110404', '1104', 'Santa Cruz'),
('110405', '1104', 'Tibillo'),
('110501', '1105', 'Pisco'),
('110502', '1105', 'Huancano'),
('110503', '1105', 'Humay'),
('110504', '1105', 'Independencia'),
('110505', '1105', 'Paracas'),
('110506', '1105', 'San Andrés'),
('110507', '1105', 'San Clemente'),
('110508', '1105', 'Tupac Amaru Inca'),
('120101', '1201', 'Huancayo'),
('120104', '1201', 'Carhuacallanga'),
('120105', '1201', 'Chacapampa'),
('120106', '1201', 'Chicche'),
('120107', '1201', 'Chilca'),
('120108', '1201', 'Chongos Alto'),
('120111', '1201', 'Chupuro'),
('120112', '1201', 'Colca'),
('120113', '1201', 'Cullhuas'),
('120114', '1201', 'El Tambo'),
('120116', '1201', 'Huacrapuquio'),
('120117', '1201', 'Hualhuas'),
('120119', '1201', 'Huancan'),
('120120', '1201', 'Huasicancha'),
('120121', '1201', 'Huayucachi'),
('120122', '1201', 'Ingenio'),
('120124', '1201', 'Pariahuanca'),
('120125', '1201', 'Pilcomayo'),
('120126', '1201', 'Pucara'),
('120127', '1201', 'Quichuay'),
('120128', '1201', 'Quilcas'),
('120129', '1201', 'San Agustín'),
('120130', '1201', 'San Jerónimo de Tunan'),
('120132', '1201', 'Saño'),
('120133', '1201', 'Sapallanga'),
('120134', '1201', 'Sicaya'),
('120135', '1201', 'Santo Domingo de Acobamba'),
('120136', '1201', 'Viques'),
('120201', '1202', 'Concepción'),
('120202', '1202', 'Aco'),
('120203', '1202', 'Andamarca'),
('120204', '1202', 'Chambara'),
('120205', '1202', 'Cochas'),
('120206', '1202', 'Comas'),
('120207', '1202', 'Heroínas Toledo'),
('120208', '1202', 'Manzanares'),
('120209', '1202', 'Mariscal Castilla'),
('120210', '1202', 'Matahuasi'),
('120211', '1202', 'Mito'),
('120212', '1202', 'Nueve de Julio'),
('120213', '1202', 'Orcotuna'),
('120214', '1202', 'San José de Quero'),
('120215', '1202', 'Santa Rosa de Ocopa'),
('120301', '1203', 'Chanchamayo'),
('120302', '1203', 'Perene'),
('120303', '1203', 'Pichanaqui'),
('120304', '1203', 'San Luis de Shuaro'),
('120305', '1203', 'San Ramón'),
('120306', '1203', 'Vitoc'),
('120401', '1204', 'Jauja'),
('120402', '1204', 'Acolla'),
('120403', '1204', 'Apata'),
('120404', '1204', 'Ataura'),
('120405', '1204', 'Canchayllo'),
('120406', '1204', 'Curicaca'),
('120407', '1204', 'El Mantaro'),
('120408', '1204', 'Huamali'),
('120409', '1204', 'Huaripampa'),
('120410', '1204', 'Huertas'),
('120411', '1204', 'Janjaillo'),
('120412', '1204', 'Julcán'),
('120413', '1204', 'Leonor Ordóñez'),
('120414', '1204', 'Llocllapampa'),
('120415', '1204', 'Marco'),
('120416', '1204', 'Masma'),
('120417', '1204', 'Masma Chicche'),
('120418', '1204', 'Molinos'),
('120419', '1204', 'Monobamba'),
('120420', '1204', 'Muqui'),
('120421', '1204', 'Muquiyauyo'),
('120422', '1204', 'Paca'),
('120423', '1204', 'Paccha'),
('120424', '1204', 'Pancan'),
('120425', '1204', 'Parco'),
('120426', '1204', 'Pomacancha'),
('120427', '1204', 'Ricran'),
('120428', '1204', 'San Lorenzo'),
('120429', '1204', 'San Pedro de Chunan'),
('120430', '1204', 'Sausa'),
('120431', '1204', 'Sincos'),
('120432', '1204', 'Tunan Marca'),
('120433', '1204', 'Yauli'),
('120434', '1204', 'Yauyos'),
('120501', '1205', 'Junin'),
('120502', '1205', 'Carhuamayo'),
('120503', '1205', 'Ondores'),
('120504', '1205', 'Ulcumayo'),
('120601', '1206', 'Satipo'),
('120602', '1206', 'Coviriali'),
('120603', '1206', 'Llaylla'),
('120604', '1206', 'Mazamari'),
('120605', '1206', 'Pampa Hermosa'),
('120606', '1206', 'Pangoa'),
('120607', '1206', 'Río Negro'),
('120608', '1206', 'Río Tambo'),
('120609', '1206', 'Vizcatan del Ene'),
('120701', '1207', 'Tarma'),
('120702', '1207', 'Acobamba'),
('120703', '1207', 'Huaricolca'),
('120704', '1207', 'Huasahuasi'),
('120705', '1207', 'La Unión'),
('120706', '1207', 'Palca'),
('120707', '1207', 'Palcamayo'),
('120708', '1207', 'San Pedro de Cajas'),
('120709', '1207', 'Tapo'),
('120801', '1208', 'La Oroya'),
('120802', '1208', 'Chacapalpa'),
('120803', '1208', 'Huay-Huay'),
('120804', '1208', 'Marcapomacocha'),
('120805', '1208', 'Morococha'),
('120806', '1208', 'Paccha'),
('120807', '1208', 'Santa Bárbara de Carhuacayan'),
('120808', '1208', 'Santa Rosa de Sacco'),
('120809', '1208', 'Suitucancha'),
('120810', '1208', 'Yauli'),
('120901', '1209', 'Chupaca'),
('120902', '1209', 'Ahuac'),
('120903', '1209', 'Chongos Bajo'),
('120904', '1209', 'Huachac'),
('120905', '1209', 'Huamancaca Chico'),
('120906', '1209', 'San Juan de Iscos'),
('120907', '1209', 'San Juan de Jarpa'),
('120908', '1209', 'Tres de Diciembre'),
('120909', '1209', 'Yanacancha'),
('130101', '1301', 'Trujillo'),
('130102', '1301', 'El Porvenir'),
('130103', '1301', 'Florencia de Mora'),
('130104', '1301', 'Huanchaco'),
('130105', '1301', 'La Esperanza'),
('130106', '1301', 'Laredo'),
('130107', '1301', 'Moche'),
('130108', '1301', 'Poroto'),
('130109', '1301', 'Salaverry'),
('130110', '1301', 'Simbal'),
('130111', '1301', 'Victor Larco Herrera'),
('130201', '1302', 'Ascope'),
('130202', '1302', 'Chicama'),
('130203', '1302', 'Chocope'),
('130204', '1302', 'Magdalena de Cao'),
('130205', '1302', 'Paijan'),
('130206', '1302', 'Rázuri'),
('130207', '1302', 'Santiago de Cao'),
('130208', '1302', 'Casa Grande'),
('130301', '1303', 'Bolívar'),
('130302', '1303', 'Bambamarca'),
('130303', '1303', 'Condormarca'),
('130304', '1303', 'Longotea'),
('130305', '1303', 'Uchumarca'),
('130306', '1303', 'Ucuncha'),
('130401', '1304', 'Chepen'),
('130402', '1304', 'Pacanga'),
('130403', '1304', 'Pueblo Nuevo'),
('130501', '1305', 'Julcan'),
('130502', '1305', 'Calamarca'),
('130503', '1305', 'Carabamba'),
('130504', '1305', 'Huaso'),
('130601', '1306', 'Otuzco'),
('130602', '1306', 'Agallpampa'),
('130604', '1306', 'Charat'),
('130605', '1306', 'Huaranchal'),
('130606', '1306', 'La Cuesta'),
('130608', '1306', 'Mache'),
('130610', '1306', 'Paranday'),
('130611', '1306', 'Salpo'),
('130613', '1306', 'Sinsicap'),
('130614', '1306', 'Usquil'),
('130701', '1307', 'San Pedro de Lloc'),
('130702', '1307', 'Guadalupe'),
('130703', '1307', 'Jequetepeque'),
('130704', '1307', 'Pacasmayo'),
('130705', '1307', 'San José'),
('130801', '1308', 'Tayabamba'),
('130802', '1308', 'Buldibuyo'),
('130803', '1308', 'Chillia'),
('130804', '1308', 'Huancaspata'),
('130805', '1308', 'Huaylillas'),
('130806', '1308', 'Huayo'),
('130807', '1308', 'Ongon'),
('130808', '1308', 'Parcoy'),
('130809', '1308', 'Pataz'),
('130810', '1308', 'Pias'),
('130811', '1308', 'Santiago de Challas'),
('130812', '1308', 'Taurija'),
('130813', '1308', 'Urpay'),
('130901', '1309', 'Huamachuco'),
('130902', '1309', 'Chugay'),
('130903', '1309', 'Cochorco'),
('130904', '1309', 'Curgos'),
('130905', '1309', 'Marcabal'),
('130906', '1309', 'Sanagoran'),
('130907', '1309', 'Sarin'),
('130908', '1309', 'Sartimbamba'),
('131001', '1310', 'Santiago de Chuco'),
('131002', '1310', 'Angasmarca'),
('131003', '1310', 'Cachicadan'),
('131004', '1310', 'Mollebamba'),
('131005', '1310', 'Mollepata'),
('131006', '1310', 'Quiruvilca'),
('131007', '1310', 'Santa Cruz de Chuca'),
('131008', '1310', 'Sitabamba'),
('131101', '1311', 'Cascas'),
('131102', '1311', 'Lucma'),
('131103', '1311', 'Marmot'),
('131104', '1311', 'Sayapullo'),
('131201', '1312', 'Viru'),
('131202', '1312', 'Chao'),
('131203', '1312', 'Guadalupito'),
('140101', '1401', 'Chiclayo'),
('140102', '1401', 'Chongoyape'),
('140103', '1401', 'Eten'),
('140104', '1401', 'Eten Puerto'),
('140105', '1401', 'José Leonardo Ortiz'),
('140106', '1401', 'La Victoria'),
('140107', '1401', 'Lagunas'),
('140108', '1401', 'Monsefu'),
('140109', '1401', 'Nueva Arica'),
('140110', '1401', 'Oyotun'),
('140111', '1401', 'Picsi'),
('140112', '1401', 'Pimentel'),
('140113', '1401', 'Reque'),
('140114', '1401', 'Santa Rosa'),
('140115', '1401', 'Saña'),
('140116', '1401', 'Cayalti'),
('140117', '1401', 'Patapo'),
('140118', '1401', 'Pomalca'),
('140119', '1401', 'Pucala'),
('140120', '1401', 'Tuman'),
('140201', '1402', 'Ferreñafe'),
('140202', '1402', 'Cañaris'),
('140203', '1402', 'Incahuasi'),
('140204', '1402', 'Manuel Antonio Mesones Muro'),
('140205', '1402', 'Pitipo'),
('140206', '1402', 'Pueblo Nuevo'),
('140301', '1403', 'Lambayeque'),
('140302', '1403', 'Chochope'),
('140303', '1403', 'Illimo'),
('140304', '1403', 'Jayanca'),
('140305', '1403', 'Mochumi'),
('140306', '1403', 'Morrope'),
('140307', '1403', 'Motupe'),
('140308', '1403', 'Olmos'),
('140309', '1403', 'Pacora'),
('140310', '1403', 'Salas'),
('140311', '1403', 'San José'),
('140312', '1403', 'Tucume'),
('150101', '1501', 'Lima'),
('150102', '1501', 'Ancón'),
('150103', '1501', 'Ate'),
('150104', '1501', 'Barranco'),
('150105', '1501', 'Breña'),
('150106', '1501', 'Carabayllo'),
('150107', '1501', 'Chaclacayo'),
('150108', '1501', 'Chorrillos'),
('150109', '1501', 'Cieneguilla'),
('150110', '1501', 'Comas'),
('150111', '1501', 'El Agustino'),
('150112', '1501', 'Independencia'),
('150113', '1501', 'Jesús María'),
('150114', '1501', 'La Molina'),
('150115', '1501', 'La Victoria'),
('150116', '1501', 'Lince'),
('150117', '1501', 'Los Olivos'),
('150118', '1501', 'Lurigancho'),
('150119', '1501', 'Lurin'),
('150120', '1501', 'Magdalena del Mar'),
('150121', '1501', 'Pueblo Libre'),
('150122', '1501', 'Miraflores'),
('150123', '1501', 'Pachacamac'),
('150124', '1501', 'Pucusana'),
('150125', '1501', 'Puente Piedra'),
('150126', '1501', 'Punta Hermosa'),
('150127', '1501', 'Punta Negra'),
('150128', '1501', 'Rímac'),
('150129', '1501', 'San Bartolo'),
('150130', '1501', 'San Borja'),
('150131', '1501', 'San Isidro'),
('150132', '1501', 'San Juan de Lurigancho'),
('150133', '1501', 'San Juan de Miraflores'),
('150134', '1501', 'San Luis'),
('150135', '1501', 'San Martín de Porres'),
('150136', '1501', 'San Miguel'),
('150137', '1501', 'Santa Anita'),
('150138', '1501', 'Santa María del Mar'),
('150139', '1501', 'Santa Rosa'),
('150140', '1501', 'Santiago de Surco'),
('150141', '1501', 'Surquillo'),
('150142', '1501', 'Villa El Salvador'),
('150143', '1501', 'Villa María del Triunfo'),
('150201', '1502', 'Barranca'),
('150202', '1502', 'Paramonga'),
('150203', '1502', 'Pativilca'),
('150204', '1502', 'Supe'),
('150205', '1502', 'Supe Puerto'),
('150301', '1503', 'Cajatambo'),
('150302', '1503', 'Copa'),
('150303', '1503', 'Gorgor'),
('150304', '1503', 'Huancapon'),
('150305', '1503', 'Manas'),
('150401', '1504', 'Canta'),
('150402', '1504', 'Arahuay'),
('150403', '1504', 'Huamantanga'),
('150404', '1504', 'Huaros'),
('150405', '1504', 'Lachaqui'),
('150406', '1504', 'San Buenaventura'),
('150407', '1504', 'Santa Rosa de Quives'),
('150501', '1505', 'San Vicente de Cañete'),
('150502', '1505', 'Asia'),
('150503', '1505', 'Calango'),
('150504', '1505', 'Cerro Azul'),
('150505', '1505', 'Chilca'),
('150506', '1505', 'Coayllo'),
('150507', '1505', 'Imperial'),
('150508', '1505', 'Lunahuana'),
('150509', '1505', 'Mala'),
('150510', '1505', 'Nuevo Imperial'),
('150511', '1505', 'Pacaran'),
('150512', '1505', 'Quilmana'),
('150513', '1505', 'San Antonio'),
('150514', '1505', 'San Luis'),
('150515', '1505', 'Santa Cruz de Flores'),
('150516', '1505', 'Zúñiga'),
('150601', '1506', 'Huaral'),
('150602', '1506', 'Atavillos Alto'),
('150603', '1506', 'Atavillos Bajo'),
('150604', '1506', 'Aucallama'),
('150605', '1506', 'Chancay'),
('150606', '1506', 'Ihuari'),
('150607', '1506', 'Lampian'),
('150608', '1506', 'Pacaraos'),
('150609', '1506', 'San Miguel de Acos'),
('150610', '1506', 'Santa Cruz de Andamarca'),
('150611', '1506', 'Sumbilca'),
('150612', '1506', 'Veintisiete de Noviembre'),
('150701', '1507', 'Matucana'),
('150702', '1507', 'Antioquia'),
('150703', '1507', 'Callahuanca'),
('150704', '1507', 'Carampoma'),
('150705', '1507', 'Chicla'),
('150706', '1507', 'Cuenca'),
('150707', '1507', 'Huachupampa'),
('150708', '1507', 'Huanza'),
('150709', '1507', 'Huarochiri'),
('150710', '1507', 'Lahuaytambo'),
('150711', '1507', 'Langa'),
('150712', '1507', 'Laraos'),
('150713', '1507', 'Mariatana'),
('150714', '1507', 'Ricardo Palma'),
('150715', '1507', 'San Andrés de Tupicocha'),
('150716', '1507', 'San Antonio'),
('150717', '1507', 'San Bartolomé'),
('150718', '1507', 'San Damian'),
('150719', '1507', 'San Juan de Iris'),
('150720', '1507', 'San Juan de Tantaranche'),
('150721', '1507', 'San Lorenzo de Quinti'),
('150722', '1507', 'San Mateo'),
('150723', '1507', 'San Mateo de Otao'),
('150724', '1507', 'San Pedro de Casta'),
('150725', '1507', 'San Pedro de Huancayre'),
('150726', '1507', 'Sangallaya'),
('150727', '1507', 'Santa Cruz de Cocachacra'),
('150728', '1507', 'Santa Eulalia'),
('150729', '1507', 'Santiago de Anchucaya'),
('150730', '1507', 'Santiago de Tuna'),
('150731', '1507', 'Santo Domingo de Los Olleros'),
('150732', '1507', 'Surco'),
('150801', '1508', 'Huacho'),
('150802', '1508', 'Ambar'),
('150803', '1508', 'Caleta de Carquin'),
('150804', '1508', 'Checras'),
('150805', '1508', 'Hualmay'),
('150806', '1508', 'Huaura'),
('150807', '1508', 'Leoncio Prado'),
('150808', '1508', 'Paccho'),
('150809', '1508', 'Santa Leonor'),
('150810', '1508', 'Santa María'),
('150811', '1508', 'Sayan'),
('150812', '1508', 'Vegueta'),
('150901', '1509', 'Oyon'),
('150902', '1509', 'Andajes'),
('150903', '1509', 'Caujul'),
('150904', '1509', 'Cochamarca'),
('150905', '1509', 'Navan'),
('150906', '1509', 'Pachangara'),
('151001', '1510', 'Yauyos'),
('151002', '1510', 'Alis'),
('151003', '1510', 'Allauca'),
('151004', '1510', 'Ayaviri'),
('151005', '1510', 'Azángaro'),
('151006', '1510', 'Cacra'),
('151007', '1510', 'Carania'),
('151008', '1510', 'Catahuasi'),
('151009', '1510', 'Chocos'),
('151010', '1510', 'Cochas'),
('151011', '1510', 'Colonia'),
('151012', '1510', 'Hongos'),
('151013', '1510', 'Huampara'),
('151014', '1510', 'Huancaya'),
('151015', '1510', 'Huangascar'),
('151016', '1510', 'Huantan'),
('151017', '1510', 'Huañec'),
('151018', '1510', 'Laraos'),
('151019', '1510', 'Lincha'),
('151020', '1510', 'Madean'),
('151021', '1510', 'Miraflores'),
('151022', '1510', 'Omas'),
('151023', '1510', 'Putinza'),
('151024', '1510', 'Quinches'),
('151025', '1510', 'Quinocay'),
('151026', '1510', 'San Joaquín'),
('151027', '1510', 'San Pedro de Pilas'),
('151028', '1510', 'Tanta'),
('151029', '1510', 'Tauripampa'),
('151030', '1510', 'Tomas'),
('151031', '1510', 'Tupe'),
('151032', '1510', 'Viñac'),
('151033', '1510', 'Vitis'),
('160101', '1601', 'Iquitos'),
('160102', '1601', 'Alto Nanay'),
('160103', '1601', 'Fernando Lores'),
('160104', '1601', 'Indiana'),
('160105', '1601', 'Las Amazonas'),
('160106', '1601', 'Mazan'),
('160107', '1601', 'Napo'),
('160108', '1601', 'Punchana'),
('160110', '1601', 'Torres Causana'),
('160112', '1601', 'Belén'),
('160113', '1601', 'San Juan Bautista'),
('160201', '1602', 'Yurimaguas'),
('160202', '1602', 'Balsapuerto'),
('160205', '1602', 'Jeberos'),
('160206', '1602', 'Lagunas'),
('160210', '1602', 'Santa Cruz'),
('160211', '1602', 'Teniente Cesar López Rojas'),
('160301', '1603', 'Nauta'),
('160302', '1603', 'Parinari'),
('160303', '1603', 'Tigre'),
('160304', '1603', 'Trompeteros'),
('160305', '1603', 'Urarinas'),
('160401', '1604', 'Ramón Castilla'),
('160402', '1604', 'Pebas'),
('160403', '1604', 'Yavari'),
('160404', '1604', 'San Pablo'),
('160501', '1605', 'Requena'),
('160502', '1605', 'Alto Tapiche'),
('160503', '1605', 'Capelo'),
('160504', '1605', 'Emilio San Martín'),
('160505', '1605', 'Maquia'),
('160506', '1605', 'Puinahua'),
('160507', '1605', 'Saquena'),
('160508', '1605', 'Soplin'),
('160509', '1605', 'Tapiche'),
('160510', '1605', 'Jenaro Herrera'),
('160511', '1605', 'Yaquerana'),
('160601', '1606', 'Contamana'),
('160602', '1606', 'Inahuaya'),
('160603', '1606', 'Padre Márquez'),
('160604', '1606', 'Pampa Hermosa'),
('160605', '1606', 'Sarayacu'),
('160606', '1606', 'Vargas Guerra'),
('160701', '1607', 'Barranca'),
('160702', '1607', 'Cahuapanas'),
('160703', '1607', 'Manseriche'),
('160704', '1607', 'Morona'),
('160705', '1607', 'Pastaza'),
('160706', '1607', 'Andoas'),
('160801', '1608', 'Putumayo'),
('160802', '1608', 'Rosa Panduro'),
('160803', '1608', 'Teniente Manuel Clavero'),
('160804', '1608', 'Yaguas'),
('170101', '1701', 'Tambopata'),
('170102', '1701', 'Inambari'),
('170103', '1701', 'Las Piedras'),
('170104', '1701', 'Laberinto'),
('170201', '1702', 'Manu'),
('170202', '1702', 'Fitzcarrald'),
('170203', '1702', 'Madre de Dios'),
('170204', '1702', 'Huepetuhe'),
('170301', '1703', 'Iñapari'),
('170302', '1703', 'Iberia'),
('170303', '1703', 'Tahuamanu'),
('180101', '1801', 'Moquegua'),
('180102', '1801', 'Carumas'),
('180103', '1801', 'Cuchumbaya'),
('180104', '1801', 'Samegua'),
('180105', '1801', 'San Cristóbal'),
('180106', '1801', 'Torata'),
('180201', '1802', 'Omate'),
('180202', '1802', 'Chojata'),
('180203', '1802', 'Coalaque'),
('180204', '1802', 'Ichuña'),
('180205', '1802', 'La Capilla'),
('180206', '1802', 'Lloque'),
('180207', '1802', 'Matalaque'),
('180208', '1802', 'Puquina'),
('180209', '1802', 'Quinistaquillas'),
('180210', '1802', 'Ubinas'),
('180211', '1802', 'Yunga'),
('180301', '1803', 'Ilo'),
('180302', '1803', 'El Algarrobal'),
('180303', '1803', 'Pacocha'),
('190101', '1901', 'Chaupimarca'),
('190102', '1901', 'Huachon'),
('190103', '1901', 'Huariaca'),
('190104', '1901', 'Huayllay'),
('190105', '1901', 'Ninacaca'),
('190106', '1901', 'Pallanchacra'),
('190107', '1901', 'Paucartambo'),
('190108', '1901', 'San Francisco de Asís de Yarusyacan'),
('190109', '1901', 'Simon Bolívar'),
('190110', '1901', 'Ticlacayan'),
('190111', '1901', 'Tinyahuarco'),
('190112', '1901', 'Vicco'),
('190113', '1901', 'Yanacancha'),
('190201', '1902', 'Yanahuanca'),
('190202', '1902', 'Chacayan'),
('190203', '1902', 'Goyllarisquizga'),
('190204', '1902', 'Paucar'),
('190205', '1902', 'San Pedro de Pillao'),
('190206', '1902', 'Santa Ana de Tusi'),
('190207', '1902', 'Tapuc'),
('190208', '1902', 'Vilcabamba'),
('190301', '1903', 'Oxapampa'),
('190302', '1903', 'Chontabamba'),
('190303', '1903', 'Huancabamba'),
('190304', '1903', 'Palcazu'),
('190305', '1903', 'Pozuzo'),
('190306', '1903', 'Puerto Bermúdez'),
('190307', '1903', 'Villa Rica'),
('190308', '1903', 'Constitución'),
('200101', '2001', 'Piura'),
('200104', '2001', 'Castilla'),
('200105', '2001', 'Catacaos'),
('200107', '2001', 'Cura Mori'),
('200108', '2001', 'El Tallan'),
('200109', '2001', 'La Arena'),
('200110', '2001', 'La Unión'),
('200111', '2001', 'Las Lomas'),
('200114', '2001', 'Tambo Grande'),
('200115', '2001', 'Veintiseis de Octubre'),
('200201', '2002', 'Ayabaca'),
('200202', '2002', 'Frias'),
('200203', '2002', 'Jilili'),
('200204', '2002', 'Lagunas'),
('200205', '2002', 'Montero'),
('200206', '2002', 'Pacaipampa'),
('200207', '2002', 'Paimas'),
('200208', '2002', 'Sapillica'),
('200209', '2002', 'Sicchez'),
('200210', '2002', 'Suyo'),
('200301', '2003', 'Huancabamba'),
('200302', '2003', 'Canchaque'),
('200303', '2003', 'El Carmen de la Frontera'),
('200304', '2003', 'Huarmaca'),
('200305', '2003', 'Lalaquiz'),
('200306', '2003', 'San Miguel de El Faique'),
('200307', '2003', 'Sondor'),
('200308', '2003', 'Sondorillo'),
('200401', '2004', 'Chulucanas'),
('200402', '2004', 'Buenos Aires'),
('200403', '2004', 'Chalaco');
INSERT INTO `districts` (`id`, `province_id`, `name`) VALUES
('200404', '2004', 'La Matanza'),
('200405', '2004', 'Morropon'),
('200406', '2004', 'Salitral'),
('200407', '2004', 'San Juan de Bigote'),
('200408', '2004', 'Santa Catalina de Mossa'),
('200409', '2004', 'Santo Domingo'),
('200410', '2004', 'Yamango'),
('200501', '2005', 'Paita'),
('200502', '2005', 'Amotape'),
('200503', '2005', 'Arenal'),
('200504', '2005', 'Colan'),
('200505', '2005', 'La Huaca'),
('200506', '2005', 'Tamarindo'),
('200507', '2005', 'Vichayal'),
('200601', '2006', 'Sullana'),
('200602', '2006', 'Bellavista'),
('200603', '2006', 'Ignacio Escudero'),
('200604', '2006', 'Lancones'),
('200605', '2006', 'Marcavelica'),
('200606', '2006', 'Miguel Checa'),
('200607', '2006', 'Querecotillo'),
('200608', '2006', 'Salitral'),
('200701', '2007', 'Pariñas'),
('200702', '2007', 'El Alto'),
('200703', '2007', 'La Brea'),
('200704', '2007', 'Lobitos'),
('200705', '2007', 'Los Organos'),
('200706', '2007', 'Mancora'),
('200801', '2008', 'Sechura'),
('200802', '2008', 'Bellavista de la Unión'),
('200803', '2008', 'Bernal'),
('200804', '2008', 'Cristo Nos Valga'),
('200805', '2008', 'Vice'),
('200806', '2008', 'Rinconada Llicuar'),
('210101', '2101', 'Puno'),
('210102', '2101', 'Acora'),
('210103', '2101', 'Amantani'),
('210104', '2101', 'Atuncolla'),
('210105', '2101', 'Capachica'),
('210106', '2101', 'Chucuito'),
('210107', '2101', 'Coata'),
('210108', '2101', 'Huata'),
('210109', '2101', 'Mañazo'),
('210110', '2101', 'Paucarcolla'),
('210111', '2101', 'Pichacani'),
('210112', '2101', 'Plateria'),
('210113', '2101', 'San Antonio'),
('210114', '2101', 'Tiquillaca'),
('210115', '2101', 'Vilque'),
('210201', '2102', 'Azángaro'),
('210202', '2102', 'Achaya'),
('210203', '2102', 'Arapa'),
('210204', '2102', 'Asillo'),
('210205', '2102', 'Caminaca'),
('210206', '2102', 'Chupa'),
('210207', '2102', 'José Domingo Choquehuanca'),
('210208', '2102', 'Muñani'),
('210209', '2102', 'Potoni'),
('210210', '2102', 'Saman'),
('210211', '2102', 'San Anton'),
('210212', '2102', 'San José'),
('210213', '2102', 'San Juan de Salinas'),
('210214', '2102', 'Santiago de Pupuja'),
('210215', '2102', 'Tirapata'),
('210301', '2103', 'Macusani'),
('210302', '2103', 'Ajoyani'),
('210303', '2103', 'Ayapata'),
('210304', '2103', 'Coasa'),
('210305', '2103', 'Corani'),
('210306', '2103', 'Crucero'),
('210307', '2103', 'Ituata'),
('210308', '2103', 'Ollachea'),
('210309', '2103', 'San Gaban'),
('210310', '2103', 'Usicayos'),
('210401', '2104', 'Juli'),
('210402', '2104', 'Desaguadero'),
('210403', '2104', 'Huacullani'),
('210404', '2104', 'Kelluyo'),
('210405', '2104', 'Pisacoma'),
('210406', '2104', 'Pomata'),
('210407', '2104', 'Zepita'),
('210501', '2105', 'Ilave'),
('210502', '2105', 'Capazo'),
('210503', '2105', 'Pilcuyo'),
('210504', '2105', 'Santa Rosa'),
('210505', '2105', 'Conduriri'),
('210601', '2106', 'Huancane'),
('210602', '2106', 'Cojata'),
('210603', '2106', 'Huatasani'),
('210604', '2106', 'Inchupalla'),
('210605', '2106', 'Pusi'),
('210606', '2106', 'Rosaspata'),
('210607', '2106', 'Taraco'),
('210608', '2106', 'Vilque Chico'),
('210701', '2107', 'Lampa'),
('210702', '2107', 'Cabanilla'),
('210703', '2107', 'Calapuja'),
('210704', '2107', 'Nicasio'),
('210705', '2107', 'Ocuviri'),
('210706', '2107', 'Palca'),
('210707', '2107', 'Paratia'),
('210708', '2107', 'Pucara'),
('210709', '2107', 'Santa Lucia'),
('210710', '2107', 'Vilavila'),
('210801', '2108', 'Ayaviri'),
('210802', '2108', 'Antauta'),
('210803', '2108', 'Cupi'),
('210804', '2108', 'Llalli'),
('210805', '2108', 'Macari'),
('210806', '2108', 'Nuñoa'),
('210807', '2108', 'Orurillo'),
('210808', '2108', 'Santa Rosa'),
('210809', '2108', 'Umachiri'),
('210901', '2109', 'Moho'),
('210902', '2109', 'Conima'),
('210903', '2109', 'Huayrapata'),
('210904', '2109', 'Tilali'),
('211001', '2110', 'Putina'),
('211002', '2110', 'Ananea'),
('211003', '2110', 'Pedro Vilca Apaza'),
('211004', '2110', 'Quilcapuncu'),
('211005', '2110', 'Sina'),
('211101', '2111', 'Juliaca'),
('211102', '2111', 'Cabana'),
('211103', '2111', 'Cabanillas'),
('211104', '2111', 'Caracoto'),
('211105', '2111', 'San Miguel'),
('211201', '2112', 'Sandia'),
('211202', '2112', 'Cuyocuyo'),
('211203', '2112', 'Limbani'),
('211204', '2112', 'Patambuco'),
('211205', '2112', 'Phara'),
('211206', '2112', 'Quiaca'),
('211207', '2112', 'San Juan del Oro'),
('211208', '2112', 'Yanahuaya'),
('211209', '2112', 'Alto Inambari'),
('211210', '2112', 'San Pedro de Putina Punco'),
('211301', '2113', 'Yunguyo'),
('211302', '2113', 'Anapia'),
('211303', '2113', 'Copani'),
('211304', '2113', 'Cuturapi'),
('211305', '2113', 'Ollaraya'),
('211306', '2113', 'Tinicachi'),
('211307', '2113', 'Unicachi'),
('220101', '2201', 'Moyobamba'),
('220102', '2201', 'Calzada'),
('220103', '2201', 'Habana'),
('220104', '2201', 'Jepelacio'),
('220105', '2201', 'Soritor'),
('220106', '2201', 'Yantalo'),
('220201', '2202', 'Bellavista'),
('220202', '2202', 'Alto Biavo'),
('220203', '2202', 'Bajo Biavo'),
('220204', '2202', 'Huallaga'),
('220205', '2202', 'San Pablo'),
('220206', '2202', 'San Rafael'),
('220301', '2203', 'San José de Sisa'),
('220302', '2203', 'Agua Blanca'),
('220303', '2203', 'San Martín'),
('220304', '2203', 'Santa Rosa'),
('220305', '2203', 'Shatoja'),
('220401', '2204', 'Saposoa'),
('220402', '2204', 'Alto Saposoa'),
('220403', '2204', 'El Eslabón'),
('220404', '2204', 'Piscoyacu'),
('220405', '2204', 'Sacanche'),
('220406', '2204', 'Tingo de Saposoa'),
('220501', '2205', 'Lamas'),
('220502', '2205', 'Alonso de Alvarado'),
('220503', '2205', 'Barranquita'),
('220504', '2205', 'Caynarachi'),
('220505', '2205', 'Cuñumbuqui'),
('220506', '2205', 'Pinto Recodo'),
('220507', '2205', 'Rumisapa'),
('220508', '2205', 'San Roque de Cumbaza'),
('220509', '2205', 'Shanao'),
('220510', '2205', 'Tabalosos'),
('220511', '2205', 'Zapatero'),
('220601', '2206', 'Juanjuí'),
('220602', '2206', 'Campanilla'),
('220603', '2206', 'Huicungo'),
('220604', '2206', 'Pachiza'),
('220605', '2206', 'Pajarillo'),
('220701', '2207', 'Picota'),
('220702', '2207', 'Buenos Aires'),
('220703', '2207', 'Caspisapa'),
('220704', '2207', 'Pilluana'),
('220705', '2207', 'Pucacaca'),
('220706', '2207', 'San Cristóbal'),
('220707', '2207', 'San Hilarión'),
('220708', '2207', 'Shamboyacu'),
('220709', '2207', 'Tingo de Ponasa'),
('220710', '2207', 'Tres Unidos'),
('220801', '2208', 'Rioja'),
('220802', '2208', 'Awajun'),
('220803', '2208', 'Elías Soplin Vargas'),
('220804', '2208', 'Nueva Cajamarca'),
('220805', '2208', 'Pardo Miguel'),
('220806', '2208', 'Posic'),
('220807', '2208', 'San Fernando'),
('220808', '2208', 'Yorongos'),
('220809', '2208', 'Yuracyacu'),
('220901', '2209', 'Tarapoto'),
('220902', '2209', 'Alberto Leveau'),
('220903', '2209', 'Cacatachi'),
('220904', '2209', 'Chazuta'),
('220905', '2209', 'Chipurana'),
('220906', '2209', 'El Porvenir'),
('220907', '2209', 'Huimbayoc'),
('220908', '2209', 'Juan Guerra'),
('220909', '2209', 'La Banda de Shilcayo'),
('220910', '2209', 'Morales'),
('220911', '2209', 'Papaplaya'),
('220912', '2209', 'San Antonio'),
('220913', '2209', 'Sauce'),
('220914', '2209', 'Shapaja'),
('221001', '2210', 'Tocache'),
('221002', '2210', 'Nuevo Progreso'),
('221003', '2210', 'Polvora'),
('221004', '2210', 'Shunte'),
('221005', '2210', 'Uchiza'),
('230101', '2301', 'Tacna'),
('230102', '2301', 'Alto de la Alianza'),
('230103', '2301', 'Calana'),
('230104', '2301', 'Ciudad Nueva'),
('230105', '2301', 'Inclan'),
('230106', '2301', 'Pachia'),
('230107', '2301', 'Palca'),
('230108', '2301', 'Pocollay'),
('230109', '2301', 'Sama'),
('230110', '2301', 'Coronel Gregorio Albarracín Lanchipa'),
('230111', '2301', 'La Yarada los Palos'),
('230201', '2302', 'Candarave'),
('230202', '2302', 'Cairani'),
('230203', '2302', 'Camilaca'),
('230204', '2302', 'Curibaya'),
('230205', '2302', 'Huanuara'),
('230206', '2302', 'Quilahuani'),
('230301', '2303', 'Locumba'),
('230302', '2303', 'Ilabaya'),
('230303', '2303', 'Ite'),
('230401', '2304', 'Tarata'),
('230402', '2304', 'Héroes Albarracín'),
('230403', '2304', 'Estique'),
('230404', '2304', 'Estique-Pampa'),
('230405', '2304', 'Sitajara'),
('230406', '2304', 'Susapaya'),
('230407', '2304', 'Tarucachi'),
('230408', '2304', 'Ticaco'),
('240101', '2401', 'Tumbes'),
('240102', '2401', 'Corrales'),
('240103', '2401', 'La Cruz'),
('240104', '2401', 'Pampas de Hospital'),
('240105', '2401', 'San Jacinto'),
('240106', '2401', 'San Juan de la Virgen'),
('240201', '2402', 'Zorritos'),
('240202', '2402', 'Casitas'),
('240203', '2402', 'Canoas de Punta Sal'),
('240301', '2403', 'Zarumilla'),
('240302', '2403', 'Aguas Verdes'),
('240303', '2403', 'Matapalo'),
('240304', '2403', 'Papayal'),
('250101', '2501', 'Calleria'),
('250102', '2501', 'Campoverde'),
('250103', '2501', 'Iparia'),
('250104', '2501', 'Masisea'),
('250105', '2501', 'Yarinacocha'),
('250106', '2501', 'Nueva Requena'),
('250107', '2501', 'Manantay'),
('250201', '2502', 'Raymondi'),
('250202', '2502', 'Sepahua'),
('250203', '2502', 'Tahuania'),
('250204', '2502', 'Yurua'),
('250301', '2503', 'Padre Abad'),
('250302', '2503', 'Irazola'),
('250303', '2503', 'Curimana'),
('250304', '2503', 'Neshuya'),
('250305', '2503', 'Alexander Von Humboldt'),
('250401', '2504', 'Purus');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_12_12_023738_create_profiles_table', 1),
(10, '2020_12_12_024200_create_resourcegables_table', 1),
(11, '2020_12_12_024352_create_sessions_table', 1),
(12, '2020_12_12_030115_create_account_banks_table', 1),
(13, '2020_12_12_030412_create_banks_table', 1),
(14, '2020_12_12_030817_create_activities_table', 1),
(15, '2020_12_12_031339_create_postulations_table', 1),
(16, '2020_12_12_031547_create_puntation_comments_table', 1),
(17, '2020_12_12_032106_create_account_types_table', 1),
(18, '2020_12_12_033356_create_products_table', 1),
(19, '2020_12_12_033632_create_rewards_table', 1),
(20, '2020_12_12_033741_create_type_rewards_table', 1),
(21, '2020_12_12_041422_create_type_resources_table', 1),
(22, '2021_01_02_105128_create_districts_table', 1),
(23, '2021_01_02_105141_create_provinces_table', 1),
(24, '2021_01_02_105159_create_departments_table', 1),
(25, '2021_01_02_111333_create_tags_table', 1),
(26, '2021_12_12_030320_create_add_relation_users_id_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0c4caab21f654ebdd1b712b993cc817df450a914e04f9ed06b41b7c0a0da40cbab061069399fc403', 1, 1, 'web', '[]', 0, '2021-01-25 14:59:31', '2021-01-25 14:59:31', '2022-01-25 09:59:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'c4RmQ4f65rX0bbEsnvrXYtTv56oTfyk8YnFJL95c', NULL, 'https://www.goodjoblatam.com', 1, 0, 0, '2021-01-25 14:52:40', '2021-01-25 14:52:40'),
(2, NULL, 'Laravel Password Grant Client', 'FgV7mmmxs4gfQdJSxzUbOHvjei6srn1oHU4VZfBQ', 'users', 'https://www.goodjoblatam.com', 0, 1, 0, '2021-01-25 14:52:40', '2021-01-25 14:52:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-01-25 14:52:40', '2021-01-25 14:52:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulations`
--

CREATE TABLE `postulations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `activity_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `postulations`
--

INSERT INTO `postulations` (`id`, `activity_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 4, 1, 2, '2021-01-18 20:38:36', '2021-01-18 20:38:36'),
(3, 3, 1, 2, '2021-01-18 20:53:45', '2021-01-18 20:53:45'),
(4, 2, 1, 2, '2021-01-18 20:53:50', '2021-01-18 20:53:50'),
(5, 1, 1, 2, '2021-01-18 20:54:00', '2021-01-18 20:54:00'),
(9, 12, 7, 2, '2021-01-28 17:37:44', '2021-01-28 17:37:44'),
(10, 12, 9, 2, '2021-01-31 04:14:54', '2021-01-31 04:14:54'),
(11, 11, 10, 2, '2021-01-31 04:45:18', '2021-01-31 04:45:18'),
(12, 9, 13, 2, '2021-01-31 06:32:02', '2021-01-31 06:32:02'),
(13, 12, 16, 2, '2021-01-31 06:53:12', '2021-01-31 06:53:12'),
(14, 12, 18, 2, '2021-01-31 15:04:16', '2021-01-31 15:04:16'),
(15, 12, 24, 2, '2021-01-31 17:31:07', '2021-01-31 17:31:07'),
(17, 16, 39, 0, '2021-02-28 19:37:47', '2021-02-28 19:38:38'),
(18, 16, 40, 1, '2021-03-01 15:26:04', '2021-03-01 23:35:49'),
(19, 7, 31, 0, '2021-03-01 23:24:41', '2021-03-01 23:26:18'),
(20, 9, 31, 2, '2021-03-01 23:26:49', '2021-03-01 23:26:49'),
(21, 11, 31, 2, '2021-03-01 23:28:52', '2021-03-01 23:28:52'),
(22, 16, 31, 0, '2021-03-01 23:32:09', '2021-03-01 23:32:18'),
(23, 11, 44, 2, '2021-03-02 02:02:55', '2021-03-02 02:02:55'),
(24, 7, 44, 2, '2021-03-02 02:03:24', '2021-03-02 02:03:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bussiness_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trade_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gener` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ruc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_document_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ubigeo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_opt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `name`, `bussiness_name`, `trade_name`, `birth_date`, `gener`, `document`, `ruc`, `type_document_id`, `phone`, `address`, `address_reference`, `ubigeo`, `country`, `email_opt`, `facebook`, `twitter`, `github`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 1, 'usuario goodjob', '', '', '1999-01-03', '1', '63585252', '10635710999', '1', '+51945945945', 'dawdadawdaswdas', 'dasdfafdsfsfefsefsfsdef', '150104', 'PE', 'dawd@adad.com', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.github.com', 'https://www.linkedin.com', '2021-01-15 21:38:25', '2021-02-07 05:08:48'),
(2, 2, '', 'Goodjob', 'goodjob S.A.C', NULL, NULL, '', '20999999999', '2', NULL, NULL, NULL, NULL, 'PE', NULL, NULL, NULL, NULL, NULL, '2021-01-15 21:38:25', '2021-01-18 15:42:49'),
(3, 3, 'max', NULL, NULL, NULL, NULL, '63598477', '', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-28 02:33:13', '2021-01-28 02:33:13'),
(4, 4, 'postman edite', NULL, NULL, '1999-01-03', '1', '35710996', '10635985955', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-28 02:33:48', '2021-02-28 18:11:07'),
(5, 5, 'test test', NULL, NULL, NULL, NULL, '63635241', '', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-28 02:39:08', '2021-01-28 02:39:08'),
(6, 6, 'max', NULL, NULL, NULL, NULL, '48784578', '', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-28 02:43:41', '2021-01-28 02:43:41'),
(7, 7, 'andres ramos', NULL, NULL, NULL, NULL, '45612378', '', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-28 17:36:38', '2021-01-28 17:36:38'),
(12, 12, 'jose quesquen', NULL, NULL, NULL, NULL, '48751265', '', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-31 06:11:33', '2021-01-31 06:11:33'),
(20, 20, NULL, 'telesur sac', 'instituto superior', NULL, NULL, '', '20789456321', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-31 16:44:25', '2021-01-31 16:44:25'),
(21, 21, NULL, 'Testempresq', 'Empeesi', NULL, NULL, '', '20123412342', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-31 16:49:57', '2021-01-31 16:49:57'),
(22, 22, 'alfredo quesquen', NULL, NULL, NULL, NULL, '02456878', '', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-31 16:59:38', '2021-01-31 16:59:38'),
(23, 23, 'Alex Quesquen', NULL, NULL, NULL, NULL, '17809546', '', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-31 17:11:45', '2021-01-31 17:11:45'),
(24, 24, 'Alex Quesquen Farroñay', NULL, NULL, NULL, NULL, '78120203', '', '1', '987456960', 'av.universitaria', 'al costado de la canchita de futbot', '150117', NULL, 'a21@gmail.com', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', '2021-01-31 17:20:52', '2021-01-31 17:28:29'),
(25, 25, NULL, 'Cablemagico SAC', 'Mundo magico', NULL, NULL, '', '20789578104', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-31 17:35:14', '2021-01-31 17:35:14'),
(26, 26, 'juan perez', NULL, NULL, NULL, NULL, '01245632', '', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-02 02:27:44', '2021-02-02 02:27:44'),
(27, 27, 'jesus paz', NULL, NULL, NULL, NULL, '78102645', '', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-02 03:43:10', '2021-02-02 03:43:10'),
(28, 28, NULL, 'company s.a.c.', 'company company', NULL, NULL, '', '20999993399', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-02 03:52:14', '2021-02-02 03:52:14'),
(29, 29, 'xxx basyqe', NULL, NULL, NULL, NULL, '88888888', '', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-09 03:41:36', '2021-02-09 03:41:36'),
(30, 30, 'adm@developer', NULL, NULL, NULL, NULL, '63571091', '', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-11 01:37:00', '2021-02-11 01:37:00'),
(31, 31, NULL, 'awdadadw', 'fsdefsefsf', NULL, NULL, '', '20123226451', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-11 01:41:38', '2021-02-11 01:41:38'),
(32, 32, NULL, 'companyawdad', 'fedrfef', NULL, NULL, '', '20123456123', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-11 01:48:46', '2021-02-11 01:48:46'),
(33, 33, 'test postmsna22', NULL, NULL, NULL, NULL, '68958599', '', '1', NULL, NULL, NULL, NULL, 'PE', NULL, NULL, NULL, NULL, NULL, '2021-02-15 23:39:41', '2021-02-15 23:39:41'),
(34, 34, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-28 17:47:51', '2021-02-28 17:47:51'),
(35, 36, 'test postmna22', NULL, NULL, NULL, NULL, '63571099', '', '1', NULL, NULL, NULL, NULL, 'PE', NULL, NULL, NULL, NULL, NULL, '2021-02-28 18:12:10', '2021-02-28 18:12:10'),
(36, 37, 'test postmna22', NULL, NULL, NULL, NULL, '63271091', '', '1', NULL, NULL, NULL, NULL, 'PE', NULL, NULL, NULL, NULL, NULL, '2021-02-28 18:12:50', '2021-02-28 18:12:50'),
(37, 38, 'awdadawd', NULL, NULL, NULL, NULL, '11884488', '', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-28 18:54:09', '2021-02-28 18:54:09'),
(38, 39, 'anthony', NULL, NULL, NULL, NULL, '11454545', '', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-28 19:14:24', '2021-02-28 19:14:24'),
(39, 40, 'awda@adsad.f', NULL, NULL, NULL, NULL, '11998899', '', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-01 15:25:19', '2021-03-01 15:25:19'),
(40, 41, 'nameasd', NULL, NULL, NULL, NULL, '55998866', '', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-01 15:29:32', '2021-03-01 15:29:32'),
(41, 42, 'test1', NULL, NULL, NULL, NULL, '63598474', '', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-02 01:57:06', '2021-03-02 01:57:06'),
(42, 43, 'test postmna22', NULL, NULL, NULL, NULL, '65498484', '', '1', NULL, NULL, NULL, NULL, 'PE', NULL, NULL, NULL, NULL, NULL, '2021-03-02 01:58:29', '2021-03-02 01:58:29'),
(43, 44, 'apimailsdfsefsdf', NULL, NULL, NULL, NULL, '45454545', '', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-02 02:02:37', '2021-03-02 02:02:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provinces`
--

CREATE TABLE `provinces` (
  `id` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `provinces`
--

INSERT INTO `provinces` (`id`, `department_id`, `name`) VALUES
('0101', '01', 'Chachapoyas'),
('0102', '01', 'Bagua'),
('0103', '01', 'Bongará'),
('0104', '01', 'Condorcanqui'),
('0105', '01', 'Luya'),
('0106', '01', 'Rodríguez de Mendoza'),
('0107', '01', 'Utcubamba'),
('0201', '02', 'Huaraz'),
('0202', '02', 'Aija'),
('0203', '02', 'Antonio Raymondi'),
('0204', '02', 'Asunción'),
('0205', '02', 'Bolognesi'),
('0206', '02', 'Carhuaz'),
('0207', '02', 'Carlos Fermín Fitzcarrald'),
('0208', '02', 'Casma'),
('0209', '02', 'Corongo'),
('0210', '02', 'Huari'),
('0211', '02', 'Huarmey'),
('0212', '02', 'Huaylas'),
('0213', '02', 'Mariscal Luzuriaga'),
('0214', '02', 'Ocros'),
('0215', '02', 'Pallasca'),
('0216', '02', 'Pomabamba'),
('0217', '02', 'Recuay'),
('0218', '02', 'Santa'),
('0219', '02', 'Sihuas'),
('0220', '02', 'Yungay'),
('0301', '03', 'Abancay'),
('0302', '03', 'Andahuaylas'),
('0303', '03', 'Antabamba'),
('0304', '03', 'Aymaraes'),
('0305', '03', 'Cotabambas'),
('0306', '03', 'Chincheros'),
('0307', '03', 'Grau'),
('0401', '04', 'Arequipa'),
('0402', '04', 'Camaná'),
('0403', '04', 'Caravelí'),
('0404', '04', 'Castilla'),
('0405', '04', 'Caylloma'),
('0406', '04', 'Condesuyos'),
('0407', '04', 'Islay'),
('0408', '04', 'La Uniòn'),
('0501', '05', 'Huamanga'),
('0502', '05', 'Cangallo'),
('0503', '05', 'Huanca Sancos'),
('0504', '05', 'Huanta'),
('0505', '05', 'La Mar'),
('0506', '05', 'Lucanas'),
('0507', '05', 'Parinacochas'),
('0508', '05', 'Pàucar del Sara Sara'),
('0509', '05', 'Sucre'),
('0510', '05', 'Víctor Fajardo'),
('0511', '05', 'Vilcas Huamán'),
('0601', '06', 'Cajamarca'),
('0602', '06', 'Cajabamba'),
('0603', '06', 'Celendín'),
('0604', '06', 'Chota'),
('0605', '06', 'Contumazá'),
('0606', '06', 'Cutervo'),
('0607', '06', 'Hualgayoc'),
('0608', '06', 'Jaén'),
('0609', '06', 'San Ignacio'),
('0610', '06', 'San Marcos'),
('0611', '06', 'San Miguel'),
('0612', '06', 'San Pablo'),
('0613', '06', 'Santa Cruz'),
('0701', '07', 'Prov. Const. del Callao'),
('0801', '08', 'Cusco'),
('0802', '08', 'Acomayo'),
('0803', '08', 'Anta'),
('0804', '08', 'Calca'),
('0805', '08', 'Canas'),
('0806', '08', 'Canchis'),
('0807', '08', 'Chumbivilcas'),
('0808', '08', 'Espinar'),
('0809', '08', 'La Convención'),
('0810', '08', 'Paruro'),
('0811', '08', 'Paucartambo'),
('0812', '08', 'Quispicanchi'),
('0813', '08', 'Urubamba'),
('0901', '09', 'Huancavelica'),
('0902', '09', 'Acobamba'),
('0903', '09', 'Angaraes'),
('0904', '09', 'Castrovirreyna'),
('0905', '09', 'Churcampa'),
('0906', '09', 'Huaytará'),
('0907', '09', 'Tayacaja'),
('1001', '10', 'Huánuco'),
('1002', '10', 'Ambo'),
('1003', '10', 'Dos de Mayo'),
('1004', '10', 'Huacaybamba'),
('1005', '10', 'Huamalíes'),
('1006', '10', 'Leoncio Prado'),
('1007', '10', 'Marañón'),
('1008', '10', 'Pachitea'),
('1009', '10', 'Puerto Inca'),
('1010', '10', 'Lauricocha '),
('1011', '10', 'Yarowilca '),
('1101', '11', 'Ica '),
('1102', '11', 'Chincha '),
('1103', '11', 'Nasca '),
('1104', '11', 'Palpa '),
('1105', '11', 'Pisco '),
('1201', '12', 'Huancayo '),
('1202', '12', 'Concepción '),
('1203', '12', 'Chanchamayo '),
('1204', '12', 'Jauja '),
('1205', '12', 'Junín '),
('1206', '12', 'Satipo '),
('1207', '12', 'Tarma '),
('1208', '12', 'Yauli '),
('1209', '12', 'Chupaca '),
('1301', '13', 'Trujillo '),
('1302', '13', 'Ascope '),
('1303', '13', 'Bolívar '),
('1304', '13', 'Chepén '),
('1305', '13', 'Julcán '),
('1306', '13', 'Otuzco '),
('1307', '13', 'Pacasmayo '),
('1308', '13', 'Pataz '),
('1309', '13', 'Sánchez Carrión '),
('1310', '13', 'Santiago de Chuco '),
('1311', '13', 'Gran Chimú '),
('1312', '13', 'Virú '),
('1401', '14', 'Chiclayo '),
('1402', '14', 'Ferreñafe '),
('1403', '14', 'Lambayeque '),
('1501', '15', 'Lima '),
('1502', '15', 'Barranca '),
('1503', '15', 'Cajatambo '),
('1504', '15', 'Canta '),
('1505', '15', 'Cañete '),
('1506', '15', 'Huaral '),
('1507', '15', 'Huarochirí '),
('1508', '15', 'Huaura '),
('1509', '15', 'Oyón '),
('1510', '15', 'Yauyos '),
('1601', '16', 'Maynas '),
('1602', '16', 'Alto Amazonas '),
('1603', '16', 'Loreto '),
('1604', '16', 'Mariscal Ramón Castilla '),
('1605', '16', 'Requena '),
('1606', '16', 'Ucayali '),
('1607', '16', 'Datem del Marañón '),
('1608', '16', 'Putumayo'),
('1701', '17', 'Tambopata '),
('1702', '17', 'Manu '),
('1703', '17', 'Tahuamanu '),
('1801', '18', 'Mariscal Nieto '),
('1802', '18', 'General Sánchez Cerro '),
('1803', '18', 'Ilo '),
('1901', '19', 'Pasco '),
('1902', '19', 'Daniel Alcides Carrión '),
('1903', '19', 'Oxapampa '),
('2001', '20', 'Piura '),
('2002', '20', 'Ayabaca '),
('2003', '20', 'Huancabamba '),
('2004', '20', 'Morropón '),
('2005', '20', 'Paita '),
('2006', '20', 'Sullana '),
('2007', '20', 'Talara '),
('2008', '20', 'Sechura '),
('2101', '21', 'Puno '),
('2102', '21', 'Azángaro '),
('2103', '21', 'Carabaya '),
('2104', '21', 'Chucuito '),
('2105', '21', 'El Collao '),
('2106', '21', 'Huancané '),
('2107', '21', 'Lampa '),
('2108', '21', 'Melgar '),
('2109', '21', 'Moho '),
('2110', '21', 'San Antonio de Putina '),
('2111', '21', 'San Román '),
('2112', '21', 'Sandia '),
('2113', '21', 'Yunguyo '),
('2201', '22', 'Moyobamba '),
('2202', '22', 'Bellavista '),
('2203', '22', 'El Dorado '),
('2204', '22', 'Huallaga '),
('2205', '22', 'Lamas '),
('2206', '22', 'Mariscal Cáceres '),
('2207', '22', 'Picota '),
('2208', '22', 'Rioja '),
('2209', '22', 'San Martín '),
('2210', '22', 'Tocache '),
('2301', '23', 'Tacna '),
('2302', '23', 'Candarave '),
('2303', '23', 'Jorge Basadre '),
('2304', '23', 'Tarata '),
('2401', '24', 'Tumbes '),
('2402', '24', 'Contralmirante Villar '),
('2403', '24', 'Zarumilla '),
('2501', '25', 'Coronel Portillo '),
('2502', '25', 'Atalaya '),
('2503', '25', 'Padre Abad '),
('2504', '25', 'Purús');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntation_comments`
--

CREATE TABLE `puntation_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `puntationable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `puntationable_id` bigint(20) UNSIGNED NOT NULL,
  `puntation` int(11) DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `puntation_comments`
--

INSERT INTO `puntation_comments` (`id`, `user_id`, `puntationable_type`, `puntationable_id`, `puntation`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'App\\Models\\Activity', 1, NULL, 'rfghrfkrnog r', 1, '2021-01-18 21:33:55', '2021-01-18 21:33:55'),
(2, 1, 'App\\Models\\Activity', 1, NULL, 'uiuiu', 1, '2021-01-25 15:00:19', '2021-01-25 15:00:19'),
(3, 1, 'App\\Models\\Activity', 5, NULL, 'buena idea', 1, '2021-01-25 18:56:29', '2021-01-25 18:56:29'),
(4, 1, 'App\\Models\\Activity', 4, NULL, 'buen comentario', 1, '2021-01-25 19:23:27', '2021-01-25 19:23:27'),
(5, 39, 'App\\Models\\Activity', 11, NULL, 'mi comentario', 1, '2021-02-28 19:25:38', '2021-02-28 19:25:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resourcegables`
--

CREATE TABLE `resourcegables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_resource_id` bigint(20) UNSIGNED DEFAULT NULL,
  `resource` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `op1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `op2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `op3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `op4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `op5` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resourcegable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resourcegable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `resourcegables`
--

INSERT INTO `resourcegables` (`id`, `type_resource_id`, `resource`, `op1`, `op2`, `op3`, `op4`, `op5`, `resourcegable_type`, `resourcegable_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 1, '2021-01-15 21:38:25', '2021-01-15 21:38:25'),
(2, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 2, '2021-01-15 21:38:25', '2021-01-15 21:38:25'),
(3, 2, 'https://cdne.diariocorreo.pe/redactor/uploads/2019/07/31/lima-calle.jpg', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Activity', 1, '2021-01-15 21:38:25', '2021-01-15 21:38:25'),
(4, 2, 'https://cuestionessociales.files.wordpress.com/2011/10/basura33.jpg', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Activity', 2, '2021-01-15 21:38:25', '2021-01-15 21:38:25'),
(5, 2, 'https://e.rpp-noticias.io/normal/2018/11/15/portada_401540.jpg', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Activity', 3, '2021-01-15 21:38:25', '2021-01-15 21:38:25'),
(6, 2, 'https://diariouno.pe/wp-content/uploads/2018/06/40-1.jpg', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Activity', 4, '2021-01-15 21:38:25', '2021-01-15 21:38:25'),
(7, 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrvXX35FlIr94SQRR3yTyVJc9Pwy7F0zWhJQ&usqp=CAU', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Activity', 5, '2021-01-15 21:38:25', '2021-01-15 21:38:25'),
(8, 2, 'https://www.goodjoblatam.com/storage/activities/1611003495_activity_450_1000.jpeg', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Activity', 6, '2021-01-18 20:58:15', '2021-01-18 20:58:15'),
(9, 2, 'https://www.goodjoblatam.com/storage/activities/1611611200_activity_senamhi-contaminacion-1024x683.jpg', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Activity', 7, '2021-01-25 22:46:40', '2021-01-25 22:46:40'),
(10, 2, 'https://www.goodjoblatam.com/storage/activities/1611611379_activity_senamhi-contaminacion-1024x683.jpg', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Activity', 8, '2021-01-25 22:49:39', '2021-01-25 22:49:39'),
(11, 2, 'https://www.goodjoblatam.com/storage/activities/1611611485_activity_senamhi-contaminacion-1024x683.jpg', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Activity', 9, '2021-01-25 22:51:25', '2021-01-25 22:51:25'),
(12, 2, 'https://www.goodjoblatam.com/storage/activities/1611612854_activity_senamhi-contaminacion-1024x683.jpg', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Activity', 10, '2021-01-25 23:14:14', '2021-01-25 23:14:14'),
(13, 2, 'https://www.goodjoblatam.com/storage/activities/1611613230_activity_senamhi-contaminacion-1024x683.jpg', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Activity', 11, '2021-01-25 23:20:30', '2021-01-25 23:20:30'),
(14, 2, 'https://www.goodjoblatam.com/storage/activities/1611613444_activity_1452709.jpg', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Activity', 12, '2021-01-25 23:24:05', '2021-01-25 23:24:05'),
(15, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 3, '2021-01-28 02:33:13', '2021-01-28 02:33:13'),
(16, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 4, '2021-01-28 02:33:48', '2021-01-28 02:33:48'),
(17, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 5, '2021-01-28 02:39:08', '2021-01-28 02:39:08'),
(18, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 6, '2021-01-28 02:43:41', '2021-01-28 02:43:41'),
(19, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 7, '2021-01-28 17:36:38', '2021-01-28 17:36:38'),
(20, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 8, '2021-01-31 03:45:31', '2021-01-31 03:45:31'),
(21, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 9, '2021-01-31 04:13:30', '2021-01-31 04:13:30'),
(22, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 10, '2021-01-31 04:43:08', '2021-01-31 04:43:08'),
(23, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 11, '2021-01-31 05:34:19', '2021-01-31 05:34:19'),
(24, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 12, '2021-01-31 06:11:33', '2021-01-31 06:11:33'),
(25, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 13, '2021-01-31 06:23:03', '2021-01-31 06:23:03'),
(26, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 14, '2021-01-31 06:39:58', '2021-01-31 06:39:58'),
(27, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 15, '2021-01-31 06:44:37', '2021-01-31 06:44:37'),
(28, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 16, '2021-01-31 06:51:28', '2021-01-31 06:51:28'),
(29, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 17, '2021-01-31 06:59:39', '2021-01-31 06:59:39'),
(30, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 18, '2021-01-31 14:57:07', '2021-01-31 14:57:07'),
(31, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 19, '2021-01-31 15:06:45', '2021-01-31 15:06:45'),
(32, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 20, '2021-01-31 16:44:25', '2021-01-31 16:44:25'),
(33, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 21, '2021-01-31 16:49:57', '2021-01-31 16:49:57'),
(34, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 22, '2021-01-31 16:59:38', '2021-01-31 16:59:38'),
(35, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 23, '2021-01-31 17:11:45', '2021-01-31 17:11:45'),
(36, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 24, '2021-01-31 17:20:52', '2021-01-31 17:20:52'),
(37, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 25, '2021-01-31 17:35:14', '2021-01-31 17:35:14'),
(40, 3, 'https://www.goodjoblatam.com/storage/activities/1612215061_activity_Imagen_Producto_sin_Fotos_.png', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Activity', 12, '2021-02-01 22:31:01', '2021-02-01 22:31:01'),
(41, 3, 'https://www.goodjoblatam.com/storage/activities/1612215066_activity_Imagen_Producto_sin_Fotos_.png', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Activity', 12, '2021-02-01 22:31:06', '2021-02-01 22:31:06'),
(42, 3, 'https://www.goodjoblatam.com/storage/activities/1612215070_activity_Imagen_Producto_sin_Fotos_.png', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Activity', 12, '2021-02-01 22:31:10', '2021-02-01 22:31:10'),
(44, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 26, '2021-02-02 02:27:44', '2021-02-02 02:27:44'),
(45, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 27, '2021-02-02 03:43:10', '2021-02-02 03:43:10'),
(46, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 28, '2021-02-02 03:52:14', '2021-02-02 03:52:14'),
(47, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 29, '2021-02-09 03:41:36', '2021-02-09 03:41:36'),
(48, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 30, '2021-02-11 01:37:00', '2021-02-11 01:37:00'),
(49, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 31, '2021-02-11 01:41:38', '2021-02-11 01:41:38'),
(50, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 32, '2021-02-11 01:48:46', '2021-02-11 01:48:46'),
(52, 2, 'http://127.0.0.1:8000/storage/activities/1613432193_activity_test_pay.png', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Activity', 14, '2021-02-15 23:36:33', '2021-02-15 23:36:33'),
(53, 2, 'http://127.0.0.1:8000/storage/activities/1613432243_activity_test_pay.png', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Activity', 15, '2021-02-15 23:37:23', '2021-02-15 23:37:23'),
(54, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 33, '2021-02-15 23:39:41', '2021-02-15 23:39:41'),
(55, 2, 'http://127.0.0.1:8000/storage/activities/1613443100_activity_https___hybrismediaprod.blob.core.windows.net_sys-master-phoenix-images-container_h90_hfb_9090914287646_krakenBTkittyQuartz-gallery-1500x1000-hero.jpg', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Activity', 16, '2021-02-16 02:38:20', '2021-02-16 02:38:20'),
(56, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 34, '2021-02-28 17:47:51', '2021-02-28 17:47:51'),
(57, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 36, '2021-02-28 18:12:10', '2021-02-28 18:12:10'),
(58, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 37, '2021-02-28 18:12:50', '2021-02-28 18:12:50'),
(59, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 38, '2021-02-28 18:54:09', '2021-02-28 18:54:09'),
(61, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 39, '2021-02-28 19:14:24', '2021-02-28 19:14:24'),
(65, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 40, '2021-03-01 15:25:19', '2021-03-01 15:25:19'),
(66, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 41, '2021-03-01 15:29:32', '2021-03-01 15:29:32'),
(67, 2, 'http://127.0.0.1:8000/storage/activities/1614646686_activity_LINEAS ROJAS.png', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Activity', 18, '2021-03-02 00:58:06', '2021-03-02 00:58:06'),
(68, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 42, '2021-03-02 01:57:06', '2021-03-02 01:57:06'),
(69, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 43, '2021-03-02 01:58:29', '2021-03-02 01:58:29'),
(70, 1, 'https://www.impacto.com.pe/storage/resource_multimedia/basic_user_white.png', NULL, NULL, NULL, NULL, NULL, 'App\\User', 44, '2021-03-02 02:02:37', '2021-03-02 02:02:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rewards`
--

CREATE TABLE `rewards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_reward_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reward` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rewardable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rewardable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rewards`
--

INSERT INTO `rewards` (`id`, `type_reward_id`, `reward`, `rewardable_type`, `rewardable_id`, `created_at`, `updated_at`) VALUES
(1, 1, '1000', 'App\\Models\\Activity', 1, '2021-01-15 21:38:25', '2021-01-15 21:38:25'),
(2, 1, '1000', 'App\\Models\\Activity', 2, '2021-01-15 21:38:25', '2021-01-15 21:38:25'),
(3, 1, '1000', 'App\\Models\\Activity', 3, '2021-01-15 21:38:25', '2021-01-15 21:38:25'),
(4, 1, '1000', 'App\\Models\\Activity', 4, '2021-01-15 21:38:25', '2021-01-15 21:38:25'),
(5, 1, '1000', 'App\\Models\\Activity', 5, '2021-01-15 21:38:25', '2021-01-15 21:38:25'),
(6, 1, '5000', 'App\\Models\\Activity', 6, '2021-01-18 20:58:15', '2021-01-18 20:58:15'),
(7, 1, '500', 'App\\Models\\Activity', 7, '2021-01-25 22:46:40', '2021-01-25 22:46:40'),
(8, 1, '500', 'App\\Models\\Activity', 8, '2021-01-25 22:49:39', '2021-01-25 22:49:39'),
(9, 1, '999', 'App\\Models\\Activity', 9, '2021-01-25 22:51:25', '2021-02-15 23:29:05'),
(10, 1, '100', 'App\\Models\\Activity', 10, '2021-01-25 23:14:14', '2021-01-25 23:14:14'),
(11, 1, '100', 'App\\Models\\Activity', 11, '2021-01-25 23:20:30', '2021-01-25 23:20:30'),
(12, 1, '200', 'App\\Models\\Activity', 12, '2021-01-25 23:24:05', '2021-01-25 23:24:05'),
(14, 1, '1000', 'App\\Models\\Activity', 14, '2021-02-15 23:36:33', '2021-02-15 23:36:33'),
(15, 1, '1000', 'App\\Models\\Activity', 15, '2021-02-15 23:37:23', '2021-02-15 23:37:23'),
(16, 1, '500', 'App\\Models\\Activity', 16, '2021-02-16 02:38:20', '2021-02-16 02:38:20'),
(18, 1, '1000', 'App\\Models\\Activity', 18, '2021-03-02 00:58:06', '2021-03-02 00:58:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4SyM2Qs4nASW5PpYzl3ic9wwstGFGWXkxaCQMswZ', 44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidE0wdlRHZmJEekk1blRMUVZOM25wdlhJT2hxYng4Umw0OElEdUVCUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hY3Rpdml0eS9Tb3BvcnRlJTIwMjQlMjA3Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDQ7fQ==', 1614650673);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tags`
--

INSERT INTO `tags` (`id`, `taggable_type`, `taggable_id`, `name`) VALUES
(1, 'App\\Models\\Activity', 6, 'asdasdasd'),
(2, 'App\\Models\\Activity', 6, 'fsdfsdefesfs'),
(3, 'App\\Models\\Activity', 6, 'gdrfgdrsfsdfese'),
(4, 'App\\Models\\Activity', 7, 'COMAS'),
(5, 'App\\Models\\Activity', 7, 'contaminacio'),
(6, 'App\\Models\\Activity', 7, 'contaminacion'),
(7, 'App\\Models\\Activity', 7, 'comaslimpio'),
(8, 'App\\Models\\Activity', 7, 'belaunde'),
(9, 'App\\Models\\Activity', 8, 'COMAS  contaminacio '),
(10, 'App\\Models\\Activity', 8, ' contaminacion '),
(11, 'App\\Models\\Activity', 8, ' comaslimpio '),
(12, 'App\\Models\\Activity', 8, ' belaunde '),
(13, 'App\\Models\\Activity', 8, ''),
(14, 'App\\Models\\Activity', 9, 'COMAS contaminacio  contaminacion '),
(15, 'App\\Models\\Activity', 9, ' comaslimpio '),
(16, 'App\\Models\\Activity', 9, ' belaunde '),
(17, 'App\\Models\\Activity', 9, ' '),
(18, 'App\\Models\\Activity', 9, ''),
(19, 'App\\Models\\Activity', 10, 'asdwda'),
(20, 'App\\Models\\Activity', 11, 'dawdad'),
(21, 'App\\Models\\Activity', 12, 'basura'),
(22, 'App\\Models\\Activity', 12, 'puente'),
(27, 'App\\Models\\Activity', 14, 'postman'),
(28, 'App\\Models\\Activity', 14, 'testes'),
(29, 'App\\Models\\Activity', 14, 'edmad'),
(30, 'App\\Models\\Activity', 14, 'sdww'),
(31, 'App\\Models\\Activity', 15, 'postman'),
(32, 'App\\Models\\Activity', 15, 'testes'),
(33, 'App\\Models\\Activity', 15, 'edmad'),
(34, 'App\\Models\\Activity', 15, 'sdww'),
(35, 'App\\Models\\Activity', 16, 'postman'),
(36, 'App\\Models\\Activity', 16, 'testes'),
(37, 'App\\Models\\Activity', 16, 'edmad'),
(38, 'App\\Models\\Activity', 16, 'sdww'),
(40, 'App\\Models\\Activity', 18, 'sdfsefsdfsgfhfgh');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_resources`
--

CREATE TABLE `type_resources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `type_resources`
--

INSERT INTO `type_resources` (`id`, `name`) VALUES
(1, 'Perfil'),
(2, 'Imagen Principal de Actividad'),
(3, 'Imagen Actividad'),
(4, 'Video Actividad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_rewards`
--

CREATE TABLE `type_rewards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `type_rewards`
--

INSERT INTO `type_rewards` (`id`, `name`, `status`) VALUES
(1, 'Remuneración Económica', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `register` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `register_uid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `account_type_id`, `email`, `email_verified_at`, `password`, `register`, `register_uid`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'user@goodjob.com', NULL, '$2y$10$UQyw9XBmC81FqVIZNpdtC..NK/MoONVpugxo4bOG9RUnrkcynjeF2', 'web', NULL, 1, NULL, '2021-01-15 21:38:25', '2021-01-15 21:38:25'),
(2, 2, 'company@goodjob.com', NULL, '$2y$10$v/bClFaSrAoEYZvXvYcQW.YwTM4lqNF2/E4tvPdUVXktkyeVeILIO', 'web', NULL, 1, NULL, '2021-01-15 21:38:25', '2021-01-15 21:38:25'),
(3, 1, 'awd@goo.com', NULL, '$2y$10$xVuMqWsihxR8uIeybVhlW.5BdPHihCGAP7Y4MOJ18T0Fdb/gp9IBm', 'web', NULL, 1, NULL, '2021-01-28 02:33:13', '2021-01-28 02:33:13'),
(4, 1, 'aaaa@a.com', NULL, '$2y$10$7kWyZp6nk10mkicyMiA40.mOw1QDR9vWHVYAlqBtas2rnXxR0vDwK', 'web', NULL, 1, NULL, '2021-01-28 02:33:48', '2021-01-28 02:33:48'),
(5, 1, 'test@test.com', NULL, '$2y$10$xTygoaSeN0mndp1gs/vp1etOyCol4JwVwyz7k3BdF/tfGzzwyYoGO', 'web', NULL, 1, NULL, '2021-01-28 02:39:08', '2021-01-28 02:39:08'),
(6, 1, 'awdw@dad.com', NULL, '$2y$10$AE1/ePx2xWEl85RpP.I6q.r6hTDVQ4wtMpdu3JtyUCbcreZGOF12a', 'web', NULL, 1, NULL, '2021-01-28 02:43:41', '2021-01-28 02:43:41'),
(7, 1, 'naruto@gmail.com', NULL, '$2y$10$VN6yojt9Kf3Hxl8Bsl/0GeUdAZrGG9Nk4TTLeI0/A.QKIsmDjW5du', 'web', NULL, 1, NULL, '2021-01-28 17:36:38', '2021-01-28 17:36:38'),
(8, 1, 'jose@gmail.com', NULL, '$2y$10$4Rw6svKEdnCZ2QROFzyxh.iFOo5uiXQK7k.Jy5wS6z1syIk1U0KvS', 'web', NULL, 1, NULL, '2021-01-31 03:45:31', '2021-01-31 03:45:31'),
(9, 1, 'plan20@gmail.com', NULL, '$2y$10$/ens90Pn1hzkfu02fKSR2uLnW4pITSnHb/yYs1adtANbDeGbkt/Qi', 'web', NULL, 1, NULL, '2021-01-31 04:13:30', '2021-01-31 04:13:30'),
(10, 1, 'admin24@gmail.com', NULL, '$2y$10$aeuZfXmBvUI1mA/kmhZE5.tFWJAE0kfuYLprcWsrijT7ZWwTSd4yi', 'web', NULL, 1, NULL, '2021-01-31 04:43:08', '2021-01-31 04:43:08'),
(11, 1, 'admin25@gmail.com', NULL, '$2y$10$th5rMelNNJlr7Jp4IxEAiOCnfMr1Zs2cB491GpBpIpupk/yCRjgw2', 'web', NULL, 1, NULL, '2021-01-31 05:34:19', '2021-01-31 05:34:19'),
(12, 1, 'admin2@gmail.com', NULL, '$2y$10$ryBjkXrdR/wwBQoNwMUPBOJHnH2B4Hu3Pv08RWOgmZ8ejFaRPumaa', 'web', NULL, 1, NULL, '2021-01-31 06:11:33', '2021-01-31 06:11:33'),
(13, 1, 'admin194@gmail.com', NULL, '$2y$10$MSY2IqP9Jqw0X/N4.Hix0uUkyeo7erwlWFtXJ45NHBCs/nNA9T8r2', 'web', NULL, 1, NULL, '2021-01-31 06:23:03', '2021-01-31 06:23:03'),
(14, 1, 'idat25@gmail.com', NULL, '$2y$10$kCG7ePT8WrIHxFIJixa3xuMSdxMFMKvRVnOekv/tDLWd6LY00KmGq', 'web', NULL, 1, NULL, '2021-01-31 06:39:58', '2021-01-31 06:39:58'),
(15, 1, 'admin12@gmail.com', NULL, '$2y$10$rJaADkNAIoCsv6../hiS7OOSB6WhyhXFc0GnRAg7UeUWMDxJcrVRC', 'web', NULL, 1, NULL, '2021-01-31 06:44:37', '2021-01-31 06:44:37'),
(16, 1, 'alumno24@gmail.com', NULL, '$2y$10$2lIfg2dt9kPbG9UW/gXh5.c8z6DLKfe0Q39EnQodOaWVRm1qdCQMW', 'web', NULL, 1, NULL, '2021-01-31 06:51:28', '2021-01-31 06:51:28'),
(17, 1, 'seguro24@gmail.com', NULL, '$2y$10$oGmM0eBfYjAoyr8nXK0wXuf1N.qISbDEIN4PHVOAL.JdBDOS0Prze', 'web', NULL, 1, NULL, '2021-01-31 06:59:39', '2021-01-31 06:59:39'),
(18, 1, 'juan20@gmail.com', NULL, '$2y$10$.J3v9EE4lcZnuwnBj9JGR.xiebEAueodg6VBITM5wxweOLtOzAUae', 'web', NULL, 1, NULL, '2021-01-31 14:57:07', '2021-01-31 14:57:07'),
(19, 1, 'conpani21@gmail.com', NULL, '$2y$10$OSdNZYewanu46t4dEyd4zu.E4pj8H644pqXIuXP/4HY238BaVfQVS', 'web', NULL, 1, NULL, '2021-01-31 15:06:45', '2021-01-31 15:06:45'),
(20, 1, 'telesur@gmail.com', NULL, '$2y$10$37nM6u0CSz9ifwjoql/IbOfabPkCxLWCeC7/Hp0e4cHIcyrYHzE6C', 'web', NULL, 1, NULL, '2021-01-31 16:44:25', '2021-01-31 16:44:25'),
(21, 1, 'emp@gmail.com', NULL, '$2y$10$Tba8sM3m21GAWuJQxUkWq.7WkiQJwjv14e0CcEcYmWHlOWxRgUX3e', 'web', NULL, 1, NULL, '2021-01-31 16:49:57', '2021-01-31 16:49:57'),
(22, 1, 'admin2020@gmail.com', NULL, '$2y$10$YJEVY3PT0XCSlLziPBz6EeA9K0su/NVZBAuQXOtBto.sS9O9Et8Xi', 'web', NULL, 1, NULL, '2021-01-31 16:59:38', '2021-01-31 16:59:38'),
(23, 1, 'jota2021@gmail.com', NULL, '$2y$10$nj2YuTvm.QMHkAnNJ7HKH.aBEKYXHk4/gp9z2RlL24KvyDH2XceQC', 'web', NULL, 1, NULL, '2021-01-31 17:11:45', '2021-01-31 17:11:45'),
(24, 1, 'alex2024@gmail.com', NULL, '$2y$10$99ExyKetkObkQmjgY5e35OS9OwDmz6ESNc654tGnt8LOsR/mP003G', 'web', NULL, 1, NULL, '2021-01-31 17:20:52', '2021-01-31 17:20:52'),
(25, 1, 'acblemax@gamil.com', NULL, '$2y$10$ivIyNOHIVkxbi7/4xLyn5e7FdtWILCf/Q/Q0oflbwmooGYFB1khAO', 'web', NULL, 1, NULL, '2021-01-31 17:35:14', '2021-01-31 17:35:14'),
(26, 1, 'juanperez@gmail.com', NULL, '$2y$10$DaeC1Y7V7YiFItziBeq.TOv7t19BOLnQ0WQOz5snb7st3wxr8LXqm', 'web', NULL, 1, NULL, '2021-02-02 02:27:44', '2021-02-02 02:27:44'),
(27, 1, 'jpeaz@gmail.com', NULL, '$2y$10$X44P/iuNkoq53CegNDzX4ur5qLH3sPYy2K7K0bxE3KbXZFcdQcdAS', 'web', NULL, 1, NULL, '2021-02-02 03:43:10', '2021-02-02 03:43:10'),
(28, 1, 'company@agoodjob.com', NULL, '$2y$10$URTaxtgfhVK.Y.V8mVqS7e24RboTzDylf/hfaljFaeBZFJDmY1IGG', 'web', NULL, 1, NULL, '2021-02-02 03:52:14', '2021-02-02 03:52:14'),
(29, 1, 'masmenos@hotmail.com', NULL, '$2y$10$WXuQ2mXK5hTfTv0KMSaBgeZTLSaTzdbQhLJRtWFwe4cGjloO2rskG', 'web', NULL, 1, NULL, '2021-02-09 03:41:36', '2021-02-09 03:41:36'),
(30, 3, 'dev@goodjoblatam.com', NULL, '$2y$10$y8cfkV2S8Xv/KO0utiZemeqj8J8MV8cCnJoEd0pgY5XnXqg1OEj3i', 'web', NULL, 1, NULL, '2021-02-11 01:37:00', '2021-02-11 01:37:00'),
(31, 1, 'awda@adad.f', NULL, '$2y$10$dpboqfEemi/oOop/taX2fucqUTHZGTxZNA2I/8RqsWbiM2iInr/EK', 'web', NULL, 1, NULL, '2021-02-11 01:41:38', '2021-02-11 01:41:38'),
(32, 2, 'awdea@1ad.c', NULL, '$2y$10$P0fKI.oz/IETh7G7MqBpV.jvFs3POYmfZXTgCjdfE/6p9hyis020u', 'web', NULL, 3, NULL, '2021-02-11 01:48:46', '2021-02-11 02:53:09'),
(33, 2, 'testpostmasn3@gmail.com', NULL, '$2y$10$tFRkxtGu4FNvymhaH5iPmOPxv9u197AlEjsChNg8Mw3KYGTWo7T2u', 'web', NULL, 0, NULL, '2021-02-15 23:39:41', '2021-02-15 23:42:29'),
(34, 2, 'company@goodjoblatam.com', NULL, '$2y$10$rwed97kTfomVBcYwVb2cEuNVRXb7F/W7p2kLn8hv7NwpmFDEp7jgG', 'web', NULL, 3, NULL, '2021-02-28 17:47:51', '2021-02-28 17:47:51'),
(36, 2, 'testpostman3@gmail.com', NULL, '$2y$10$dxdl/dznNoVoRyDYZ3TsveOHSdBRH.jD62dcHFKo8GoCX5bsbDyXu', 'web', NULL, 3, NULL, '2021-02-28 18:12:10', '2021-02-28 18:12:10'),
(37, 2, 'testpostman3@gmail.coms', NULL, '$2y$10$mv9FEwJwQqhLA/NN.QdYtebhB.tsMsHlno0DoOciu.KYlalaA3ZUG', 'web', NULL, 3, NULL, '2021-02-28 18:12:50', '2021-02-28 18:12:50'),
(38, 2, 'adwd@aaa.com', NULL, '$2y$10$AOIWyskTwTuLel3Oki8dGOTIlaKbfA9tQjCvxZqY1ZMAHlpWUvyzG', 'web', NULL, 3, NULL, '2021-02-28 18:54:09', '2021-02-28 18:54:09'),
(39, 1, 'anthony@goodjoblatam.com', NULL, '$2y$10$ekC96b.OnzFXg2p09KLbKecdHx3n51ZJ7eDpLyL1UV.LEA/TTAJgq', 'web', NULL, 1, NULL, '2021-02-28 19:14:24', '2021-02-28 19:14:24'),
(40, 1, 'awda@adsad.f', NULL, '$2y$10$FympMUbIWdPvCdrSjX7h.evi/hNNpcgnR4OxUTmbTOx0wGEDZgGS6', 'web', NULL, 1, NULL, '2021-03-01 15:25:19', '2021-03-01 15:25:19'),
(41, 1, 'awdwa@fff.d', NULL, '$2y$10$ku6CqO4peJ3Oqtx.s8fCIObP4D.EwPTir8/i56M9b7x8N1oJErDRC', 'web', NULL, 1, NULL, '2021-03-01 15:29:32', '2021-03-01 15:29:32'),
(42, 1, 'asdasaad@gmail.com', NULL, '$2y$10$oWe2H/I3hkOkeCuIUXTw2OmEiuV8iE53DtWHxoCtgH3K0FR01z4t2', 'web', NULL, 1, NULL, '2021-03-02 01:57:06', '2021-03-02 01:57:06'),
(43, 1, 'testpostma33n3@gmail.coms', NULL, '$2y$10$R.QBhU9mD3Hcr1Jp9OmQfOsYiMgTjXBVAIeI9b3nx3oepps39.Rp2', 'web', NULL, 1, NULL, '2021-03-02 01:58:29', '2021-03-02 01:58:29'),
(44, 1, 'awdawdfs@adasd.com', NULL, '$2y$10$UktOCfd49KPLMUshFa1PFuFOVx6rA79FVJlb.4HHNu3ga2qNxWLsK', 'web', NULL, 1, NULL, '2021-03-02 02:02:37', '2021-03-02 02:02:37');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `account_banks`
--
ALTER TABLE `account_banks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_banks_user_id_foreign` (`user_id`),
  ADD KEY `account_banks_bank_id_foreign` (`bank_id`);

--
-- Indices de la tabla `account_types`
--
ALTER TABLE `account_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activities_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_province_id_foreign` (`province_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `postulations`
--
ALTER TABLE `postulations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postulations_activity_id_foreign` (`activity_id`),
  ADD KEY `postulations_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provinces_department_id_foreign` (`department_id`);

--
-- Indices de la tabla `puntation_comments`
--
ALTER TABLE `puntation_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `puntation_comments_puntationable_type_puntationable_id_index` (`puntationable_type`,`puntationable_id`),
  ADD KEY `puntation_comments_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `resourcegables`
--
ALTER TABLE `resourcegables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resourcegables_resourcegable_type_resourcegable_id_index` (`resourcegable_type`,`resourcegable_id`),
  ADD KEY `resourcegables_type_resource_id_foreign` (`type_resource_id`);

--
-- Indices de la tabla `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rewards_rewardable_type_rewardable_id_index` (`rewardable_type`,`rewardable_id`),
  ADD KEY `rewards_type_reward_id_foreign` (`type_reward_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`);

--
-- Indices de la tabla `type_resources`
--
ALTER TABLE `type_resources`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_rewards`
--
ALTER TABLE `type_rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_register_uid_unique` (`register_uid`),
  ADD KEY `users_account_type_id_foreign` (`account_type_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `account_banks`
--
ALTER TABLE `account_banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `account_types`
--
ALTER TABLE `account_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `postulations`
--
ALTER TABLE `postulations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `puntation_comments`
--
ALTER TABLE `puntation_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `resourcegables`
--
ALTER TABLE `resourcegables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `type_resources`
--
ALTER TABLE `type_resources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `type_rewards`
--
ALTER TABLE `type_rewards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `account_banks`
--
ALTER TABLE `account_banks`
  ADD CONSTRAINT `account_banks_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `account_banks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `postulations`
--
ALTER TABLE `postulations`
  ADD CONSTRAINT `postulations_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `postulations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `provinces`
--
ALTER TABLE `provinces`
  ADD CONSTRAINT `provinces_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `puntation_comments`
--
ALTER TABLE `puntation_comments`
  ADD CONSTRAINT `puntation_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `resourcegables`
--
ALTER TABLE `resourcegables`
  ADD CONSTRAINT `resourcegables_type_resource_id_foreign` FOREIGN KEY (`type_resource_id`) REFERENCES `type_resources` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `rewards`
--
ALTER TABLE `rewards`
  ADD CONSTRAINT `rewards_type_reward_id_foreign` FOREIGN KEY (`type_reward_id`) REFERENCES `type_rewards` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_account_type_id_foreign` FOREIGN KEY (`account_type_id`) REFERENCES `account_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
