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
  ),
  (
    16,
    929,
    "HP",
    "Laptop",
    "The power of a desktop computer in a laptop. The HP Victus laptop is designed for top quality gaming. This stylish laptop features a powerful AMD processor and NVIDIA graphics.",
    "HP Victus 15-fb1002ns AMD Ryzen 5 7535HS/16GB/512GB SSD/RTX 2050/15.6",
    "Processor: AMD Ryzen 5 7535HS;
    RAM memory: 16 GB;
    Storage: 512GB SSD;
    Graphics card: NVIDIA GeForce RTX 2050;
    Screen size: 15.6 inches."
  ),
  (
    17,
    1349,
    "Lenovo",
    "Laptop",
    "Gather your squad and dive into PC gaming with these devices designed to push the limits. Lenovo LOQ gaming platforms provide all the power you need thanks to their high-end processors and NVIDIA® GeForce RTX™ GPUs.",
    "Lenovo LOQ 15IRH8 Intel Core i7-13620H/16GB/512GB SSD/RTX 4060/15.6",
    "Processor: Intel Core i7-13620H;
    RAM memory: 16GB;
    Storage: 512GB SSD;
    Graphics card: NVIDIA GeForce RTX 4060;
    Screen: 15.6 inches."
  ),
  (
    18,
    1099,
    "Acer",
    "Laptop",
    "Take your gaming adventures to the next level with the Acer Nitro V 15, your passport to an adrenaline-fueled journey. This laptop is the perfect combination of power and style, pushing the limits of what is possible in a laptop.",
    "Acer Nitro V 15 ANV15-51-579P Intel Core i5-13420H/16GB/512GB SSD/RTX 4050/15.6",
    "Processor: Intel Core i5-13420H;
    RAM memory: 16 GB;
    Storage: 512GB SSD;
    Graphics card: NVIDIA GeForce RTX 4050;
    Screen: 15.6 inches"
  ),
  (
    19,
    1598,
    "MSI",
    "Laptop",
    "The Sword series received a legendary redesign with a new cosmos gray body, maintaining the same sleek profile and powerful cooling.",
    "MSI Sword 16 HX B14VFKG-054XES Intel Core i9-14900HX/32GB/1TB SSD/RTX 4060/16",
    "Processor: Intel Core i9-14900HX;
    RAM memory: 32GB;
    Storage: 1TB SSD;
    Graphics card: NVIDIA GeForce RTX 4060;
    Screen size: 16 inches;
    Operating system: Not specified (probably Windows 11 or no operating system, depending on the distributor);
    Screen resolution: Not specified (commonly Full HD or higher);
    Connectivity: Various options, including USB, HDMI, and possibly Thunderbolt ports;
    Backlight keyboard;
    Weight: Not specified (usually around 2-3 kg for laptops of this type);
    Battery: Not specified (probably 3 or 4 cells);
    Audio: Stereo speakers and integrated microphone;
    Webcam: Integrated;
    Wireless connectivity: WiFi 6 and Bluetooth 5.2 or higher."
  ),
  (
    20,
    669,
    "HP",
    "Laptop",
    "The HP 15.6-inch laptop gives you the power to do more with the reliable power of the Intel® processor, plus ample storage and powerful graphics in a sleek, thoughtfully designed device.",
    "HP 15-FD0079NS Intel Core i5-1334U/16GB/1TB SSD/15.6",
    "Processor: Intel Core i5-1334U;
    RAM memory: 16GB;
    Storage: 1TB SSD;
    Screen: 15.6 inches;
    Model: HP 15-FD0079NS."
  ),
  (
    21,
    1299,
    "MSI",
    "Laptop",
    "Protect your honor and defeat enemies. Awaken your inner power and inherit the will of the Dragon. In your hands is the Dragon Sword, flowing with ancient power and engraved with runes of wind. Defeat any enemy that comes your way. stand in your way with the legendary sword Katana 15 B13V.",
    "MSI Katana 15 B13VFK-1854XES Intel Core i7-13700H/16GB/1TB SSD/RTX 4060/15.6",
    "Processor: Intel Core i7-13700H;
    RAM memory: 16 GB;
    Storage: 1TB SSD;
    Graphics card: NVIDIA GeForce RTX 4060;
    Screen size: 15.6 inches."
  ),
  (
    22,
    799,
    "MSI",
    "Laptop",
    "At the call of the Thunderbird, the adventurer awakens from her deep slumber. The fantasy continent is now different from the past, with ancient temples, magical forests, and floating islands situated under the vast blue sky, each filled with numerous secrets waiting to be revealed.",
    "MSI Bravo 15 C7UDX-288XES AMD Ryzen 5 7535HS/16GB/512GB SSD/RTX 3050/15.6",
    "Processor: AMD Ryzen 5 7535HS;
    RAM memory: 16GB;
    Storage: 512GB SSD;
    Graphics card: NVIDIA GeForce RTX 3050;
    Screen size: 15.6 inches."
  ),
  (
    23,
    2199,
    "MSI",
    "Laptop",
    "The new Pulse 16 AI is more powerful and smarter than ever. After years of dominance, the Dragon Warriors face new threats.",
    "MSI Pulse 16 AI C1VGKG-024XES Intel Core Ultra 9 185H/32GB/1TB SSD/RTX 4070/16",
    "Processor: Intel Core Ultra 9 185H;
    RAM memory: 32GB;
    Storage: 1TB SSD;
    Graphics Card: NVIDIA GeForce RTX 4070;
    Screen Size: 16 inches."
  ),
  (
    24,
    848,
    "MSI",
    "Laptop",
    "The MSI Thin GF63 powers daily multitasking demands with the latest 12th generation Intel® Core™ processor and the new Intel® Arc™ A370M graphics. Enjoy captivating gaming, design, and streaming experience.",
    "MSI Thin GF63 12UC-688XES Intel Core i7-12650H/16GB/1TB SSD/RTX 3050/15.6",
    "Processor: Intel Core i7-12650H (10 cores, 16 threads, 2.3GHz base frequency, up to 4.7GHz with Intel Turbo Boost); 
    RAM Memory: 16GB DDR4 3200MHz; 
    Storage: 1TB NVMe SSD; 
    Graphics Card: NVIDIA GeForce RTX 3050 with 4GB GDDR6 dedicated memory; 
    Screen: 15.6-inch Full HD (1920x1080) IPS display with 144Hz refresh rate; 
    Operating System: Windows 11 Home; 
    Connectivity: Wi-Fi 6, Bluetooth 5.2; 
    Ports: 1 x USB 3.2 Gen 1 Type-C, 3 x USB 3.2 Gen 1 Type-A, 1 x HDMI, 1 x RJ-45 Ethernet, 1 x Audio combo jack; 
    Keyboard: Backlit keyboard (Red); 
    Battery: 3-cell, 52Wh; 
    Weight: 1.86 kg (4.1 lbs); 
    Dimensions: 359 x 254 x 21.7 mm"
  ),
  (
    25,
    628,
    "Lenovo",
    "Laptop",
    "Stand out anywhere with the Lenovo IdeaPad Slim 3 laptop, designed to be lightweight and slim, with rugged construction for resistance and durability of military grade to withstand drops and extreme travel conditions.",
    "Lenovo IdeaPad Slim 3 15IAH8 Intel Core i5-12450H/16GB/1TB SSD/15.6",
    "Processor: Intel Core i5-12450H (8 cores, 12 threads, 2.0GHz base frequency, up to 4.4GHz with Intel Turbo Boost); 
    RAM Memory: 16GB DDR4; 
    Storage: 1TB NVMe SSD; 
    Screen: 15.6-inch Full HD (1920x1080) IPS display; 
    Operating System: Windows 11 Home; 
    Connectivity: Wi-Fi 6, Bluetooth 5.1; 
    Ports: 1 x USB 3.2 Gen 1 Type-C, 2 x USB 3.2 Gen 1 Type-A, 1 x HDMI, 1 x SD card reader, 1 x Audio combo jack; 
    Keyboard: Backlit keyboard; 
    Battery: 3-cell, 45Wh; 
    Weight: 1.7 kg (3.75 lbs); 
    Dimensions: 359.2 x 236.5 x 19.9 mm"
  ),
  (
    26,
    400,
    "OnePlus",
    "Mobile",
    "The OnePlus Nord 3 5G features a simple and discreet design that looks much more expensive. Tempest Gray color incorporates a tempestuous 2.8D silk glass cover with an anti-reflective, anti-fingerprint frosted texture.",
    "OnePlus Nord 3 5G 16/256GB Tempest Gray Libre",
    "RAM Memory: 16GB; 
    Storage: 256GB; 
    Color: Tempest Gray; 
    Network: 5G; 
    Screen: 6.74-inch Fluid AMOLED, 120Hz refresh rate; 
    Processor: MediaTek Dimensity 9000; 
    Camera: Triple rear camera (50MP main, 8MP ultra-wide, 2MP macro), 16MP front camera; 
    Battery: 4500mAh, 80W fast charging; 
    Operating System: OxygenOS based on Android 12; 
    Connectivity: Wi-Fi 6, Bluetooth 5.2, NFC; 
    Ports: USB Type-C; 
    Dimensions: 163.2 x 75.9 x 8.3 mm; 
    Weight: 189 grams"
  ),
  (
    27,
    1459,
    "Samsung",
    "Mobile",
    "The new era of telephony has arrived. With the top model of the new S series, Galaxy S24 Ultra, you will experience your smartphone like never before.",
    "Samsung Galaxy S24 Ultra 12/256GB Gris Titanium Libre + Cargador",
    "RAM Memory: 12GB; 
    Storage: 256GB; 
    Color: Gris Titanium; 
    Screen: Dynamic AMOLED 2X, 6.8 inches, 1440 x 3200 pixels resolution; 
    Processor: Exynos 2200 (octa-core); 
    Camera: Quad rear camera (108MP main, 12MP ultra-wide, 10MP telephoto, 2MP depth sensor); 
    Operating System: Android 13 with One UI 5.1; 
    Connectivity: Wi-Fi 6E, Bluetooth 5.3, NFC; 
    Dimensions: 164.9 x 75.5 x 8.9 mm"
  ),
  (
    28,
    889,
    "PCcom Ready",
    "Desktop",
    "Gaming PC designed for general use at home or in the office, the PcCom Ready presents itself as a powerful system where its AMD Ryzen 5 processor, 16GB of DDR4 RAM, fast 1TB M.2 NVMe SSD, and powerful Nvidia RTX 3060 graphics card allow for comfortable work in various tasks, making it ideal for home or office environments.",
    "PcCom Ready AMD Ryzen 5 5600X / 16GB / 1TB SSD / RTX 3060",
    "Processor: AMD Ryzen 5 5600X; 
    RAM Memory: 16GB DDR4; 
    Storage: 1TB SSD; 
    Graphics Card: NVIDIA GeForce RTX 3060; 
    Cooling: Air cooling system; 
    Connectivity: Wi-Fi, Bluetooth; 
    Ports: USB, HDMI, DisplayPort, Ethernet; 
    Operating System: Windows 10 Home"
  ),
  (
    29,
    749,
    "HP",
    "Desktop",
    "Work hard. Play easy. An all-in-one system: the Victus by HP 15L gaming desktop. Play at the highest level with a powerful AMD processor and stunning graphics. Switch seamlessly between work and streaming, with Bluetooth® connectivity, 9 USB ports, and plenty of storage.",
    "HP Victus 15L TG02-0177ns AMD Ryzen 5 5600G/16GB/512GB SSD/RTX 3050",
    "Processor: AMD Ryzen 5 5600G; 
    RAM Memory: 16GB; 
    Storage: 512GB SSD; 
    Graphics Card: NVIDIA GeForce RTX 3050; 
    Screen: 15.6-inch Full HD display; 
    Operating System: Windows 10 Home; 
    Connectivity: Wi-Fi, Bluetooth; 
    Ports: USB, HDMI, Ethernet; 
    Battery: 3-cell; 
    Weight: Approximately 2.1 kg"
  ),
  (
    30,
    829,
    "Lenovo",
    "Desktop",
    "Dominate your competition with the wild power and blistering speeds of your essential battle station: the Lenovo Legion Tower 5i. Up to 12th Gen Intel® Core™ i9 processors and the latest NVIDIA® GeForce® graphics cards deliver an amazing show of force.",
    "Lenovo Legion T5 26IAB7 Intel Core i5-12400F/16GB/2TB + 1TB SSD/RTX 3060",
    "Processor: Intel Core i5-12400F; 
    RAM Memory: 16GB DDR4; 
    Storage: 2TB HDD + 1TB SSD; 
    Graphics Card: NVIDIA GeForce RTX 3060; 
    Cooling: Liquid cooling system; 
    Connectivity: Wi-Fi 6, Bluetooth 5.2; 
    Ports: USB 3.2, HDMI, DisplayPort; 
    Operating System: Windows 10 Home."
  ),
  (
    31,
    1349,
    "MSI",
    "Desktop",
    "Born from a sketch to provide the best gaming experience, the MAG Infinite S3 combines performance with innovation. In addition to a stylish power button, it features brilliant sharp lines on its front panel.",
    "Desktop Computer MSI MAG Infinite S3 13NUB7-1820ES ",
    "Processor: Intel Core i7-13700F; 
    RAM Memory: 32GB; 
    Storage: 1TB SSD; 
    Graphics Card: NVIDIA GeForce RTX 4060 Ti."
  ),
  (
    32,
    579,
    "Acer",
    "Desktop",
    "Everyday computing doesn't have to be boring. The compact 8-liter Aspire XC offers efficient hardware for multitasking, work, and daily leisure. Effortlessly navigate through tasks as they arise with Intel® processors.",
    "Acer Aspire XC-1760 Intel Core i5-12400/16GB/512 GB SSD",
    "Processor: Intel Core i5-12400; 
    RAM Memory: 16GB DDR4; 
    Storage: 512GB SSD; 
    Graphics: Intel UHD Graphics 770; 
    Connectivity: Wi-Fi 6, Bluetooth 5.2; 
    Ports: USB 3.2, HDMI, VGA; 
    Operating System: Windows 10 Home."
  ),
  (
    33,
    2699,
    "ASUS",
    "Desktop",
    "The ROG Strix G16CH is designed for high-performance gaming and looks good doing it. With a mesh front panel, dual D-ring handle, headphone support, and subtle RGB lighting accents, the G16CH is a perfect blend of form and function.",
    "ASUS ROG G16CH-1370KF0080 Intel Core i7-13700KF/32GB/1TB SSD/RTX 4080",
    "Processor: Intel Core i7-13700KF; 
    RAM Memory: 32GB; 
    Storage: 1TB SSD; 
    Graphics Card: NVIDIA GeForce RTX 4080."
  ),
  (
    34,
    2549,
    "HP",
    "Desktop",
    "Take your gaming to a new level. The OMEN by HP 40L desktop is your ultimate gaming companion. With the latest Intel® processor and advanced graphics, the OMEN desktop features superior cooling system that prevents overheating.",
    "HP OMEN 40L GT21-1031ns Intel Core i7-13700K/32GB/1TB SSD/RTX 4070 Ti",
    "Processor: Intel Core i7-13700K; 
    RAM Memory: 32GB DDR5; 
    Storage: 1TB SSD; 
    Graphics Card: NVIDIA GeForce RTX 4070 Ti; 
    Cooling: Liquid cooling system; 
    Connectivity: Wi-Fi 6E, Bluetooth 5.2; 
    Ports: USB 3.2, HDMI, DisplayPort; 
    Operating System: Windows 11 Home."
  ),
  (
    35, -- ID
    414, -- Value
    "Apple", -- Marca
    "Tablet", -- Tipo
    "El iPad ha pegado un cambiazo. Ahora tiene una espectacular pantalla Liquid Retina de 10,9 pulgadas con diseño de borde a borde*.Consulta los avisos legales y funciona con básicos como el nuevo Magic Keyboard Folio y el Apple Pencil (1.ª generación).*", -- Desc
    "Apple iPad 2022 10.9 WiFi 64GB Plata", -- Name
    "Pantalla: 10.9 pulgadas de tamaño con tecnología Retina;
    Conectividad: WiFi para acceso a internet;
    Almacenamiento: 64GB de capacidad para guardar aplicaciones, fotos y archivos;
    Color: Disponible en plata, ofreciendo un diseño elegante y moderno;
    Sistema Operativo: Ejecuta el último sistema operativo de Apple, ofreciendo actualizaciones de software y compatibilidad con las últimas aplicaciones;
    Rendimiento: Potente rendimiento gracias al chip A-series de Apple, proporcionando una experiencia fluida y rápida;
    Cámara: Cámaras de alta calidad para tomar fotos y videos nítidos, ideal para videollamadas y capturar momentos especiales;
    Batería: Batería de larga duración que proporciona horas de uso continuo;
    Accesorios: Compatible con una variedad de accesorios opcionales, como el Apple Pencil y el teclado Smart Keyboard, para una experiencia de uso aún más versátil." -- Caract
  ),
  (
    36, -- ID
    119, -- Value
    "Woxter", -- Marca
    "Tablet", -- Tipo
    "Si llevas tu tablet Android a todas partes y aprovechas cualquier rato para ver tus pelis y series favoritas, X-100 Pro te encantará. Su pantalla panorámica HD de 10.1 pulgadas es perfecta para visualizar todo tipo de imágenes en formato 10:16. ", -- Desc
    "Woxter X-100 Pro 10.1 2/16GB Negra", -- Name
    "Pantalla: 10.1 pulgadas;
Memoria RAM: 2GB;
Almacenamiento interno: 16GB;
Color: Negra;
Sistema operativo: Android;
Cámara frontal y trasera;
Conectividad: WiFi y Bluetooth;
Puertos: Micro USB, HDMI;
Batería de larga duración;
Diseño ligero y PORT." -- Caract
  ),
  (
    37, -- ID
    299, -- Value
    "Samsung", -- Marca
    "Tablet", -- Tipo
    "Con el diseño por bandera. Cada elemento del aspecto de Galaxy Tab A9+ ha sido cuidado hasta el milímetro para dar lugar a una tablet elegante que mantiene el equilibrio entre las estéticas clásica y moderna. Puedes conseguirla en uno de los colores característicos de Samsung: Graphite o Silver.", -- Desc
    "Tablet Samsung Galaxy Tab A9+ WiFi 11 8/128GB Plata", -- Name
    "Pantalla: La Tablet Samsung Galaxy Tab A9+ WiFi 11 pulgadas cuenta con una pantalla de 11 pulgadas para una experiencia visual inmersiva;
Almacenamiento: Ofrece una capacidad de almacenamiento interno de 128GB, permitiendo guardar una gran cantidad de aplicaciones, fotos, videos y documentos;
Conectividad: Dispone de conectividad WiFi para acceder a Internet de manera inalámbrica;
Color: Viene en color Plata, ofreciendo un diseño elegante y moderno;
Memoria RAM: Cuenta con 8GB de memoria RAM para un rendimiento fluido y multitarea eficiente;
Cámara: Incorpora cámaras trasera y frontal para capturar fotos y videos con calidad;
Sistema Operativo: Opera con el sistema Android, lo que permite acceder a una amplia gama de aplicaciones y servicios en Google Play Store;
Batería: Ofrece una batería de larga duración para un uso prolongado sin interrupciones;
Dimensiones y Peso: Tiene dimensiones compactas y un peso ligero para facilitar su transporte y manejo en cualquier lugar;
Audio: Proporciona una experiencia de audio inmersiva gracias a sus altavoces de calidad." -- Caract
  ),
  (
    35, -- ID
    414, -- Value
    "Apple", -- Brand
    "Tablet", -- Type
    "The iPad has had a makeover. Now it has a spectacular 10.9-inch Liquid Retina display with edge-to-edge design. Check legal notices and works with basics like the new Magic Keyboard Folio and the Apple Pencil (1st generation).", -- Description
    "Apple iPad 2022 10.9 WiFi 64GB Silver", -- Name
    "Screen: 10.9-inch size with Retina technology;
    Connectivity: WiFi for internet access;
    Storage: 64GB capacity to store apps, photos, and files;
    Color: Available in silver, offering an elegant and modern design;
    Operating System: Runs the latest Apple operating system, offering software updates and compatibility with the latest apps;
    Performance: Powerful performance thanks to Apples A-series chip, providing a smooth and fast experience;
    Camera: High-quality cameras for taking sharp photos and videos, ideal for video calls and capturing special moments;
    Battery: Long-lasting battery that provides hours of continuous use;
    Accessories: Compatible with a variety of optional accessories, such as the Apple Pencil and Smart Keyboard, for an even more versatile user experience." -- Features
  ),
  (
    36, -- ID
    119, -- Value
    "Woxter", -- Brand
    "Tablet", -- Type
    "If you take your Android tablet everywhere and take advantage of any time to watch your favorite movies and series, X-100 Pro will delight you. Its 10.1-inch HD widescreen display is perfect for viewing all kinds of images in 10:16 format.", -- Description
    "Woxter X-100 Pro 10.1 2/16GB Black", -- Name
    "Screen: 10.1 inches;
RAM: 2GB;
Internal storage: 16GB;
Color: Black;
Operating system: Android;
Front and rear camera;
Connectivity: WiFi and Bluetooth;
Ports: Micro USB, HDMI;
Long-lasting battery;
Lightweight and PORT design." -- Features
  ),
  (
    37, -- ID
    299, -- Value
    "Samsung", -- Brand
    "Tablet", -- Type
    "With design at its core. Every element of the Galaxy Tab A9+ appearance has been carefully crafted to create an elegant tablet that balances classic and modern aesthetics. You can get it in one of Samsung's characteristic colors: Graphite or Silver.", -- Description
    "Samsung Galaxy Tab A9+ WiFi 11 Tablet 8/128GB Silver", -- Name
    "Screen: The Samsung Galaxy Tab A9+ WiFi 11-inch Tablet features an 11-inch screen for an immersive visual experience;
Storage: It offers an internal storage capacity of 128GB, allowing you to store a large number of apps, photos, videos, and documents;
Connectivity: It has WiFi connectivity for wireless internet access;
Color: Comes in Silver color, offering an elegant and modern design;
RAM: It has 8GB of RAM for smooth performance and efficient multitasking;
Camera: It incorporates front and rear cameras for capturing quality photos and videos;
Operating System: It operates on the Android system, allowing access to a wide range of apps and services on the Google Play Store;
Battery: It offers long-lasting battery life for prolonged uninterrupted use;
Dimensions and Weight: It has compact dimensions and lightweight for easy transportation and handling anywhere;
Audio: It provides an immersive audio experience thanks to its quality speakers." -- Features
  ),
  (
    38, -- ID
    199, -- Value
    "Lenovo", -- Brand
    "Tablet", -- Type
    "Discover a world of possibilities with the Lenovo Tab M11 tablet, designed to elevate your digital experience to new levels. Immerse yourself in a stunning 11-inch display, enjoying vibrant colors and sharp details thanks to its IPS technology and 400 nits brightness.", -- Description
    "Lenovo Tab M11 11-inch 4/128GB Gray + Pen Stylus", -- Name
    "Screen: 11 inches;
RAM: 4 GB;
Storage capacity: 128 GB;
Color: Gray;
Includes Pen Stylus: Yes." -- Features
  ),
  (
    39, -- ID
    139, -- Value
    "Lenovo", -- Brand
    "Tablet", -- Type
    "Embrace your elegant side with the Lenovo Tab M9 tablet in two available tones: Arctic Grey or Frost Blue. Its slim and lightweight design makes it perfect to take it wherever life takes you.", -- Description
    "Lenovo Tab M9 9 3/32GB WiFi Arctic Gray", -- Name
    "Screen size: 9 inches;
Internal storage: 32GB;
RAM: 3GB;
Connectivity: WiFi;
Color: Arctic Gray." -- Features
  ),
  (
    40, -- ID
    249, -- Value
    "TCL", -- Brand
    "Tablet", -- Type
    "The freedom to read like on paper with the TCL NXTPAPER 11-inch tablet. Enjoy bright and intense colors on a dynamic paper-like display that has 150% more brightness than previous generation displays.", -- Description
    "TCL NXTPAPER 11-inch 2K 4/128GB Dark Gray", -- Name
    "Screen: NXTPAPER 11-inch with 2K resolution;
Storage: 128GB internal storage;
RAM: 4GB RAM;
Color: Dark Gray." -- Features
  ),
  (
    41, -- ID
    299, -- Value
    "Lenovo", -- Brand
    "Tablet", -- Type
    "Get more into the story while watching your favorite movies and shows on the expansive 2K, 11.5-inch screen of the Lenovo Tab P11 (2nd Gen) tablet.", -- Description
    "Lenovo Tab P11 (2nd Gen) 11.5-inch 2K 4/128GB Gray + Precision Pen 2", -- Name
    "Screen: Lenovo Tab P11 (2nd Gen) has an 11.5-inch screen with 2K resolution for a sharp and detailed visual experience.;
RAM: It comes with 4GB of RAM for smooth multitasking performance.;
Storage: It comes with a 128GB internal storage capacity, offering enough space for your apps, photos, videos, and files.;
Color: The model you mentioned is in gray color, giving it an elegant and modern look.;
Includes Precision Pen 2: It comes with the Precision Pen 2 optical pen, allowing for precise and natural interaction with the touchscreen." -- Features
  ),
  (
    42, -- ID
    353, -- Value
    "LG", -- Brand
    "Other", -- Type
    "4K UHD, vibrant display in ultra-high resolution. LG UHD TVs always exceed your expectations. Experience realistic image quality and vivid colors with pixel accuracy four times higher than Full HD.", -- Description
    "LG 43UR781C0LK 43-inch LED UltraHD 4K HDR10", -- Name
    "Display: 43-inch LED with UltraHD 4K resolution;
HDR10 technology for higher image quality;
Elegant and slim design that fits into any space;
Connectivity: HDMI and USB ports for easy connection of devices;
Smart Features: Compatible with voice assistants and smart home control systems;
Sound: Integrated speaker system for an immersive audio experience;
Additional features: access to streaming applications and online content;
Intuitive and easy-to-use remote control." -- Characteristics
  );

