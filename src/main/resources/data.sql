INSERT INTO USERS VALUES (1, 'admin1', 'admin1');
INSERT INTO USERS VALUES (2, 'user1', 'user1');
INSERT INTO USERS VALUES (3, 'user2', 'user2');


INSERT INTO CATEGORY (name, description, created_date, updated_date) VALUES ('Electronics', 'Electronic Goods like Tv, Mobile, Laptops etc.', TIMESTAMP '2023-12-31 23.59.59', TIMESTAMP '2023-12-31 23.59.59');
INSERT INTO CATEGORY (name, description, created_date,  updated_date) VALUES ( 'Shoes', 'All Kinds of Footwear', TIMESTAMP '2023-12-31 23.59.59', TIMESTAMP '2023-12-31 23.59.59');
INSERT INTO CATEGORY (name, description, created_date,  updated_date) VALUES ( 'Books', 'All Kinds of Books', TIMESTAMP '2024-01-15 23.59.59', TIMESTAMP '2024-01-15 23.59.59');
INSERT INTO CATEGORY (name, description, created_date,  updated_date) VALUES ( 'Pharmacy', 'Health Care Products, Nutrition etc.', TIMESTAMP '2024-01-04 23.59.59', TIMESTAMP '2024-01-04 23.59.59');
INSERT INTO CATEGORY (name, description, created_date,  updated_date) VALUES ( 'Furnitures', 'All Kinds of Furniture', TIMESTAMP '2024-01-10 23.59.59', TIMESTAMP '2024-01-12 23.59.59');
INSERT INTO CATEGORY (name, description, created_date,  updated_date) VALUES ( 'Sports', 'Sports equipments, accessories, kits etc.', TIMESTAMP '2024-01-08 23.59.59', TIMESTAMP '2024-01-08 23.59.59');
INSERT INTO CATEGORY (name, description, created_date,  updated_date) VALUES ( 'Toys', 'Kids Toys', TIMESTAMP '2024-01-16 23.59.59', TIMESTAMP '2024-01-16 23.59.59');
INSERT INTO CATEGORY (name, description, created_date,  updated_date) VALUES ( 'Apparels', 'Mens & Womens Fashion', TIMESTAMP '2023-12-31 23.59.59', TIMESTAMP '2023-12-31 23.59.59');
INSERT INTO CATEGORY (name, description, created_date,  updated_date) VALUES ( 'Beuty Products', 'All Kinds of Beuty Products', TIMESTAMP '2024-01-14 23.59.59', TIMESTAMP '2024-01-14 23.59.59');
INSERT INTO CATEGORY (name, description, created_date,  updated_date) VALUES ( 'Bags & Luggages', 'All Kinds of Bags & Luggages', TIMESTAMP '2024-01-07 23.59.59', TIMESTAMP '2024-01-07 23.59.59');

INSERT INTO Order_History( username, total_value, ordered_date) VALUES ('admin', 1500, TIMESTAMP '2023-12-31 23.59.59');
INSERT INTO Order_History( username, total_value, ordered_date) VALUES ('user1', 500, TIMESTAMP '2023-12-31 23.59.59');

--Neha
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Alexa', 'virtual assistant', 25000,'http://localhost:8080/images/electronics/alexa.jpg', 1, 10, TIMESTAMP '2023-12-29 23.59.59', TIMESTAMP '2023-12-29 23.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('iPhone14', 'iPhone Mobile', 45000,'http://localhost:8080/images/electronics/iPhone14.jpg', 1, 0, TIMESTAMP '2023-12-31 23.59.59', TIMESTAMP '2023-12-31 23.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('OnePlus', 'OnePlus Mobile', 30000,'http://localhost:8080/images/electronics/onePlus.jpg', 1, 20, TIMESTAMP '2024-01-01 23.59.59', TIMESTAMP '2024-01-01 23.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Samsung', 'Samsung LED TV', 15000,'http://localhost:8080/images/electronics/samsung.jpg', 1, 15, TIMESTAMP '2023-12-31 23.59.59', TIMESTAMP '2023-12-31 23.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Smartwatch', 'Boat Smartwatch', 18000,'http://localhost:8080/images/electronics/smartwatch.jpg', 1, 10, TIMESTAMP '2024-01-04 23.59.59', TIMESTAMP '2024-01-04 23.59.59');

