---Creating Database---
create database Furniture;

---Going inside of the database that was created---
USE Furniture;

---Creating a new table for products, adding column names---
CREATE TABLE Products
(

    Product_Name VARCHAR(100),
    Product_ID INT IDENTITY NOT NULL,
    Category_ID INT NOT NULL,
    Primary Key (Product_ID)
);

----inserting values into columns created in products table---
INSERT INTO Products
    (Product_Name, Category_ID)
VALUES
    ("Aadvik 2 Piece Living Room Set", 1),
    ("Kraker 2 Piece Living Room Set", 1),
    ("Marti Hickory Modern 2 Piece Living Room Set", 1),
    ("Miranda Sectional", 1),
    ("Paes 3 Piece Living Room Set", 1),
    ("Ashlyn 2 Piece Living Room Set", 1),
    ("Gilma Canopy Bed", 2),
    ("Ruthann Upholstered Storage Platform Bed", 2),
    ("Boswell Upholstered Platform Bed", 2),
    ("Pamala Upholstered Canopy Bed", 2),
    ("Widener Upholstered Standard Bed", 2),
    ("Stromsburg Queen Platform Bed", 2);

--- Altering table, adding two new colimns to the product table---

alter table Products add column About VARCHAR
(1000);
alter table Products add column Images VARCHAR
(1000);

--- Updating my products table, adding a description and image to each specific product----

UPDATE Products SET About= "Anchor your living room in glamorous style with this chic two-piece living room set. 
Including one sofa and one loveseat, each piece is founded on a solid wood frame. Striking a mod silhouette with track 
arms and gleaming chrome flared legs, each sofa is enveloped in crushed velvet upholstery for a luxurious feel. 
Corded edges and vertical channel tufting lends a tailored touch, while medium-firm foam fill and a pair of 
round pillows offer added comfort and support.", Images="/images/product1.png"  WHERE Product_ID=1;

UPDATE Products SET About= "Break the mold of modernism with Kraker 2 Piece Living Room Set that features a unique multi-dimensional double-layer 
seat cushion that extends beneath the armrest holstered with a metal frame. 
Back cushion pillows provide comfort for the contemporary in made. Includes accent pillows.", Images="/images/product2.png"  WHERE Product_ID=2;

UPDATE Products SET About= "Founded atop smooth, clear chrome feet, this Marti Hickory Modern 2 Piece Living Room Set is crafted with a solid birch frame and filled with foam for a bit of cushioning as it seats up. Velvet upholstery in a solid hue envelops the seat for a touch of texture, while button-tufted 
details and nailhead trim adorn the design for even more eye-catching appeal.", Images="/images/product3.png"  WHERE Product_ID=3;

UPDATE Products SET About="A mod take on classic Chesterfield sofas, this U-shaped sectional goes glam in any den or family room. For comfort, its rolled back, track arms, and foam-filled cushions are wrapped, while chrome metal legs complete the look with a polished touch. 
The seat cushions remove, too, making it easy to spot clean spills or find runaway TV remotes. Plus, this sectional’s double chaise design 
offers twice the amount of space to curl up with a cozy throw and your favorite flick. What’s not to love?" , Images="/images/product4.png"  WHERE Product_ID=4;

UPDATE Products SET About="Looking to create a warm, cozy and inviting backdrop to your living room or seating area? Then consider this 3 piece contemporary 
reversible sofa-chaise with matching loveseat and ottoman for all your decorating needs. The cozy and inviting cool blue/grey tones of this sofa-chaise, 
loveseat and ottoman set are wonderfully appealing and will make pairing this seating with your room décor effortless and fun. Flared armrests, 
cushioned seatbacks and deep seat cushioning provide pleasing relaxation." , Images="/images/product5.png"  WHERE Product_ID=5;

UPDATE Products SET About="It's wide and soft seat and back cushions make it inviting to rest, relax and enjoy a summers day. It also includes nickel finished stud trimming on the front of the armrest and lower section of the seating. This sofa set is a must for the living room." , Images="/images/product6.png"  WHERE Product_ID=6;

UPDATE Products SET About="The Canopy Bed is a sleek and modern bed with a dramatic presence that will be sure to become the centerpiece of your bedroom. Made out of metal,it’s a sturdy structure that will stand the test of time. This four-poster canopy bed features a crisscross headboard and footboard to give your space a touch of glam." , Images="/images/product7.png"  WHERE Product_ID=7;

