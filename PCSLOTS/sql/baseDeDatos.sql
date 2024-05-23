CREATE DATABASE IF NOT EXISTS pcslots;

USE pcslots;

-- CREAR TABLAS
-- CREATE TABLE `cases` (
--   `idCase` int(11) NOT NULL,
--   `idProduct` int(11) NOT NULL,
--   `value` float NOT NULL,
--   `type` varchar(30) NOT NULL,
--   `description` text DEFAULT NULL,
--   `name` varchar(20) NOT NULL
-- );
CREATE
OR REPLACE TABLE `client` (
  `idClient` int (11) NOT NULL,
  `dni` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `cp` int (5) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL
);

CREATE
OR REPLACE TABLE `products` (
  `idProduct` int (11) NOT NULL,
  `value` float NOT NULL,
  `brand` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `description` text DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `caract` text DEFAULT NULL
);

CREATE
OR REPLACE TABLE `cart` (
  `idProduct` int (11) NOT NULL,
  `value` float NOT NULL,
  `brand` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `description` text DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `caract` text DEFAULT NULL
);

CREATE
OR REPLACE TABLE `sale` (
  `idSales` int (11) NOT NULL,
  `saleDate` date DEFAULT NULL,
  `total` double (10, 2) DEFAULT NULL,
  `idClient` int (11) DEFAULT NULL
);

CREATE
OR REPLACE TABLE `sales_line` (
  `idLines` int (11) NOT NULL,
  `idSales` int (11) NOT NULL,
  `product` int (11) NOT NULL,
  `units` int (111) NOT NULL,
  `unit_price` float NOT NULL
);

-- INSERTAR PREDETERMINADO
INSERT INTO
  products