--Avinash
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Adidas Shoe', 'Cushioned running shoes for every situation', 2500,'http://localhost:8080/images/shoes/adidas.jpg', 2, 10, TIMESTAMP '2023-12-29 23.59.59', TIMESTAMP '2023-12-29 23.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Nike Shoe', 'Sneakers for all in one', 4500,'http://localhost:8080/images/shoes/nike.jpg', 2, 0, TIMESTAMP '2023-12-31 23.59.59', TIMESTAMP '2023-12-31 23.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Puma Shoe', 'Football Shoe', 3000,'http://localhost:8080/images/shoes/puma.jpg', 2, 20, TIMESTAMP '2024-01-01 23.59.59', TIMESTAMP '2024-01-01 23.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Neeman Shoe', 'Office wear shoes', 1500,'http://localhost:8080/images/shoes/neeman.jpg', 2, 15, TIMESTAMP '2023-12-31 23.59.59', TIMESTAMP '2023-12-31 23.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('SparX Shoe', 'Sports shoe', 1800,'http://localhost:8080/images/shoes/sparx.jpg', 2, 10, TIMESTAMP '2024-01-04 23.59.59', TIMESTAMP '2024-01-04 23.59.59');

--Mounika
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('King Bed', 'King Size bed with sturdy mango wood', 50000,'http://localhost:8080/images/furniture/bed.jpg', 5, 18, TIMESTAMP '2023-12-01 23.59.59', TIMESTAMP '2023-12-01 23.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Chair', 'Single chair with extra cushioning on the back for extreme comfort', 17000,'http://localhost:8080/images/furniture/chair.jpg', 5, 0, TIMESTAMP '2023-12-31 23.59.59', TIMESTAMP '2023-12-31 23.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Bed Sofa', 'A sofa which can double as bed when needed', 50000,'http://localhost:8080/images/furniture/bedSofa.jpg', 5, 20, TIMESTAMP '2024-01-01 23.59.59', TIMESTAMP '2024-01-01 23.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Tea Table', 'A perfect multifunctional table for your living room', 8000,'http://localhost:8080/images/furniture/teaTable.jpg', 5, 2, TIMESTAMP '2023-12-31 23.59.59', TIMESTAMP '2023-12-31 23.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('TV Unit', 'TV Unit with storge', 20000,'http://localhost:8080/images/furniture/tvUnit.jpg', 5, 7, TIMESTAMP '2024-01-04 23.59.59', TIMESTAMP '2024-01-04 23.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Wardrobe', 'Wardrobe with attached dressing mirror', 30000,'http://localhost:8080/images/furniture/wardrobe.jpg', 5, 4, TIMESTAMP '2024-01-04 23.59.59', TIMESTAMP '2024-01-04 23.59.59');

--Anjum
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Java Complete Reference', 'Java Complete Reference for begginers and professional', 500,'http://localhost:8080/images/books/complete_reference_java.jpg', 3, 10, TIMESTAMP '2024-01-20 22.35.59', TIMESTAMP '2024-01-20 22.35.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Java Book', 'Java book for absolute beginners', 400,'http://localhost:8080/images/books/java_for_beginners.jpg', 3, 0, TIMESTAMP '2023-08-31 20.40.30', TIMESTAMP '2023-08-31 20.40.30');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Database Book', 'Database design book for beginners and professional ', 300,'http://localhost:8080/images/books/database_design.jpg', 3, 20, TIMESTAMP '2023-10-10 22.48.59', TIMESTAMP '2023-10-10 22.48.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Database System', 'Database System for professional', 700,'http://localhost:8080/images/books/database_system.jpg', 3, 15, TIMESTAMP '2024-01-10 19.59.59', TIMESTAMP '2024-01-10 19.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('JavaScript', 'Javascript 2nd Edition by John', 800,'http://localhost:8080/images/books/javascript_second_edition.jpg', 3, 10, TIMESTAMP '2023-07-20 23.59.59', TIMESTAMP '2023-07-20 23.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('JavaScript Jquery', 'Java script Jquery for front-end and webdevlopment', 900,'http://localhost:8080/images/books/java_script_jquery.jpg', 3, 10, TIMESTAMP '2024-01-11 23.59.59', TIMESTAMP '2024-01-11 23.59.59');

--Srija
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('DOLO-650 Tablet', 'Medicine for fever and bodypains', 90,'http://localhost:8080/images/pharmacy/dolo_650.jpg', 4, 0, TIMESTAMP '2024-1-15 21.23.59', TIMESTAMP '2024-01-15 21.23.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Diabetic Boost', 'Health suppliment for diabetic patients', 4500,'http://localhost:8080/images/pharmacy/diabetic_boost.jpg', 4, 15, TIMESTAMP '2024-01-01 18.15.20', TIMESTAMP '2024-1-1 18.15.20');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Hydrating Lotion', 'Hydrating lotion for face and body', 5000,'http://localhost:8080/images/pharmacy/hydrating_lotion.jpg', 4, 20, TIMESTAMP '2024-01-03 15.23.11', TIMESTAMP '2024-01-03 15.23.11');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Johnsons baby soap', 'bath soap for new born babies', 500,'http://localhost:8080/images/pharmacy/baby_soap.jpg', 4, 15, TIMESTAMP '2023-12-7 21.08.05', TIMESTAMP '2023-12-7 21.08.05');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Vitamin_C_Serum', 'face serum for dark spots', 1800,'http://localhost:8080/images/pharmacy/vitaminC_Serum.jpg', 4, 20, TIMESTAMP '2024-01-05 22.59.00', TIMESTAMP '2024-01-05 22.59.00');

--Bhuvaneshwari
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Fair&Lovely Cream', 'Fairness cream for skin', 50,'http://localhost:8080/images/beautyProducts/fairnlovely.jpg', 9, 10, TIMESTAMP '2024-1-9 22.15.59', TIMESTAMP '2024-1-9 22.15.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Lakme Foundation', 'foundation cream for face', 500,'http://localhost:8080/images/beautyProducts/lakme.jpg', 9, 10, TIMESTAMP '2023-07-10 20.18.25', TIMESTAMP '2023-07-10 20.18.25');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Loreal collagen cream', 'collagen moisture cream for face', 2000,'http://localhost:8080/images/beautyProducts/loreal.jpg', 9, 0, TIMESTAMP '2023-10-05 11.09.10', TIMESTAMP '2023-10-05 11.09.10');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Mac Lipstick', 'matte finish lipstick for women', 1500,'http://localhost:8080/images/beautyProducts/lipstick.jpg', 9, 15, TIMESTAMP '2024-02-06 15.08.15', TIMESTAMP '2024-02-06 15.08.15');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Ponds Skin Cream', 'face cream for dry skin', 800,'http://localhost:8080/images/beautyProducts/ponds.jpg', 9, 30, TIMESTAMP '2023-01-05 22.05.01', TIMESTAMP '2023-01-05 22.05.01');


--Shivani
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Athleisure Men Polo T-Shirt', 'Cotton Rich - Ultra Soft, Short Sleeve, Textured_60033_Black_L', 2000,'http://localhost:8080/images/apparels/blacktshirtpolo.jpg', 8, 10, TIMESTAMP '2024-1-2 23.59.59', TIMESTAMP '2024-1-3 21.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('NOBERO Mens Travel Cotton Solid Plain Hoody', 'Sports Winter Gym Workout Running Travel Trekking Hooded Sweatshirts and Hoodies for Men Boys Cotton Winter Casual Wear', 1800,'http://localhost:8080/images/apparels/hoodie.jpg', 8, 15, TIMESTAMP '2024-1-4 22.59.59', TIMESTAMP '2024-1-8 21.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Womens Peach Chanderi Kurta', 'Naixa Womens Peach Chanderi Embroidered and Printed A-Line Kurta with Pant and Laced Organza Dupatta Set', 2500,'http://localhost:8080/images/apparels/kurtaset.jpg', 8, 20, TIMESTAMP '2024-1-3 20.40.59', TIMESTAMP '2024-1-5 21.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Aqua Blue A-line Midi Dress', 'Preneum Women Georgette Aqua Blue A-line Midi Dress', 2500,'http://localhost:8080/images/apparels/mididress.jpg', 8, 0, TIMESTAMP '2024-1-7 18.40.59', TIMESTAMP '2024-1-9 15.45.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Striped Print Sleeve Dress', 'TAGAS Toddler Girls Striped Print Puff Sleeve Bow Dress', 1200,'http://localhost:8080/images/apparels/toddlerGirlDress.jpg', 8, 10, TIMESTAMP '2024-1-10 14.40.59', TIMESTAMP '2024-1-16 15.45.59');

--Zaman
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('MRF BAT', 'Cricket Bat', 2000,'http://localhost:8080/images/sports/CricketBat.jpg', 6, 5, TIMESTAMP '2024-01-16 12.59.59', TIMESTAMP '2024-01-16 12.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Yonex Racket', 'Badminton Racket Bat', 1499,'http://localhost:8080/images/sports/BadmintonRacket.jpg', 6, 20, TIMESTAMP '2024-01-16 12.34.59', TIMESTAMP '2024-01-16 12.34.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Yonex Shuttle', 'Badminton Shuttle', 600,'http://localhost:8080/images/sports/BadmintonShuttle.jpg', 6, 0, TIMESTAMP '2024-01-16 12.03.59', TIMESTAMP '2024-01-16 12.03.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('MRF Wicket', 'Cricket Wicket', 500,'http://localhost:8080/images/sports/CricketWicket.jpg', 6, 10, TIMESTAMP '2024-01-16 11.59.59', TIMESTAMP '2024-01-16 11.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('NIKE FootBall', 'Foot Ball', 2999,'http://localhost:8080/images/sports/FootBall.jpg', 6, 15, TIMESTAMP '2024-01-16 10.59.59', TIMESTAMP '2024-01-16 10.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Tecnifibre Racket', 'Lawn Tennis Bat', 1599,'http://localhost:8080/images/sports/LawnTennisRacket.jpg', 6, 10, TIMESTAMP '2024-01-16 09.59.59', TIMESTAMP '2024-01-16 09.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('SISCAA Carrom Board', 'Carrom Board', 2500,'http://localhost:8080/images/sports/Carrom.jpg', 6, 20, TIMESTAMP '2024-01-16 15.59.59', TIMESTAMP '2024-01-16 15.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Butterfly TT Bat', 'Table Tennis Bat', 599,'http://localhost:8080/images/sports/TableTennisBat.jpg', 6, 10, TIMESTAMP '2024-01-16 12.45.59', TIMESTAMP '2024-01-16 12.45.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Cosco Ball', 'Tennis Ball', 100,'http://localhost:8080/images/sports/TennisBall.jpg', 6, 0, TIMESTAMP '2024-01-16 03.59.59', TIMESTAMP '2024-01-16 03.59.59');

--Baba
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date, updated_date)VALUES ('Car Toy', 'Remote control car ', 50, 'http://localhost:8080/images/toys/redCar.jpg', 7, 0, TIMESTAMP '2024-01-04 23:59:59', TIMESTAMP '2024-01-04 23:59:59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date, updated_date)VALUES ('Dog Toy', 'Dolly dog ', 70, 'http://localhost:8080/images/toys/dog.jpg', 7, 10, TIMESTAMP '2024-01-04 23:59:59', TIMESTAMP '2024-01-04 23:59:59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date, updated_date)VALUES ('Lion Toy', 'Kiddy Lion with cuitey face', 85, 'http://localhost:8080/images/toys/lion.jpg', 7, 7, TIMESTAMP '2024-01-04 23:59:59', TIMESTAMP '2024-01-04 23:59:59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date, updated_date)VALUES ('Puppy Toy', 'Puppy doll', 65, 'http://localhost:8080/images/toys/puppy.jpg', 7, 8, TIMESTAMP '2024-01-04 23:59:59', TIMESTAMP '2024-01-04 23:59:59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date, updated_date)VALUES ('Tiger Toy', 'Tiger toy with smooth and soft', 95, 'http://localhost:8080/images/toys/tiger.jpg', 7, 12, TIMESTAMP '2024-01-04 23:59:59', TIMESTAMP '2024-01-04 23:59:59');

--Aman
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Backpack_Men', 'Comfortable leather mens backpack.', 1000,'http://localhost:8080/images/bags/Backpack_Men.jpg', 10 , 10, TIMESTAMP '2023-12-29 23.59.59', TIMESTAMP '2023-12-29 23.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Ethnic_Shoulder_Bag', 'Ethnic colourfull light weight cotton bag .', 1800,'http://localhost:8080/images/bags/Ethnic_Shoulder_Bag.jpg', 10 , 50, TIMESTAMP '2023-12-29 23.59.59', TIMESTAMP '2023-12-29 23.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Mountain_Gear_bag', '90Leters Mountain bagpack, strong water proof and easy to carry.', 3000,'http://localhost:8080/images/bags/Mountain_Gear_bag.jpg', 10 , 15, TIMESTAMP '2023-12-29 23.59.59', TIMESTAMP '2023-12-29 23.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('School_bag', 'Comfortable School_bag for kids', 1600,'http://localhost:8080/images/bags/School_bag.jpg', 10 , 25, TIMESTAMP '2023-12-29 23.59.59', TIMESTAMP '2023-12-29 23.59.59');
INSERT INTO Product(name, description, price, product_image_path, category_id, discount, created_date,  updated_date) VALUES ('Travel_Bag', 'Comfortable 60L trave bag ideal for 2-3 days journey.', 3500,'http://localhost:8080/images/bags/Travel_Bag.jpg', 10 , 0, TIMESTAMP '2023-12-29 23.59.59', TIMESTAMP '2023-12-29 23.59.59');