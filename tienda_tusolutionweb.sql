-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2019 a las 05:51:57
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_tusolutionweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Royal Canin'),
(2, 'Nutro'),
(3, 'Acana'),
(4, 'Purina'),
(5, 'Super Can'),
(6, 'Whiskas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_title` varchar(200) NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `qty` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `total_amt` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `product_title`, `product_image`, `qty`, `price`, `total_amt`) VALUES
(1, 1, '0', 0, 'Samsung Dous 2', 'samsung mobile.jpg', 1, 5000, 5000),
(2, 2, '0', 0, 'iPhone 5s', 'iphone mobile.jpg', 1, 25000, 25000),
(3, 1, '0', 4, 'Samsung Dous 2', 'samsung mobile.jpg', 1, 5000, 5000),
(4, 2, '0', 4, 'iPhone 5s', 'iphone mobile.jpg', 1, 25000, 25000),
(6, 17, '0', 5, 'Gents formal', 'gents-formal-250x250.jpg', 1, 1000, 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Concentrado y Comida'),
(2, 'Collares'),
(3, 'Casas'),
(4, 'Ropa y Accesorios'),
(5, 'Juguetes'),
(6, 'Artículos de Higiene'),
(7, 'Medicamentos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 2, 1, 'Arnés para Perro', 30, 'Arnés Resistente para Perro Grande', 'arnes1.jpg', 'samsung mobile electronics'),
(2, 3, 3, 'Casa para perro pequeño', 100, 'Casa portable para perro pequeño.', 'casa1.jpg', 'mobile iphone apple'),
(3, 1, 4, 'Concentrado Para perro Cachorro', 20, 'Razas pequeñas de 3 a 12 meses', 'concentrado1.jpg', 'apple ipad tablet'),
(4, 1, 5, 'Concentrado Para Perro Adulto', 40, 'Raza grande 50 lbs', 'concentrado2.jpg', 'iphone apple mobile'),
(5, 1, 6, 'Concentrado para Gato', 25, 'Concentrado para gato sabor a pescado', 'concentrado3.jpg', 'ipad tablet samsung'),
(6, 4, 2, 'Disfraz  para perro pequeño Chucky', 100, 'Divertido disfraz para raza  pequeña', 'ropa1.jpg', 'hp laptop '),
(7, 7, 3, 'Multivitaminas Laveta', 50, 'Multivitaminas para perro de cualquier raza', 'medicamento1.jpg', 'Laptop Hp Pavillion'),
(8, 5, 2, 'Pollo Chillón', 15, 'Juguete con sonidos para cualquier mascota', 'juguete1.jpg', 'sony mobile'),
(9, 6, 3, 'Shampoo Fido', 12, 'Shampoo Para mascota', 'sahmpoo.jpg', 'iphone apple mobile');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'demo', 'demo', 'demo@gmal.com', '12345', '123456789', 'Kolkata', 'VIP Road'),
(2, 'Rizwan', 'Khan', 'rizwankhan.august16@gmail.com', '25f9e794323b453885f5181f1b624d0b', '9832268432', 'Hutton Road', 'Kolkata'),
(3, 'Rizwan', 'Khan', 'salmankhan@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080182', 'Hutton Road', 'Asansol'),
(4, 'Juan', 'Mathas', 'ricardocorazondeleon2018@gmail.com', '107f0be83ce4115a829215412c22ebcc', '9286444682', 'AV PANAMERICANA', 'sin numero'),
(5, 'tusolutionweb', 'tutos', 'tusolutionweb@gmail.com', 'e9e8c468973e6280e6a4497bdc279cf1', '9656444684', 'AV ramon castila', 'san blas'),
(6, 'erick', 'molina', 'erick21orlando@gmail.com', '933f8130642a11427a2ba1dace4fa2fd', '4768216120', 'guatemala', 'guatemala');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indices de la tabla `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