VALUES
  (
    1,
    1299,
    "Apple",
    "Mobile",
    "iPhone 15 Pro Max. Forjado en titanio y con el revolucionario chip A17 Pro, un botón Acción personalizable y el sistema de cámaras más potente que haya tenido un iPhone.",
    "Apple iPhone 15 Pro Max 256GB Titanio Blanco Libre",
    "Pantalla: 6.7 pulgadas Super Retina XDR, tecnología ProMotion, resolución de 2796 x 1290 píxeles.;
    Procesador: Chip A17 Pro.;
    Capacidad: 256GB de almacenamiento interno.;
    Cámara Trasera: Sistema de triple cámara con lentes de 48 MP (principal), ultra gran angular de 12 MP y teleobjetivo de 12 MP.;
    Cámara Frontal: 12 MP con tecnología TrueDepth.;
    Materiales: Marco de titanio y parte trasera de vidrio.;
    Sistema Operativo: iOS 17.;
    Conectividad: 5G, Wi-Fi 6E, Bluetooth 5.3, NFC.;
    Batería: Duración de la batería mejorada con soporte para carga rápida y carga inalámbrica MagSafe.;
    Seguridad: Face ID para reconocimiento facial.;
    Otros: Resistencia al agua y polvo (IP68), compatibilidad con accesorios MagSafe.; "
  ),
  (
    2,
    739,
    "Apple",
    "Mobile",
    "iPhone 13: Tu nuevo superpoder. Nuestro sistema de cámara dual más avanzado. El chip que hace morder el polvo a la competencia. Un subidón de autonomía que vaya si notarás.",
    "Apple iPhone 13 128GB Medianoche Libre",
    "Pantalla: 6.1 pulgadas Super Retina XDR, resolución de 2532 x 1170 píxeles.;
    Procesador: Chip A15 Bionic.;
    Capacidad: 128GB de almacenamiento interno.;
    Cámara Trasera: Sistema de doble cámara con lentes de 12 MP (principal y ultra gran angular).;
    Cámara Frontal: 12 MP con tecnología TrueDepth.;
    Materiales: Parte delantera y trasera de vidrio con marco de aluminio.;
    Sistema Operativo: iOS 15 (actualizable a versiones posteriores).;
    Conectividad: 5G, Wi-Fi 6, Bluetooth 5.0, NFC.;
    Batería: Duración de la batería mejorada con soporte para carga rápida y carga inalámbrica MagSafe.;
    Seguridad: Face ID para reconocimiento facial.;
    Resistencia: Resistencia al agua y polvo (IP68).
    "
  ),
  (
    3,
    859,
    "Apple",
    "Mobile",
    "Belleza duradera con aluminio de calidad aeroespacial. Espectacular pantalla Super Retina XDR. Ceramic Shield, más duro que cualquier vidrio de smartphone.",
    "Apple iPhone 14 128GB Medianoche Libre",
    "Pantalla: 6.1 pulgadas Super Retina XDR, resolución de 2532 x 1170 píxeles.;
    Procesador: Chip A15 Bionic (con GPU de 5 núcleos).;
    Capacidad: 128GB de almacenamiento interno.;
    Cámara Trasera: Sistema de doble cámara con lentes de 12 MP (principal y ultra gran angular).;
    Cámara Frontal: 12 MP con tecnología TrueDepth.;
    Materiales: Parte delantera y trasera de vidrio con marco de aluminio.;
    Sistema Operativo: iOS 16 (actualizable a versiones posteriores).;
    Conectividad: 5G, Wi-Fi 6, Bluetooth 5.3, NFC.;
    Batería: Duración de la batería mejorada con soporte para carga rápida y carga inalámbrica MagSafe.;
    Seguridad: Face ID para reconocimiento facial.;
    Resistencia: Resistencia al agua y polvo (IP68).;
    Otros: Compatible con accesorios MagSafe.;
    "
  ),
  (
    4,
    299,
    "Samsung",
    "Mobile",
    "Galaxy A15 no pierde su icónico diseño y podrás elegirlo en tres colores: negro, azul y amarillo.",
    "Samsung Galaxy A15 8/256GB Azul Libre",
    "Pantalla: Aproximadamente 6.5 pulgadas, resolución HD+.
    Procesador: Chipset de gama media (el modelo exacto puede variar, generalmente Exynos o Snapdragon dependiendo de la región).
    Capacidad: 256GB de almacenamiento interno, expandible mediante tarjeta microSD.;
    Memoria RAM: 8GB.;
    Cámara Trasera: Sistema de triple o cuádruple cámara con un sensor principal (generalmente 48 MP o similar), una cámara ultra gran angular, una cámara macro y un sensor de profundidad.;
    Cámara Frontal: Aproximadamente 13 MP.;
    Materiales: Carcasa de plástico con acabado en color Azul.;
    Sistema Operativo: Android 13 con la capa de personalización One UI.;
    Conectividad: 4G LTE, Wi-Fi, Bluetooth 5.0, GPS, NFC.;
    Batería: Aproximadamente 5000 mAh, con soporte para carga rápida.;
    Seguridad: Sensor de huellas dactilares (ubicado en el lateral o bajo la pantalla) y reconocimiento facial.;
    Otros: Conector de auriculares de 3.5 mm, puerto USB-C.;
    "
  ),
  (
    5,
    329,
    "Samsung",
    "Mobile",
    "Este teléfono inteligente está diseñado para hacer que tu día a día sea más impresionante.",
    "Samsung Galaxy A34 5G 8/256GB Negro Libre + Protector Pantalla",
    "Pantalla: 6.6 pulgadas Super AMOLED, resolución Full HD+ (1080 x 2400 píxeles), tasa de refresco de 120Hz.;
    Procesador: MediaTek Dimensity 1080.;
    Capacidad: 256GB de almacenamiento interno, expandible mediante tarjeta microSD.;
    Memoria RAM: 8GB.;
    Cámara Trasera: Triple cámara con sensor principal de 48 MP, ultra gran angular de 8 MP y macro de 5 MP.;
    Cámara Frontal: 13 MP.;
    Materiales: Parte delantera de vidrio y trasera de plástico con acabado en color Negro.;
    Sistema Operativo: Android 13 con la capa de personalización One UI 5.1.;
    Conectividad: 5G, Wi-Fi 6, Bluetooth 5.2, GPS, NFC.;
    Batería: 5000 mAh, con soporte para carga rápida de 25W.;
    Seguridad: Sensor de huellas dactilares bajo la pantalla y reconocimiento facial.;
    Otros: Conector USB-C, sin conector de auriculares de 3.5 mm, resistencia al agua y polvo IP67.;
    Accesorios Incluidos: Protector de pantalla.;"
  ),
  (
    6,
    408,
    "Samsung",
    "Mobile",
    "Este dispositivo es una verdadera maravilla que destaca en su categoría.",
    "Samsung Galaxy A54 5G 8/128GB Violeta Libre + Protector Pantalla",
    "Pantalla: 6.4 pulgadas Super AMOLED, resolución Full HD+ (1080 x 2340 píxeles), tasa de refresco de 120Hz.;
    Procesador: Exynos 1380.;
    Capacidad: 128GB de almacenamiento interno, expandible mediante tarjeta microSD.;
    Memoria RAM: 8GB.;
    Cámara Trasera: Triple cámara con sensor principal de 50 MP, ultra gran angular de 12 MP y macro de 5 MP.;
    Cámara Frontal: 32 MP.;
    Materiales: Parte delantera de vidrio y trasera de plástico con acabado en color Violeta.;
    Sistema Operativo: Android 13 con la capa de personalización One UI 5.1.;
    Conectividad: 5G, Wi-Fi 6, Bluetooth 5.3, GPS, NFC.;
    Batería: 5000 mAh, con soporte para carga rápida de 25W.;
    Seguridad: Sensor de huellas dactilares bajo la pantalla y reconocimiento facial.;
    Otros: Conector USB-C, sin conector de auriculares de 3.5 mm, resistencia al agua y polvo IP67.;
    Accesorios Incluidos: Protector de pantalla.;
    "
  ),
  (
    7,
    449,
    "Xiaomi",
    "Mobile",
    "Redmi Note 13 Pro 5G no solo es un smartphone, es una auténtica revolución en diseño que no pasará desapercibida. Su acabado, que solo se encuentra en terminales premium, atraerá todas las miradas.",
    "Xiaomi Redmi Note 13 Pro 5G 12/512GB Negro Libre",
    "Pantalla: 6.67 pulgadas AMOLED, resolución Full HD+ (1080 x 2400 píxeles), tasa de refresco de 120Hz.;
    Procesador: Qualcomm Snapdragon 7 Gen 1.;
    Capacidad: 512GB de almacenamiento interno, no expandible mediante tarjeta microSD.;
    Memoria RAM: 12GB.;
    Cámara Trasera: Triple cámara con sensor principal de 200 MP, ultra gran angular de 8 MP y macro de 2 MP.;
    Cámara Frontal: 16 MP.;
    Materiales: Parte delantera de vidrio y trasera de plástico con acabado en color Negro.;
    Sistema Operativo: MIUI 14 basado en Android 13.;
    Conectividad: 5G, Wi-Fi 6, Bluetooth 5.2, GPS, NFC.;
    Batería: 5000 mAh, con soporte para carga rápida de 67W.;
    Seguridad: Sensor de huellas dactilares (lateral) y reconocimiento facial.;
    Otros: Conector USB-C, conector de auriculares de 3.5 mm, altavoces estéreo.;
    Resistencia: Resistencia al agua y polvo (IP53).;
    "
  ),
  (
    8,
    229,
    "Xiaomi",
    "Mobile",
    "Redmi Note 12 cuenta con una triple cámara con IA de 48MP y una pantalla AMOLED de 120 Hz y con protección Corning® Gorilla® Glass para capturar e inmortalizar cualquier imagen con la máxima resolución.",
    "Xiaomi Redmi Note 12 4/64GB Gris Libre",
    "Pantalla: 6.67 pulgadas AMOLED, resolución Full HD+ (1080 x 2400 píxeles), tasa de refresco de 120Hz.;
    Procesador: Qualcomm Snapdragon 4 Gen 1.;
    Capacidad: 64GB de almacenamiento interno, expandible mediante tarjeta microSD.;
    Memoria RAM: 4GB.;
    Cámara Trasera: Triple cámara con sensor principal de 50 MP, ultra gran angular de 8 MP y macro de 2 MP.;
    Cámara Frontal: 13 MP.;
    Materiales: Parte delantera de vidrio y trasera de plástico con acabado en color Gris.;
    Sistema Operativo: MIUI 13 basado en Android 12.;
    Conectividad: 4G LTE, Wi-Fi 5, Bluetooth 5.1, GPS, NFC.;
    Batería: 5000 mAh, con soporte para carga rápida de 33W.;
    Seguridad: Sensor de huellas dactilares (lateral) y reconocimiento facial.;
    Otros: Conector USB-C, conector de auriculares de 3.5 mm, altavoces estéreo.;
    Resistencia: Resistencia al agua y polvo (IP53).;
    "
  ),
  (
    9,
    399,
    "Xiaomi",
    "Mobile",
    "Redmi Note 13 Pro no solo es un smartphone, es una auténtica revolución en diseño que no pasará desapercibida.",
    "Xiaomi Redmi Note 13 Pro 12/512GB Negro Libre",
    "Pantalla: 6.67 pulgadas OLED, resolución Full HD+ (1080 x 2400 píxeles), tasa de refresco de 120Hz.;
    Procesador: Qualcomm Snapdragon 7s Gen 2.;
    Capacidad: 512GB de almacenamiento interno, no expandible mediante tarjeta microSD.;
    Memoria RAM: 12GB.;
    Cámara Trasera: Triple cámara con sensor principal de 200 MP, ultra gran angular de 8 MP y macro de 2 MP.;
    Cámara Frontal: 16 MP.;
    Materiales: Parte delantera de vidrio y trasera de plástico con acabado en color Negro.;
    Sistema Operativo: MIUI 14 basado en Android 13.;
    Conectividad: 5G, Wi-Fi 6, Bluetooth 5.2, GPS, NFC.;
    Batería: 5100 mAh, con soporte para carga rápida de 67W.;
    Seguridad: Sensor de huellas dactilares (lateral) y reconocimiento facial.;
    Otros: Conector USB-C, sin conector de auriculares de 3.5 mm, altavoces estéreo.;
    Resistencia: Resistencia al agua y polvo (IP53).;"
  ),
  (
    10,
    1239,
    "Gigabyte",
    "Laptops",
    "La computadora portátil para juegos GIGABYTE ofrece elementos de juego completamente nuevos de las tendencias futuras, combinados con un potente rendimiento de próxima generación.",
    "Gigabyte G5 KF5-53ES353SH Intel Core i5-13500H/16GB/512GB SSD/RTX 4060/15.6",
    "Procesador: Intel Core i5-13500H;
    Memoria RAM: 16 GB;
    Almacenamiento: 512 GB SSD;
    Tarjeta Gráfica: NVIDIA GeForce RTX 4060;
    Pantalla: 15.6 pulgadas;
    "
  ),
  (
    11,
    1549,
    "Acer",
    "Desktop",
    "Una PC potente y compacta ansiosa por poner a prueba su procesador Intel® Core™ i7 de 12.ª generación.",
    "Acer Predator Orion 3000 PO3-640 Intel Core i5-12400F/16 GB/1TB SSD/RTX 3070",
    "Procesador: Intel Core i5-12400F;
    Memoria RAM: 16 GB;
    Almacenamiento: 1 TB SSD;
    Tarjeta Gráfica: NVIDIA GeForce RTX 3070;
    "
  ),
  (
    12,
    279,
    "Lenovo",
    "Tablet",
    "No hay nada como la deslumbrante pantalla IPS 2K de 26,92 de la Tab M10 Plus de 3.ª generación de 2023.",
    "Lenovo Tab M10 Plus Gen 3 2023 2K 4/128GB Gris + Funda + Pen",
    "Pantalla: 10.61 pulgadas con resolución 2K;
    Memoria RAM: 4 GB;
    Almacenamiento: 128 GB;
    Color: Gris;
    Accesorios incluidos: Funda y Pen (lápiz);
    "
  ),
  (
    13,
    224,
    "Origial",
    "Other",
    "Con la lavadora ORIWM5DW de la marca Origial cuida tu ropa para que quede como nueva mucho más tiempo, seleccionando el programa adecuado entre las 15 opciones disponibles.",
    "Origial ORIWM5DW Prowash Lavadora Carga Frontal 5Kg D Blanca",
    "Tipo: Lavadora de carga frontal;
    Capacidad de carga: 5 kg;
    Color: Blanca;
    Clasificación energética: D (según estándares de eficiencia energética);
    Funciones adicionales: Diversos programas de lavado para diferentes tipos de ropa y niveles de suciedad;
    "
  );

