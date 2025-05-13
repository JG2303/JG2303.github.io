-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-05-2025 a las 22:45:30
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `platos`
--

CREATE TABLE `platos` (
  `id` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `nombre` varchar(50) NOT NULL,
  `precio` varchar(50) NOT NULL,
  `imagen` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `platos`
--

INSERT INTO `platos` (`id`, `create_at`, `nombre`, `precio`, `imagen`) VALUES
(1, '2025-05-08 01:54:00', 'pollo asado', '25000', 'https://static.vecteezy.com/system/resources/thumbnails/058/271/715/small_2x/mouthwatering-roasted-chicken-dish-with-vegetables-and-herbs-on-a-plate-png.png'),
(2, '2025-05-08 01:57:44', 'hamburguesa', '50000', 'https://png.pngtree.com/png-vector/20240813/ourmid/pngtree-the-ultimate-guide-to-making-beef-burgers-juicy-for-your-next-png-image_13468072.png'),
(3, '2025-05-08 01:58:21', 'sopa', '20000', 'https://static.vecteezy.com/system/resources/thumbnails/051/965/126/small/bowl-of-chicken-soup-with-vegetables-png.png'),
(4, '2025-05-08 01:59:27', 'carne asada', '28500', 'https://png.pngtree.com/png-vector/20240802/ourmid/pngtree-grilled-meat-with-rosemary-png-image_13335175.png'),
(5, '2025-05-09 20:21:38', 'pastas alfredo', '27800', 'https://static.vecteezy.com/system/resources/previews/045/354/792/non_2x/rich-and-savory-pasta-dish-fettuccine-alfredo-with-parmesan-topping-free-png.png'),
(6, '2025-05-09 20:21:38', 'tacos de pollo', '15000', 'https://img.pikbest.com/png-images/20240830/3d-grilled-chicken-tacos-with-tomato-sauce-and-onion-isolated-on-transparent-background_10776368.png!bw700'),
(7, '2025-05-09 20:21:38', 'filete pescado', '23000', 'https://png.pngtree.com/png-clipart/20240323/original/pngtree-fried-fish-fillets-with-lemon-slice-png-image_14663186.png'),
(8, '2025-05-09 20:21:38', 'lasagna carne', '35000', 'https://png.pngtree.com/png-vector/20250422/ourmid/pngtree-classic-italian-lasagna-with-savory-meat-sauce-and-melted-cheese-png-image_15976140.png'),
(9, '2025-05-09 20:35:57', 'bandeja paisa', '42000', 'https://elrancherito.com.co/wp-content/uploads/2020/06/FotosWeb_Rancherito-01.png'),
(10, '2025-05-09 20:35:57', 'arepa rellena', '16000', 'https://www.pikpng.com/pngl/b/338-3386128_arepa-transparent-images-pluspng-arepa-rellena-png-clipart.png'),
(11, '2025-05-09 20:35:57', 'changua', '12000', 'https://cloudfront-us-east-1.images.arcpublishing.com/infobae/QRATVHYDVVFARP5TZGNRRZUY5U.jpg'),
(12, '2025-05-09 20:37:51', 'empanadas', '5000', 'https://png.pngtree.com/png-vector/20240729/ourmid/pngtree-mouthwatering-argentine-empanadas-satisfy-your-cravings-with-authentic-recipes-png-image_13274374.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `platos`
--
ALTER TABLE `platos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `platos`
--
ALTER TABLE `platos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1013;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
