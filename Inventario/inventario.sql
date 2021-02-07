-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-02-2021 a las 05:33:05
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shopskin1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquiler`
--

CREATE TABLE `alquiler` (
  `id_alqui` int(11) NOT NULL,
  `fecha_alquiler` date NOT NULL,
  `fecha_dev` date NOT NULL,
  `valor` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `id_pelicula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alquiler`
--

INSERT INTO `alquiler` (`id_alqui`, `fecha_alquiler`, `fecha_dev`, `valor`, `cantidad`, `id_pelicula`) VALUES
(2, '0000-00-00', '2020-08-14', 0, 0, 11),
(3, '0000-00-00', '2020-08-14', 0, 0, 11),
(2, '0000-00-00', '2020-08-14', 0, 0, 11),
(3, '0000-00-00', '2020-08-14', 0, 0, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquileres`
--

CREATE TABLE `alquileres` (
  `id_alqui` int(11) NOT NULL,
  `fecha_alquiler` date DEFAULT NULL,
  `fecha_devolucion` date DEFAULT NULL,
  `valor_alqui` float DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `id_vc` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `categoria`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'B15'),
(4, 'C'),
(5, 'R');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido_p` varchar(50) DEFAULT NULL,
  `apellido_m` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `direccion`, `telefono`, `nombre`, `apellido_p`, `apellido_m`) VALUES
(1, 'aqui', '97349823478', 'juan', 'perez', 'perez'),
(2, 'Avenida los presidentes #1', '9514056789', 'Alain', 'Perez', 'Montes'),
(3, 'Iturbide #12', '9512345667', 'Victor', 'Lopez', 'Jimenez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directores`
--