-- CLIENTES
INSERT INTO `client` (`idClient`, `dni`, `username`, `name`, `lastname`, `province`, `cp`, `address`) VALUES
(1, '12345678A', 'jdoe', 'John', 'Doe', 'Madrid', 28001, 'Calle Falsa 123'),
(2, '23456789B', 'asmith', 'Alice', 'Smith', 'Barcelona', 08001, 'Avenida Siempre Viva 742'),
(3, '34567890C', 'bwhite', 'Bob', 'White', 'Valencia', 46001, 'Calle Luna 456'),
(4, '45678901D', 'cjohnson', 'Charlie', 'Johnson', 'Sevilla', 41001, 'Calle Sol 789'),
(5, '56789012E', 'ddavis', 'David', 'Davis', 'Bilbao', 48001, 'Calle Mar 123'),
(6, '67890123F', 'eclark', 'Eva', 'Clark', 'Zaragoza', 50001, 'Calle Tierra 456'),
(7, '78901234G', 'fmartin', 'Frank', 'Martin', 'Málaga', 29001, 'Calle Viento 789'),
(8, '89012345H', 'glopez', 'Grace', 'Lopez', 'Murcia', 30001, 'Calle Fuego 123'),
(9, '90123456I', 'hharris', 'Henry', 'Harris', 'Granada', 18001, 'Calle Agua 456'),
(10, '01234567J', 'ikim', 'Irene', 'Kim', 'Alicante', 03001, 'Calle Madera 789');

