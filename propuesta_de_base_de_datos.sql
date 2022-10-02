-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2022 at 08:47 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `propuesta_de_base_de_datos`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrador`
--

CREATE TABLE `administrador` (
  `Id_Administrador` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `Cargo` text NOT NULL,
  `Telefono` char(15) NOT NULL,
  `Dirección` varchar(45) NOT NULL,
  `Correo` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `Id_Cliente` int(11) NOT NULL,
  `Nombre_De_Cliente` text NOT NULL,
  `Dirección` varchar(50) NOT NULL,
  `Correo` varchar(25) NOT NULL,
  `Teléfono` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `elementos_de_linea`
--

CREATE TABLE `elementos_de_linea` (
  `Id_Producto` int(11) NOT NULL,
  `Id_Factura` int(11) NOT NULL,
  `Cantidad` char(10) NOT NULL,
  `Precio_Total` varchar(50) NOT NULL,
  `Fecha_De_Compra` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `factura`
--

CREATE TABLE `factura` (
  `Id_Factura` int(11) NOT NULL,
  `Id_Cliente` int(11) NOT NULL,
  `Cantidad` char(25) NOT NULL,
  `Precio` char(25) NOT NULL,
  `Total` char(20) NOT NULL,
  `Fecha_De_Pedido` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `Id_Producto` int(11) NOT NULL,
  `Nombre_Del_Producto` text NOT NULL,
  `Precio_Por_Unidad` char(10) NOT NULL,
  `Numero_De_Existencias` char(10) NOT NULL,
  `Categoría` text NOT NULL,
  `Descuento` decimal(5,0) NOT NULL,
  `Cantidad_Total_De_Existencias` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`, `name`) VALUES
(1, 'admin', '123', 'admin'),
(2, 'john', 'abc', 'John');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`Id_Administrador`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Id_Cliente`);

--
-- Indexes for table `elementos_de_linea`
--
ALTER TABLE `elementos_de_linea`
  ADD UNIQUE KEY `Id_Producto` (`Id_Producto`,`Id_Factura`);

--
-- Indexes for table `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`Id_Factura`),
  ADD UNIQUE KEY `Id_Cliente` (`Id_Cliente`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`Id_Producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
