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
    "iPhone 15 Pro Max. Forged from titanium and featuring the revolutionary A17 Pro chip, a customizable Action button and the most powerful camera system ever on an iPhone.",
    "Apple iPhone 15 Pro Max 256GB Titanium White Free",
    "Display: 6.7 inches Super Retina XDR, ProMotion technology, resolution of 2796 x 1290 pixels.;
    Processor: A17 Pro Chip.;
    Capacity: 256GB internal storage.;
    Rear Camera: Triple camera system with 48 MP (main), 12 MP ultra wide angle and 12 MP telephoto lenses.;
    Front Camera: 12 MP with TrueDepth technology.;
    Materials: Titanium frame and glass back.;
    Operating System: iOS 17.;
    Connectivity: 5G, Wi-Fi 6E, Bluetooth 5.3, NFC.;
    Battery: Improved battery life with support for fast charging and MagSafe wireless charging.;
    Security: Face ID for facial recognition;
    Others: Water and dust resistance (IP68), compatibility with MagSafe accessories.; "
  ),
  (
    2,
    739,
    "Apple",
    "Mobile",
    "iPhone 13: Your new superpower. Our most advanced dual camera system. The chip that makes the competition bite the dust. A boost in autonomy that you will definitely notice.",
    "Apple iPhone 13 128GB Midnight Free",
    "Display: 6.1 inches Super Retina XDR, resolution of 2532 x 1170 pixels.;
    Processor: A15 Bionic Chip.;
    Capacity: 128GB internal storage.;
    Rear Camera: Dual camera system with 12 MP lenses (main and ultra wide angle).;
    Front Camera: 12 MP with TrueDepth technology.;
    Materials: Glass front and back with aluminum frame.;
    Operating System: iOS 15 (upgradable to later versions).;
    Connectivity: 5G, Wi-Fi 6, Bluetooth 5.0, NFC.;
    Battery: Improved battery life with support for fast charging and MagSafe wireless charging.;
    Security: Face ID for facial recognition;
    Resistance: Water and dust resistance (IP68).
    "
  ),
  (
    3,
    859,
    "Apple",
    "Mobile",
    "Long-lasting beauty with aerospace-grade aluminum. Spectacular Super Retina XDR display. Ceramic Shield, harder than any smartphone glass.",
    "Apple iPhone 14 128GB Midnight Free",
    "Display: 6.1 inches Super Retina XDR, resolution of 2532 x 1170 pixels.;
    Processor: A15 Bionic Chip (with 5-core GPU).;
    Capacity: 128GB internal storage;
    Rear Camera: Dual camera system with 12 MP lenses (main and ultra wide angle).;
    Front Camera: 12 MP with TrueDepth technology.;
    Materials: Glass front and back with aluminum frame.;
    Operating System: iOS 16 (upgradable to later versions).;
    Connectivity: 5G, Wi-Fi 6, Bluetooth 5.3, NFC.;
    Battery: Improved battery life with support for fast charging and MagSafe wireless charging.;
    Security: Face ID for facial recognition;
    Resistance: Water and dust resistance (IP68).;
    Others: Compatible with MagSafe accessories.;
    "
  ),
  (
    4,
    299,
    "Samsung",
    "Mobile",
    "Galaxy A15 does not lose its iconic design and you can choose it in three colors: black, blue and yellow.",
    "Samsung Galaxy A15 8/256GB Blue Free",
    "Screen: Approximately 6.5 inches, HD+ resolution.
    Processor: Mid-range chipset (exact model may vary, usually Exynos or Snapdragon depending on region).
    Capacity: 256GB internal storage, expandable via microSD card.;
    RAM memory: 8GB.;
    Rear Camera: Triple or quad camera system with a main sensor (generally 48 MP or similar), an ultra wide angle camera, a macro camera and a depth sensor.;
    Front Camera: Approximately 13 MP.;
    Materials: Plastic casing with blue finish.;
    Operating System: Android 13 with the One UI customization layer.;
    Connectivity: 4G LTE, Wi-Fi, Bluetooth 5.0, GPS, NFC.;
    Battery: Approximately 5000 mAh, with support for fast charging.;
    Security: Fingerprint sensor (located on the side or under the screen) and facial recognition.;
    Others: 3.5mm headphone jack, USB-C port;
    "
  ),
  (
    5,
    329,
    "Samsung",
    "Mobile",
    "This smartphone is designed to make your everyday life more impressive.",
    "Samsung Galaxy A34 5G 8/256GB Black Free + Screen Protector",
    "Display: 6.6 inches Super AMOLED, Full HD+ resolution (1080 x 2400 pixels), 120Hz refresh rate.;
    Processor: MediaTek Dimensity 1080.;
    Capacity: 256GB internal storage, expandable via microSD card.;
    RAM memory: 8GB.;
    Rear Camera: Triple camera with 48 MP main sensor, 8 MP ultra wide angle and 5 MP macro.;
    Front Camera: 13 MP.;
    Materials: Glass front and plastic back with Black finish.;
    Operating System: Android 13 with the One UI 5.1 customization layer;
    Connectivity: 5G, Wi-Fi 6, Bluetooth 5.2, GPS, NFC.;
    Battery: 5000 mAh, with support for 25W fast charging.;
    Security: Fingerprint sensor under the screen and facial recognition;
    Others: USB-C connector, without 3.5 mm headphone jack, IP67 water and dust resistance.;
    Accessories Included: Screen Protector.;"
  ),
  (
    6,
    408,
    "Samsung",
    "Mobile",
    "This device is a true marvel that stands out in its category.",
    "Samsung Galaxy A54 5G 8/128GB Violet Free + Screen Protector",
    "Display: 6.4 inches Super AMOLED, Full HD+ resolution (1080 x 2340 pixels), 120Hz refresh rate.;
    Processor: Exynos 1380.;
    Capacity: 128GB of internal storage, expandable via microSD card.;
    RAM memory: 8GB.;
    Rear Camera: Triple camera with 50 MP main sensor, 12 MP ultra wide angle and 5 MP macro.;
    Front Camera: 32 MP.;
    Materials: Glass front and plastic back with a Violet finish.;
    Operating System: Android 13 with the One UI 5.1 customization layer;
    Connectivity: 5G, Wi-Fi 6, Bluetooth 5.3, GPS, NFC.;
    Battery: 5000 mAh, with support for 25W fast charging.;
    Security: Fingerprint sensor under the screen and facial recognition;
    Others: USB-C connector, without 3.5 mm headphone jack, IP67 water and dust resistance.;
    Accessories Included: Screen Protector.;
    "
  ),
  (
    7,
    449,
    "Xiaomi",
    "Mobile",
    "Redmi Note 13 Pro 5G is not only a smartphone, it is a true revolution in design that will not go unnoticed. Its finish, which is only found in premium terminals, will attract everyone's attention.",
    "Xiaomi Redmi Note 13 Pro 5G 12/512GB Black Free",
    "Display: 6.67 inches AMOLED, Full HD+ resolution (1080 x 2400 pixels), 120Hz refresh rate.;
    Processor: Qualcomm Snapdragon 7 Gen 1.;
    Capacity: 512GB of internal storage, not expandable via microSD card.;
    RAM memory: 12GB.;
    Rear Camera: Triple camera with 200 MP main sensor, 8 MP ultra wide angle and 2 MP macro.;
    Front Camera: 16 MP.;
    Materials: Glass front and plastic back with Black finish.;
    Operating System: MIUI 14 based on Android 13.;
    Connectivity: 5G, Wi-Fi 6, Bluetooth 5.2, GPS, NFC.;
    Battery: 5000 mAh, with support for 67W fast charging.;
    Security: Fingerprint sensor (side) and facial recognition;
    Others: USB-C connector, 3.5mm headphone jack, stereo speakers.;
    Resistance: Water and dust resistance (IP53).;
    "
  ),
  (
    8,
    229,
    "Xiaomi",
    "Mobile",
    "Redmi Note 12 has a 48MP AI triple camera and a 120 Hz AMOLED screen and Corning® Gorilla® Glass protection to capture and immortalize any image with maximum resolution.",
    "Xiaomi Redmi Note 12 4/64GB Gray Free",
    "Display: 6.67 inches AMOLED, Full HD+ resolution (1080 x 2400 pixels), 120Hz refresh rate.;
    Processor: Qualcomm Snapdragon 4 Gen 1.;
    Capacity: 64GB of internal storage, expandable via microSD card.;
    RAM memory: 4GB.;
    Rear Camera: Triple camera with 50 MP main sensor, 8 MP ultra wide angle and 2 MP macro.;
    Front Camera: 13 MP.;
    Materials: Glass front and plastic back with Gray finish.;
    Operating System: MIUI 13 based on Android 12.;
    Connectivity: 4G LTE, Wi-Fi 5, Bluetooth 5.1, GPS, NFC.;
    Battery: 5000 mAh, with support for 33W fast charging.;
    Security: Fingerprint sensor (side) and facial recognition;
    Others: USB-C connector, 3.5mm headphone jack, stereo speakers.;
    Resistance: Water and dust resistance (IP53).;
    "
  ),
  (
    9,
    399,
    "Xiaomi",
    "Mobile",
    "Redmi Note 13 Pro is not only a smartphone, it is a true revolution in design that will not go unnoticed.",
    "Xiaomi Redmi Note 13 Pro 12/512GB Black Unlocked",
    "Display: 6.67 inches OLED, Full HD+ resolution (1080 x 2400 pixels), 120Hz refresh rate.;
    Processor: Qualcomm Snapdragon 7s Gen 2.;
    Capacity: 512GB of internal storage, not expandable via microSD card.;
    RAM memory: 12GB.;
    Rear Camera: Triple camera with 200 MP main sensor, 8 MP ultra wide angle and 2 MP macro.;
    Front Camera: 16 MP.;
    Materials: Glass front and plastic back with Black finish.;
    Operating System: MIUI 14 based on Android 13.;
    Connectivity: 5G, Wi-Fi 6, Bluetooth 5.2, GPS, NFC.;
    Battery: 5100 mAh, with support for 67W fast charging.;
    Security: Fingerprint sensor (side) and facial recognition;
    Others: USB-C connector, no 3.5mm headphone jack, stereo speakers.;
    Resistance: Water and dust resistance (IP53).;"
  ),
  (
    10,
    1239,
    "Gigabyte",
    "Laptop",
    "The GIGABYTE gaming laptop offers completely new gaming elements of future trends, combined with powerful next-generation performance.",
    "Gigabyte G5 KF5-53ES353SH Intel Core i5-13500H/16GB/512GB SSD/RTX 4060/15.6",
    "Processor: Intel Core i5-13500H;
    RAM memory: 16 GB;
    Storage: 512GB SSD;
    Graphics Card: NVIDIA GeForce RTX 4060;
    Screen: 15.6 inches;
    "
  ),
  (
    11,
    1549,
    "Acer",
    "Desktop",
    "A powerful, compact PC eager to put its 12th Gen Intel® Core™ i7 processor to the test.",
    "Acer Predator Orion 3000 PO3-640 Intel Core i5-12400F/16GB/1TB SSD/RTX 3070",
    "Processor: Intel Core i5-12400F;
    RAM memory: 16 GB;
    Storage: 1TB SSD;
    Graphics Card: NVIDIA GeForce RTX 3070;
    "
  ),
  (
    12,
    279,
    "Lenovo",
    "Tablet",
    "There's nothing like the stunning 26.92 inches 2K IPS display on the 2023 Tab M10 Plus 3rd Gen.",
    "Lenovo Tab M10 Plus Gen 3 2023 2K 4/128GB Gray + Case + Pen",
    "
    Display: 10.61 inches with 2K resolution;
    RAM memory: 4 GB;
    Storage: 128 GB;
    Gray;
    Accessories included: Case and Pen;
    "
  ),
  (
    13,
    224,
    "Origial",
    "Other",
    "With the ORIWM5DW washing machine from the Origial brand, take care of your clothes so that they stay like new for much longer, selecting the appropriate program among the 15 available options.",
    "Origial ORIWM5DW Prowash Front Load Washing Machine 5Kg D White",
    "Type: Front loading washing machine;
    Load capacity: 5kg;
    Color: White;
    Energy classification: D (according to energy efficiency standards);
    Additional functions: Various washing programs for different types of clothing and levels of dirt;
    "
  ),
  (
    14,
    363,
    "Realme",
    "Mobile",
    "The Realme 12 Pro 5G is a smartphone that combines elegant design with exceptional performance.",
    "Realme 12 Pro 5G 12/256GB Blue Free",
    "Display: 6.7 inches AMOLED, Full HD+ resolution (1080 x 2400 pixels), 120Hz refresh rate.;
    Processor: MediaTek Dimensity 1200.;
    Capacity: 256GB internal storage, not expandable via microSD card.;
    RAM memory: 8GB.;
    Rear Camera: Triple camera with 108 MP main sensor, 12 MP ultra wide angle and 8 MP telephoto.;
    Front Camera: 32 MP.;
    Materials: Glass front and glass back with Blue finish.;
    Operating System: realme UI 4.0 based on Android 13.;
    Connectivity: 5G, Wi-Fi 6, Bluetooth 5.3, GPS, NFC.;
    Battery: 5000 mAh, with support for 65W fast charging.;
    Security: Fingerprint sensor (integrated in screen) and facial recognition;
    Others: USB-C connector, no 3.5mm headphone jack, stereo speakers.;
    Resistance: Water and dust resistance (IP54).;"
  ),
  (
    15,
    899,
    "Gigabyte",
    "Laptop",
    "The GIGABYTE gaming laptop offers completely new gaming elements of future trends, combined with powerful next-generation performance.",
    "Gigabyte G5 KF5-53ES353SH",
    "Display: 15.6 inches IPS, Full HD resolution (1920 x 1080 pixels), 144Hz refresh rate.;
    Processor: Intel Core i5-12500H.;
    Capacity: 512GB SSD internal storage.;
    RAM memory: 16GB DDR4.;
    Graphics Card: NVIDIA GeForce RTX 4060 with 8GB of VRAM.;
    Front Camera: HD (720p).;
    Materials: Plastic chassis with black finish.;
    Operating System: Windows 11 Home.;
    Connectivity: Wi-Fi 6, Bluetooth 5.2, Ethernet.;
    Ports: 1x USB-C, 3x USB-A 3.2, 1x HDMI 2.0, 1x Mini DisplayPort, 1x RJ45, 1x SD card reader, 1x headphone/microphone jack (3.5 mm).;
    Battery: 48.96 Wh, with 150W power adapter.;
    Keyboard: RGB backlit keyboard;
    Audio: Stereo speakers with DTS:X Ultra technology;
    Security: Fingerprint reader.;
    Weight: 2.2 kg.;
    Dimensions: 361 x 258 x 27.9 mm.;"
  )
  ,(
    16,
    929,
    "HP", 
    "Laptop",
    "La potencia de un ordenador de sobremesa en un equipo portátil. El portátil HP Victus se ha diseñado para jugar en máxima calidad. Este elegante portátil cuenta con un potente procesador AMD y gráficos NVIDIA.",
    "HP Victus 15-fb1002ns AMD Ryzen 5 7535HS/16GB/512GB SSD/RTX 2050/15.6",
    "Procesador: AMD Ryzen 5 7535HS;
    Memoria RAM: 16 GB;
    Almacenamiento: 512 GB SSD;
    Tarjeta gráfica: NVIDIA GeForce RTX 2050;
    Tamaño de pantalla: 15.6 pulgadas."
  )
  ,(
    17,
    1349,
    "Lenovo",
    "Laptop",
    "Reúne a tu escuadrón y zambúllete en los juegos para PC con estos dispositivos diseñados para sobrepasar los límites. Las plataformas de gaming Lenovo LOQ proporcionan toda la potencia que necesitas gracias a su procesadores de alta gama y sus GPU NVIDIA® GeForce RTX™. ",
    "Lenovo LOQ 15IRH8 Intel Core i7-13620H/16GB/512GB SSD/RTX 4060/15.6",
    "Procesador: Intel Core i7-13620H;
    Memoria RAM: 16GB;
    Almacenamiento: 512GB SSD;
    Tarjeta gráfica: NVIDIA GeForce RTX 4060;
    Pantalla: 15.6 pulgadas."
  )
  ,(
    18,
    1099,
    "Acer",
    "Laptop",
    "Lleva tus aventuras gaming a otro nivel con el Acer Nitro V 15, tu pasaporte a un viaje cargado de adrenalina. Este portátil es la combinación perfecta de potencia y estilo, ya que supera los límites de lo que es posible en un portátil.",
    "Acer Nitro V 15 ANV15-51-579P Intel Core i5-13420H/16GB/512GB SSD/RTX 4050/15.6",
    "Procesador: Intel Core i5-13420H;
Memoria RAM: 16 GB;
Almacenamiento: 512 GB SSD;
Tarjeta gráfica: NVIDIA GeForce RTX 4050;
Pantalla: 15.6 pulgadas"
  )
  ,(
    19,
    1598,
    "MSI",
    "Laptop",
    "La serie Sword recibió un rediseño legendario con un nuevo cuerpo gris cosmos, manteniendo el mismo perfil elegante y una potente refrigeración.",
    "MSI Sword 16 HX B14VFKG-054XES Intel Core i9-14900HX/32GB/1TB SSD/RTX 4060/16",
    "Procesador: Intel Core i9-14900HX;
Memoria RAM: 32GB;
Almacenamiento: 1TB SSD;
Tarjeta gráfica: NVIDIA GeForce RTX 4060;
Tamaño de pantalla: 16 pulgadas;
Sistema operativo: No especificado (probablemente Windows 11 o sin sistema operativo, dependiendo del distribuidor);
Resolución de pantalla: No especificado (comúnmente Full HD o superior);
Conectividad: Varias opciones, incluyendo puertos USB, HDMI, y posiblemente Thunderbolt;
Teclado: Retroiluminado;
Peso: No especificado (generalmente alrededor de 2-3 kg para portátiles de este tipo);
Batería: No especificado (probablemente de 3 o 4 celdas);
Audio: Altavoces estéreo y micrófono integrado;
Cámara web: Integrada;
Conectividad inalámbrica: WiFi 6 y Bluetooth 5.2 o superior."
  )
  ,(
    20,
    669,
    "HP",
    "Laptop",
    "El portátil HP de 15,6 pulgadas te da el poder para hacer más gracias a la potencia fiable del procesador Intel®, además de un amplio almacenamiento y unos gráficos potentes en un dispositivo elegante y cuidadosamente diseñado.",
    "HP 15-FD0079NS Intel Core i5-1334U/16GB/1TB SSD/15.6",
    "Procesador: Intel Core i5-1334U;
Memoria RAM: 16GB;
Almacenamiento: 1TB SSD;
Pantalla: 15.6 pulgadas;
Modelo: HP 15-FD0079NS."
  )
  ,(
    21,
    1299,
    "MSI",
    "Laptop",
    "Protege tu honor y derrota a los enemigos. Despierta tu poder interior y hereda la voluntad del Dragón. En tus manos está la Espada del Dragón, que fluye con un poder antiguo y está grabada con runas de viento. Derrota a cualquier enemigo que se interponga en tu camino con la espada legendaria Katana 15 B13V.",
    "MSI Katana 15 B13VFK-1854XES Intel Core i7-13700H/16GB/1TB SSD/RTX 4060/15.6",
    "Procesador: Intel Core i7-13700H;
Memoria RAM: 16 GB;
Almacenamiento: 1 TB SSD;
Tarjeta gráfica: NVIDIA GeForce RTX 4060;
Tamaño de pantalla: 15.6 pulgadas."
  ),(
    22,
    799,
    "MSI",
    "Laptop",
    "A la llamada del Thunderbird, la aventurera despierta de su profundo sueño. El continente de fantasía ahora es diferente del pasado, con templos antiguos, bosques mágicos e islas flotantes situadas bajo el vasto cielo azul, cada una llena de numerosos secretos que esperan ser descubiertos.",
    "MSI Bravo 15 C7UDX-288XES AMD Ryzen 5 7535HS/16GB/512GB SSD/RTX 3050/15.6",
    "Procesador: AMD Ryzen 5 7535HS;
Memoria RAM: 16GB;
Almacenamiento: 512GB SSD;
Tarjeta gráfica: NVIDIA GeForce RTX 3050;
Tamaño de pantalla: 15.6 pulgadas."
  ),(
    23,
    2199,
    "MSI",
    "Laptop",
    "El nuevo Pulse 16 AI es más potente e inteligente que nunca. Después de años de dominio, Los Guerreros Dragón enfrentan nuevas amenazas.",
    "MSI Pulse 16 AI C1VGKG-024XES Intel Core Ultra 9 185H/32GB/1TB SSD/RTX 4070/16",
    "Procesador: Intel Core Ultra 9 185H;
Memoria RAM: 32GB;
Almacenamiento: 1TB SSD;
Tarjeta Gráfica: NVIDIA GeForce RTX 4070;
Tamaño de Pantalla: 16 pulgadas."
  )
  ;

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