-- Insert 30 records into the sale table
INSERT INTO `sale` (`idSales`, `saleDate`, `total`, `idClient`) VALUES
(1, '2023-01-15', 1299.00, 1),
(2, '2023-01-16', 739.00, 2),
(3, '2023-01-17', 859.00, 3),
(4, '2023-01-18', 299.00, 4),
(5, '2023-01-19', 329.00, 5),
(6, '2023-01-20', 408.00, 6),
(7, '2023-01-21', 449.00, 7),
(8, '2023-01-22', 229.00, 8),
(9, '2023-01-23', 399.00, 9),
(10, '2023-01-24', 1239.00, 10),
(11, '2023-01-25', 1549.00, 1),
(12, '2023-01-26', 279.00, 2),
(13, '2023-01-27', 224.00, 3),
(14, '2023-01-28', 699.00, 4),
(15, '2023-01-29', 329.00, 5),
(16, '2023-01-30', 859.00, 6),
(17, '2023-02-01', 739.00, 7),
(18, '2023-02-02', 449.00, 8),
(19, '2023-02-03', 229.00, 9),
(20, '2023-02-04', 408.00, 10),
(21, '2023-02-05', 1299.00, 1),
(22, '2023-02-06', 1239.00, 2),
(23, '2023-02-07', 1549.00, 3),
(24, '2023-02-08', 299.00, 4),
(25, '2023-02-09', 329.00, 5),
(26, '2023-02-10', 739.00, 6),
(27, '2023-02-11', 859.00, 7),
(28, '2023-02-12', 399.00, 8),
(29, '2023-02-13', 449.00, 9),
(30, '2023-02-14', 229.00, 10);