CREATE TABLE `directores` (
  `id_director` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido_p` varchar(50) DEFAULT NULL,
  `apellido_m` varchar(50) DEFAULT NULL,
  `img` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `directores`
--

INSERT INTO `directores` (`id_director`, `nombre`, `apellido_p`, `apellido_m`, `img`) VALUES
(1, 'Reporte Mensual', '05/02/2019', 'Ingresos', 'https://img.icons8.com/ios/452/google-docs.png'),
(2, 'Reporte Trimestral', '03/09/2018', 'Ganancias Stock', 'https://img.icons8.com/ios/452/google-docs.png'),
(3, 'reporte anual', '03/02/21', 'Perdidas', 'https://img.icons8.com/ios/452/google-docs.png'),
(4, 'Reporte Mensual', '21/01/21', 'Empleados', 'https://img.icons8.com/ios/452/google-docs.png'),
(5, 'Reporte Mensual', '28/01/21', 'Mercancia', 'https://img.icons8.com/ios/452/google-docs.png'),
(6, 'Reporte Anual', '03/02/21', 'Depositos', 'https://img.icons8.com/ios/452/google-docs.png'),
(7, 'Reporte Cuatrimestral', '04/02/21', 'Ordenes', 'https://img.icons8.com/ios/452/google-docs.png'),
(15, 'Reporte Cuatrimestral', '30/02/21', 'Cuotas', 'https://img.icons8.com/ios/452/google-docs.png'),
(25, 'Informe mensual', '20/08/2018', 'Comisiones', 'https://img.icons8.com/ios/452/google-docs.png'),
(26, 'Informe mensual', '20/08/2019', 'Comisiones', 'https://img.icons8.com/ios/452/google-docs.png'),
(27, 'Informe mensual 2', '20/08/2018', 'Comisiones', 'https://img.icons8.com/ios/452/google-docs.png'),
(28, 'Informe de Gastos', '20/08/2020', 'Comisiones', 'https://img.icons8.com/ios/452/google-docs.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favicon`
--

CREATE TABLE `favicon` (
  `Img` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formatos`
--

CREATE TABLE `formatos` (
  `id_formato` int(11) NOT NULL,
  `formato` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `formatos`
--

INSERT INTO `formatos` (`id_formato`, `formato`) VALUES
(1, 'Blue-Ray'),
(2, 'VHS'),
(3, 'Streaming'),
(4, 'DVD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formatos_peliculas`
--

CREATE TABLE `formatos_peliculas` (
  `id_formato` int(11) NOT NULL,
  `id_pelicula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `formatos_peliculas`
--

INSERT INTO `formatos_peliculas` (`id_formato`, `id_pelicula`) VALUES
(1, 1),
(3, 1),
(2, 3),
(4, 2),
(1, 2),
(4, 4),
(1, 1),
(3, 1),
(2, 3),
(4, 2),
(1, 2),
(4, 4),
(1, 1),
(3, 1),
(2, 3),
(4, 2),
(1, 2),
(4, 4),
(1, 1),
(3, 1),
(2, 3),
(4, 2),
(1, 2),
(4, 4),
(1, 1),
(3, 1),
(2, 3),
(4, 2),
(1, 2),
(4, 4),
(1, 1),
(3, 1),
(2, 3),
(4, 2),
(1, 2),
(4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id_genero` int(11) NOT NULL,
  `genero` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id_genero`, `genero`) VALUES
(1, 'Terror'),
(2, 'Comedia'),
(3, 'Ciencia Ficción'),
(4, 'Romance'),
(5, 'Drama'),
(6, 'Thriller');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos_peliculas`
--

CREATE TABLE `generos_peliculas` (
  `id_genero` int(11) NOT NULL,
  `id_pelicula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `generos_peliculas`
--

INSERT INTO `generos_peliculas` (`id_genero`, `id_pelicula`) VALUES
(3, 1),
(4, 3),
(5, 2),
(3, 4),
(3, 1),
(4, 3),
(5, 2),
(3, 4),
(3, 1),
(4, 3),
(5, 2),
(3, 4),
(3, 1),
(4, 3),
(5, 2),
(3, 4),
(3, 1),
(4, 3),
(5, 2),
(3, 4),
(3, 1),
(4, 3),
(5, 2),
(3, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id_pel` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `num_copias` varchar(11) DEFAULT NULL,
  `id_director` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `urlpeliculas` text NOT NULL,
  `resumen` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id_pel`, `titulo`, `num_copias`, `id_director`, `id_categoria`, `urlpeliculas`, `resumen`) VALUES
(1, 'Coca Cola 355ml', 'Liquido', 2, 1, 'https://www.chedraui.com.mx/medias/7501055300075-00-CH1200Wx1200H?context=bWFzdGVyfHJvb3R8MTQwODUzfGltYWdlL2pwZWd8aDRjL2g4NS8xMDI1MDUwNDk5NDg0Ni5qcGd8MTNiZmZiMzM4NGMyNDYzMDEyMDExOTdhMGZlNDFmYWE5YjhhOWIwMjI3ZGMzZDRjYTIxZjFmMDQ5NWRhNDlkNg', 'Cantidad: 160'),
(2, 'Ariel 1k', 'Solvente', 2, 3, 'https://www.laranitadelapaz.com.mx/images/thumbs/0005808_detergente-ariel-polvo-91-kg_510.jpeg', 'Cantidad: 150 Kilos'),
(3, 'Sal La fina 1 k', 'Condimento', 2, 3, 'https://www.comercialtrevino.com/wp-content/uploads/1336.jpg', 'Cantidad: 60 Kilos'),
(4, 'Crujitos 40 gr', 'Golosina', 2, 2, 'https://cdn.shopify.com/s/files/1/0372/4450/2149/products/farm1_e3c0c61e-20b2-4590-b759-c2d6fc4e3d9f_1200x1200.jpg?v=1590098970', 'Cantidad: 160 Bolsas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id_perfil` int(11) NOT NULL,
  `perfil` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id_perfil`, `perfil`) VALUES
(1, 'Administrador'),
(2, 'Personal'),
(3, 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_user` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `ApellidoP` varchar(255) NOT NULL,
  `ApellidoM` varchar(255) DEFAULT NULL,
  `user` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `id_perfil` int(11) NOT NULL,
  `activo` int(1) NOT NULL,
  `img` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_user`, `Nombre`, `ApellidoP`, `ApellidoM`, `user`, `Password`, `id_perfil`, `activo`, `img`) VALUES
(38, 'Doom', 'Envase Refresco', '3', 'doom12', '12345 ', 2, 0, 'https://wololosound.com/wp-content/uploads/trade-news-dj-660x400@2x.jpg'),
(39, 'Oliver', 'Cartón de cerveza.', '2 ', 'doom12ds', '12345 ', 1, 0, 'https://media.resources.festicket.com/image/300x300/center/top/filters:quality(70)/www/artists/OliverHeldens_New2.jpg'),
(63, 'Crhristian', 'Coca Vidrio', '2', 'Cris12', '12345', 3, 1, ''),
(64, 'Juanito', 'Cervezas', '4', 'Buen estado', '545454 ', 1, 0, ''),
(65, 'Sofia', 'Coca Retornable', '2', 'Buen estado', '848484 ', 1, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videoclub`
--

CREATE TABLE `videoclub` (
  `id_vc` int(11) NOT NULL,
  `nombre_vc` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `videoclub`
--

INSERT INTO `videoclub` (`id_vc`, `nombre_vc`, `direccion`, `telefono`) VALUES
(1, 'VideoChido', 'Los presidentes #1', '9512383456'),
(2, 'VideoTICS', 'aqui merito', '89078889');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alquileres`
--
ALTER TABLE `alquileres`
  ADD PRIMARY KEY (`id_alqui`),
  ADD KEY `fk_alq_vc` (`id_vc`),
  ADD KEY `fk_alq_cl` (`id_cliente`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `directores`
--
ALTER TABLE `directores`
  ADD PRIMARY KEY (`id_director`);

--
-- Indices de la tabla `formatos`
--
ALTER TABLE `formatos`
  ADD PRIMARY KEY (`id_formato`);

--
-- Indices de la tabla `formatos_peliculas`
--
ALTER TABLE `formatos_peliculas`
  ADD KEY `fk_formato` (`id_formato`),
  ADD KEY `fk_pelicula` (`id_pelicula`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `generos_peliculas`
--
ALTER TABLE `generos_peliculas`
  ADD KEY `fk_generochingon` (`id_genero`),
  ADD KEY `fk_peliculaperrona` (`id_pelicula`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id_pel`),
  ADD KEY `fk_cat_pel` (`id_categoria`),
  ADD KEY `fk_dir_pel` (`id_director`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_us` (`id_perfil`);

--
-- Indices de la tabla `videoclub`
--
ALTER TABLE `videoclub`
  ADD PRIMARY KEY (`id_vc`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alquileres`
--
ALTER TABLE `alquileres`
  MODIFY `id_alqui` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `directores`
--
ALTER TABLE `directores`
  MODIFY `id_director` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `formatos`
--
ALTER TABLE `formatos`
  MODIFY `id_formato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id_pel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `videoclub`
--
ALTER TABLE `videoclub`
  MODIFY `id_vc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alquileres`
--
ALTER TABLE `alquileres`
  ADD CONSTRAINT `fk_alq_cl` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `fk_alq_vc` FOREIGN KEY (`id_vc`) REFERENCES `videoclub` (`id_vc`);

--
-- Filtros para la tabla `formatos_peliculas`
--
ALTER TABLE `formatos_peliculas`
  ADD CONSTRAINT `fk_formato` FOREIGN KEY (`id_formato`) REFERENCES `formatos` (`id_formato`),
  ADD CONSTRAINT `fk_pelicula` FOREIGN KEY (`id_pelicula`) REFERENCES `peliculas` (`id_pel`);

--
-- Filtros para la tabla `generos_peliculas`
--
ALTER TABLE `generos_peliculas`
  ADD CONSTRAINT `fk_generochingon` FOREIGN KEY (`id_genero`) REFERENCES `generos` (`id_genero`),
  ADD CONSTRAINT `fk_peliculaperrona` FOREIGN KEY (`id_pelicula`) REFERENCES `peliculas` (`id_pel`);

--
-- Filtros para la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD CONSTRAINT `fk_cat_pel` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`),
  ADD CONSTRAINT `fk_dir_pel` FOREIGN KEY (`id_director`) REFERENCES `directores` (`id_director`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `id_us` FOREIGN KEY (`id_perfil`) REFERENCES `perfiles` (`id_perfil`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
