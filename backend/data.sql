create database tshop;

use tshop;

create table product (
productId int,
productName varchar(500),
description varchar(500),
price float,
imageUrl varchar(100),
category varchar(50)
);


INSERT INTO product (productId, productName, description, price, imageUrl, category) VALUES
('1','Refrigerators', 'Energy-efficient double-door refrigerator with large freezer and adjustable shelves.', 75000.00, './images/fridge.jpg', 'home appliances'),
('2', 'Washing Machines', 'Top-load washing machine with 8kg capacity and quick wash feature.', 45000.00, './images/washingmachine.jpg', 'home appliances'),
('3','Dishwashers', 'Compact dishwasher with multiple wash cycles and energy-saving mode.', 55000.00, './images/dishwasher.jpg', 'home appliances'),
('4','Ovens', 'Electric convection oven with timer, grill function, and 65L capacity.', 40000.00, './images/oven.jpg', 'home appliances'),
('5','Microwaves', '700W microwave with defrost and auto-cook functions.', 12000.00, './images/microwave.jpg', 'home appliances'),
('6','Airconditioners', 'Split unit air conditioner with remote control and energy-saving inverter technology.', 68000.00, './images/aircnditioner.jpg', 'home appliances'),
('7','Toasters', '2-slice pop-up toaster with adjustable browning control.', 3500.00, './images/toaster.jpg', 'home appliances'),
('8','Blenders', '1.5L blender with multiple speed settings and durable stainless steel blades.', 4500.00, './images/blender.jpg', 'home appliances'),
('9','Coffee Makers', 'Drip coffee maker with 1.2L carafe and programmable timer.', 8000.00, './images/coffeemaker.jpeg', 'home appliances'),
('10','Electric Kettles', '1.7L electric kettle with auto shut-off and boil-dry protection.', 3200.00, './images/kettle.jpg', 'home appliances'),
('11','Treadmill', 'Motorized treadmill with LCD display, adjustable incline, and heart rate sensors.', 95000.00, './images/treadmill.jpg', 'fitness'),
('12',' Exercise Bike', 'Stationary exercise bike with resistance control and digital performance monitor.', 40000.00, './images/Exercise bikes.jpg', 'fitness'),
('13','Rowing Machine', 'Magnetic resistance rowing machine with foldable frame and LCD monitor.', 55000.00, './images/rowingmachine.jpg', 'fitness'),
('14','Elliptical Machine', 'Elliptical trainer with 16 resistance levels and built-in workout programs.', 60000.00, './images/elliptical.jpg', 'fitness'),
('15','Dumbells', 'Set of adjustable dumbbells ranging from 2kg to 20kg with secure locking system.', 12000.00, './images/Dumbells.jpg', 'fitness'),
('16','Kettlebell', 'Heavy-duty 12kg kettlebell with ergonomic grip for strength training.', 3500.00, './images/kettlebell.jpg', 'fitness'),
('17','Gaming Chair', 'Ergonomic gaming chair with adjustable armrests, lumbar support, and reclining feature.', 25000.00, './images/computer gaming chair.jpeg', 'gaming'),
('18','Gaming Headset', 'Surround sound gaming headset with noise-canceling mic and RGB lighting.', 7500.00, './images/Gaming headset.jpg', 'gaming'),
('19','Gaming Keyboard', 'Mechanical gaming keyboard with customizable RGB backlighting and programmable keys.', 8500.00, './images/Gaming keyboard.jpg', 'gaming'),
('20','Gaming Mouse', 'High-DPI gaming mouse with customizable buttons and RGB effects.', 4500.00, './images/Gaming mouse.jpeg', 'gaming'),
('21','Adapters', 'Universal USB-C to HDMI/VGA adapters for connecting laptops to external displays.', 2000.00, './images/Adapters.jpeg', 'computer accessories'),
('22','Computer Toolkit', '11-piece toolkit with screwdrivers, anti-static wrist strap, and cleaning tools.', 1500.00, './images/computer toolkit.jpeg', 'computer accessories'),
('23','Laptop Case', 'Water-resistant 15.6" laptop case with padded interior and multiple compartments.', 2500.00, './images/laptop case.jpg', 'computer accessories'),
('24','Monitor', '24-inch Full HD LED monitor with HDMI and VGA ports, ideal for home or office use.', 18500.00, './images/monitor.jpeg', 'computer accessories'),
('25','Mouse', 'Wireless optical mouse with ergonomic design and adjustable DPI settings.', 1200.00, './images/mouse.jpg', 'computer accessories'),
('26','Laptop Stand', 'Aluminum adjustable laptop stand for better posture and ventilation.', 3000.00, './images/laptop_stand.jpg', 'computer accessories'),
('27','Flash Drive', '64GB USB 3.0 flash drive with fast data transfer and compact design.', 1000.00, './images/flash drive.jpeg', 'computer accessories'),
('28','Computer', 'Desktop computer with Intel Core i5, 8GB RAM, and 1TB HDD, suitable for office and home use.', 55000.00, './images/Computer.jpeg', 'electronics'),
('29','Electronic Camera', 'Digital camera with 20MP resolution, 4K video recording, and optical zoom lens.', 45000.00, './images/electronic camera.jpeg', 'electronics'),
('30','Printer', 'All-in-one inkjet printer with wireless printing, scanning, and copying capabilities.', 12000.00, './images/Printer.jpeg', 'electronics'),
('31','Speakers', 'Bluetooth stereo speakers with deep bass and 10-hour battery life.', 3500.00, './images/Speakers.jpeg', 'electronics'),
('32','TV', '43-inch Smart LED TV with Full HD resolution, built-in apps, and HDMI connectivity.', 38000.00, './images/TV.jpg', 'electronics'),
('33','Routers', 'Dual-band Wi-Fi router with long-range coverage and parental control features.', 5000.00, './images/router.jpeg', 'electronics');