-- Insert 30 records into the sales_line table
INSERT INTO `sales_line` (`idLines`, `idSales`, `product`, `units`, `unit_price`) VALUES
(1, 1, 1, 1, 1299.00),
(2, 2, 2, 1, 739.00),
(3, 3, 3, 1, 859.00),
(4, 4, 4, 1, 299.00),
(5, 5, 5, 1, 329.00),
(6, 6, 6, 1, 408.00),
(7, 7, 7, 1, 449.00),
(8, 8, 8, 1, 229.00),
(9, 9, 9, 1, 399.00),
(10, 10, 10, 1, 1239.00),
(11, 11, 11, 1, 1549.00),
(12, 12, 12, 1, 279.00),
(13, 13, 13, 1, 224.00),
(14, 14, 1, 1, 699.00),
(15, 15, 2, 1, 329.00),
(16, 16, 3, 1, 859.00),
(17, 17, 4, 1, 739.00),
(18, 18, 5, 1, 449.00),
(19, 19, 6, 1, 229.00),
(20, 20, 7, 1, 408.00),
(21, 21, 8, 1, 1299.00),
(22, 22, 9, 1, 1239.00),
(23, 23, 10, 1, 1549.00),
(24, 24, 11, 1, 299.00),
(25, 25, 12, 1, 329.00),
(26, 26, 13, 1, 739.00),
(27, 27, 1, 1, 859.00),
(28, 28, 2, 1, 399.00),
(29, 29, 3, 1, 449.00),
(30, 30, 4, 1, 229.00);

-- HACER CLAVES PRIMARIAS
-- ALTER TABLE `cases` ADD PRIMARY KEY (`idCase`);
ALTER TABLE `client` ADD PRIMARY KEY (`idClient`);



ALTER TABLE `sales_line` ADD PRIMARY KEY (`idLines`);

-- HACER QUE SEAN INCREMENTABLES
-- ALTER TABLE `cases`
--   MODIFY `idCase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;



ALTER TABLE `sales_line` MODIFY `idLines` int (11) NOT NULL AUTO_INCREMENT;

