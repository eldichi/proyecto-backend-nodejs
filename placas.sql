-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 29, 2024 at 06:37 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `placas`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Antihumedad'),
(2, 'Cielorrasos'),
(3, 'Decorativos'),
(4, 'Exterior');

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `id` int NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `cuil` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `password`, `cuil`) VALUES
(1, 'Juan Pérez', 'juan.perez@example.com', '+123456789', 'clave123', '20-12345678-9'),
(2, 'María Gómez', 'maria.gomez@example.com', '+987654321', 'password456', '27-87654321-8'),
(3, 'Carlos López', 'carlos.lopez@example.com', '+1122334455', 'segura789', '23-11223344-7'),
(4, 'Ana Martínez', 'ana.martinez@example.com', '+9988776655', 'contraseña123', '24-99887766-6'),
(5, 'Luis Rodríguez', 'luis.rodriguez@example.com', '+5544332211', 'seguridad456', '21-55443322-5'),
(6, 'Laura Sánchez', 'laura.sanchez@example.com', '+6677889900', 'clave567', '25-66778899-4'),
(7, 'Pedro García', 'pedro.garcia@example.com', '+1122334455', 'contraseña890', '26-11223344-3'),
(8, 'Elena Ramírez', 'elena.ramirez@example.com', '+9988776655', 'password789', '28-99887766-2'),
(9, 'Sara López', 'sara.lopez@example.com', '+5544332211', 'clave890', '29-55443322-1'),
(10, 'Javier Ruiz', 'javier.ruiz@example.com', '+6677889900', 'segura567', '30-66778899-0');

-- --------------------------------------------------------

--
-- Table structure for table `compras`
--