-- CLIENTES
INSERT INTO
  `client` (
    `idClient`,
    `dni`,
    `username`,
    `name`,
    `lastname`,
    `province`,
    `cp`,
    `address`
  )
VALUES
  (
    1,
    '12345678A',
    'Lord Coordinador',
    'Jorge',
    'López-Dóriga',
    'Madrid',
    28001,
    'Calle Aprobado 123'
  ),
  (
    2,
    '23456789B',
    'Lord Profesor',
    'Brais',
    'Martínez',
    'Madrid',
    28001,
    'Avenida Android Studio 68'
  ),
  (
    3,
    '34567890C',
    'SQLMaster',
    'David',
    'Caramazana',
    'Madrid',
    28001,
    'Calle SQL 456'
  ),
  (
    4,
    '45678901D',
    'VivaRayito',
    'Álvaro',
    'Fernández',
    'Madrid',
    28001,
    'Calle del Rayo 789'
  ),
  (
    5,
    '56789012E',
    'PDBlas',
    'Patricia',
    'De Blas',
    'Madrid',
    28001,
    'Calle Mar 123'
  ),
  (
    6,
    '67890123F',
    'Yisus',
    'Luis',
    'Juarros',
    'Madrid',
    28001,
    'Calle Cable 456'
  ),
  (
    7,
    '78901234G',
    'Pr4dos',
    'Sergio',
    'Prados',
    'Granada',
    18001,
    'Calle Arlequín 789'
  ),
  (
    8,
    '89012345H',
    'Mana',
    'Javier',
    'González',
    'Madrid',
    28440,
    'Calle Sala 123'
  ),
  (
    9,
    '90123456I',
    'Roxo',
    'Rodrigo',
    'Fernández',
    'Madrid',
    28001,
    'Calle Bizarra 456'
  ),
  (
    10,
    '01234567J',
    'Abuelo',
    'Zigor',
    'Mateos',
    'Madrid',
    28910,
    'Calle Madera 789'
  ),
    (
    11,
    '23232323J',
    'GOAT',
    'Michael',
    'Jordan',
    'Chicago',
    60007,
    'ST The GOAT 23'
  )
  ;

-- Insert 30 records into the sale table
INSERT INTO
  `sale` (`idSales`, `saleDate`, `total`, `idClient`)
VALUES
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
INSERT INTO
  `sales_line` (
    `idLines`,
    `idSales`,
    `product`,
    `units`,
    `unit_price`
  )
VALUES
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