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
  )
  -- ,(
  -- ,
  -- ,
  -- "",
  -- "",
  -- "",
  -- "",
  -- ""
  -- )
;

-- HACER CLAVES PRIMARIAS
-- ALTER TABLE `cases` ADD PRIMARY KEY (`idCase`);
ALTER TABLE `client` ADD PRIMARY KEY (`idClient`);

ALTER TABLE `products` ADD PRIMARY KEY (`idProduct`);

ALTER TABLE `sale` ADD PRIMARY KEY (`idSales`);

ALTER TABLE `sales_line` ADD PRIMARY KEY (`idLines`);

-- HACER QUE SEAN INCREMENTABLES
-- ALTER TABLE `cases`
--   MODIFY `idCase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
ALTER TABLE `client` MODIFY `idClient` int (11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `products` MODIFY `idProduct` int (11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 10;

ALTER TABLE `sale` MODIFY `idSales` int (11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sales_line` MODIFY `idLines` int (11) NOT NULL AUTO_INCREMENT;