CREATE TABLE `compras` (
  `id` int NOT NULL,
  `cliente_id` int DEFAULT NULL,
  `fecha` date NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `compras`
--

INSERT INTO `compras` (`id`, `cliente_id`, `fecha`, `total`) VALUES
(1, 1, '2024-06-01', 19487),
(2, 2, '2024-06-02', 39056),
(3, 3, '2024-06-03', 38974),
(4, 4, '2024-06-04', 23113),
(5, 5, '2024-06-05', 27559),
(6, 6, '2024-06-06', 18999),
(7, 7, '2024-06-07', 31998),
(8, 8, '2024-06-08', 37777),
(9, 9, '2024-06-09', 14000),
(10, 10, '2024-06-10', 32999),
(11, 1, '2024-06-11', 15000),
(12, 2, '2024-06-12', 25000),
(13, 3, '2024-06-13', 18000),
(14, 4, '2024-06-14', 16000),
(15, 5, '2024-06-15', 22000),
(16, 6, '2024-06-16', 14000),
(17, 7, '2024-06-17', 27000),
(18, 8, '2024-06-18', 23000),
(19, 9, '2024-06-19', 5000),
(20, 10, '2024-06-20', 21000);

-- --------------------------------------------------------

--
-- Table structure for table `compra_productos`
--

CREATE TABLE `compra_productos` (
  `compra_id` int DEFAULT NULL,
  `producto_id` int DEFAULT NULL,
  `cantidad` int NOT NULL,
  `subtotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `compra_productos`
--

INSERT INTO `compra_productos` (`compra_id`, `producto_id`, `cantidad`, `subtotal`) VALUES
(1, 1, 2, 11998),
(2, 2, 2, 15059),
(3, 3, 4, 23996),
(4, 4, 2, 15554),
(5, 5, 2, 20000),
(6, 6, 1, 12000),
(7, 7, 2, 20000),
(8, 8, 3, 30000),
(9, 12, 2, 4000),
(10, 13, 5, 25000),
(11, 14, 3, 15000),
(12, 15, 5, 25000),
(13, 16, 3, 18000),
(14, 17, 4, 16000),
(15, 18, 8, 22000),
(16, 19, 4, 14000),
(17, 20, 9, 27000),
(18, 21, 5, 23000),
(19, 22, 1, 5000),
(20, 23, 7, 21000),
(1, 9, 1, 7489),
(2, 10, 3, 23997),
(3, 7, 2, 14978),
(4, 5, 1, 7559),
(5, 2, 1, 7559),
(6, 8, 1, 6999),
(7, 3, 2, 11998),
(8, 4, 1, 7777),
(9, 15, 2, 10000),
(10, 11, 1, 7999);

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `precio` double NOT NULL,
  `espesor` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `medidas` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `cubre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `stock` int NOT NULL,
  `cant_unidades` int NOT NULL,
  `categoria_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `espesor`, `medidas`, `cubre`, `stock`, `cant_unidades`, `categoria_id`) VALUES
(1, 'modelo traverlite', 5999, '1cm', '30x60cm', '2,16m2', 100, 12, 1),
(2, 'modelo mar del plata', 7559, '1cm', '30x60cm', '2,16m2', 200, 12, 1),
(3, 'modelo travertino', 5999, '1cm', '30x60cm', '2,16m2', 150, 12, 1),
(4, 'modelo panal', 7777, '1cm', '30x60cm', '2,16m2', 200, 12, 1),
(5, 'modelo marmol', 7559, '1cm', '30x60cm', '2,16m2', 100, 12, 1),
(6, 'modelo ladrillo vista', 11199, '1cm', '30x60cm', '2,16m2', 150, 12, 1),
(7, 'modelo laja', 7489, '1cm', '30x60cm', '2,16m2', 100, 12, 1),
(8, 'modelo sol', 6999, '1cm', '30x60cm', '2,16m2', 300, 12, 1),
(9, 'modelo flor', 7489, '1cm', '30x60cm', '2,16m2', 100, 12, 1),
(10, 'modelo piedra', 7999, '1cm', '30x60cm', '2,16m2', 120, 12, 1),
(11, 'cielorraso básico', 2000, '0.8cm', '60x60cm', '4.32m2', 100, 12, 2),
(12, 'cielorraso acústico', 3500, '0.8cm', '60x60cm', '4.32m2', 80, 12, 2),
(13, 'cielorraso decorativo', 5000, '0.8cm', '60x60cm', '4.32m2', 50, 12, 2),
(14, 'cielorraso aislante', 4000, '0.8cm', '60x60cm', '4.32m2', 70, 12, 2),
(15, 'cielorraso reflectivo', 4500, '0.8cm', '60x60cm', '4.32m2', 60, 12, 2),
(16, 'panel decorativo 3D', 6000, '1cm', '50x50cm', '2.5m2', 90, 10, 3),
(17, 'papel tapiz floral', 1500, '0.1cm', '50x50cm', '2.5m2', 200, 10, 3),
(18, 'vinilo adhesivo', 2500, '0.1cm', '50x50cm', '2.5m2', 120, 10, 3),
(19, 'vinilo decorativo', 2700, '0.1cm', '50x50cm', '2.5m2', 130, 10, 3),
(20, 'mosaico decorativo', 5000, '0.8cm', '30x30cm', '7.5m2', 80, 25, 3),
(21, 'pintura exterior', 5500, '0.1cm', '10L', '50m2', 50, 1, 4),
(22, 'revestimiento exterior', 8000, '1.5cm', '20kg', '10m2', 30, 1, 4),
(23, 'impermeabilizante', 7000, '0.1cm', '5L', '25m2', 70, 1, 4),
(24, 'barniz exterior', 4000, '0.1cm', '4L', '20m2', 60, 1, 4),
(25, 'protector para madera', 4500, '0.1cm', '4L', '15m2', 40, 1, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`);

--
-- Indexes for table `compra_productos`
--
ALTER TABLE `compra_productos`
  ADD KEY `compra_id` (`compra_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);

--
-- Constraints for table `compra_productos`
--
ALTER TABLE `compra_productos`
  ADD CONSTRAINT `compra_productos_ibfk_1` FOREIGN KEY (`compra_id`) REFERENCES `compras` (`id`),
  ADD CONSTRAINT `compra_productos_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Constraints for table `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