UPDATE Products SET About="This beautiful upholstered bed was designed with large spaces in mind, the velvet platform extends several inches around the mattress giving you more room to sit as well as rest. This peice is perfect to add a touch of modern to your bedroom." , Images="/images/product8.png"  WHERE Product_ID=8;

UPDATE Products SET About="If you want to have sweet dreams, it starts with a good bed – and if you’re still looking for the right one, this product is here to help. Showcasing an eye-catching metal canopy in a white gold hue, this panel bed works well in any contemporary setting. The included headboard is 
upholstered in foam-filled linen with horizontal seams for an inviting feel, and after assembly, this product designed to support up to 500 lbs.", Images="/images/product9.png"  WHERE Product_ID=9;

UPDATE Products SET About="Classic canopy design and clean lines make it perfect for a modern or glam aesthetic. Crafted of metal, this statement-making shimmering bed also features a 100% linen upholstered headboard. A slat kit is included, with three center support legs, but a box spring is still required.", Images="/images/product10.jpg"  WHERE Product_ID=10;

UPDATE Products SET About="This Widener Upholstered Panel Bed in undeniable modern and completely elevates your room with its unique functionality. Crafted with soft cushioned fabric, this bed features built-in touch lighting that showcases your stored items along the brick style headboard. Convenient charge devices on each side of the bed thanks to dual USB charging ports." , Images="/images/product11.jpg"  WHERE Product_ID=11;

UPDATE Products SET About="Taking cues from contemporary decor, this minimalist bedframe boasts a rectangular silhouette with protruding bedrails. Clean-lined and understated, this platform measures 8'' H x 74'' W x 87'' L – making it the perfect pick for a queen-size mattress. It’s made in North America from manufactured wood, and showcases a solid neutral finish for a look that fits in with a variety of color palettes. Plus, it comes backed by a five-year limited warranty." , Images="/images/product12.png"  WHERE Product_ID=12;

---Creating a Table for the prices of my products, Added the product ID to the prices so when i do a inner join the prices go with the right product---

CREATE TABLE Price
(
    Price VARCHAR(100),
    Product_ID INT IDENTITY NOT NULL,
    Primary Key (Product_ID)
);

--- Inserting prices into price table---
INSERT INTO Price
    (Price)
VALUES
    ("$1,229.98"),
    ("$689.99"),
    ("$1,239.99"),
    ("$1,751.99"),
    ("$1,999.99"),
    ("$829.99"),
    ("$256.82"),
    ("$879.99"),
    ("$249.99"),
    ("$1,019.99"),
    ("$1,259.99"),
    ("$319.99");

----Creating a table with contact information on the customers---

CREATE TABLE Contact
(
    Customer_Name varchar(100),
    Email VARCHAR(100),
    Phone VARCHAR(100),
    City VARCHAR(100),
    State VARCHAR(100),
    ZIP INT
);
---Inserting Customer values into table---

INSERT INTO Contact
    (Customer_Name, Email, Phone, City, State, ZIP)

VALUES
    ("Daisha Pettus", "Daishapettus19@yahoo.com", "803-524-4437", "Rock Hill", "SC", 29730),
    ("Shirley Damiron", "ShirleyD@yahoo.com", "704-111-2222", "Charlotte", "NC", 28273),
    ("Amber King", "AmberK1@gmail.com", "803-207-5645", "Fort Mill", "SC", 29782),
    ("Sarah Brown", "SarahBrown@icloud.com", "704-556-7845", "Charlotte", "NC", "28273"),
    ("Bella Jones", "BJ@aol.com", "803-525-6677", "Rock Hill", "SC", "29730"),
    ("Emily Smith", "Esmith@yahoo.com", "803-282-7234", "Los Angeles", "CA", 98021),
    ("Mark Jackson", "Markjackson@yahoo.com", "555-443-6787", "Miami", "FL", 30567),
    ("Quan Talford", "Qtalford@gmail.com", "803-833-7856", "Rock Hill", "SC", 29730),
    ("Aaliyah Johnson", "AaliyahJohnson@yahoo.com", "704-453-5643", "Charlotte", "NC", 28273),
    ("Angela Snicker", "BigAng@gmail.com", "803-445-6784", "Fort Mill", "SC", 29730);

--Selecting products table to do a inner join with the price table, prices will coordinate by product_id---
SELECT Products.Product_ID, Products.Product_Name, Price.price
FROM Products INNER JOIN Price ON Products.Product_ID = Price.Product_ID
GROUP BY Product_ID;
