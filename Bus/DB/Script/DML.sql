USE Bus

GO

-- inserts route 
INSERT INTO [Route] VALUES 
('Route 01', 'From Anaheim to SuunyVale'), 
('Ruote 47', 'From Berkeley to Sacramento'),
('Ruote 43','From Corona to Berkeley'),
('Route 10','From Escondido to Santa Clara'),
('Ruote 02','From Fresno to Oakland'),
('Route 27','From Fontana to Pasadena'),
('Route 03', 'From Fremont to Pasadena'),
('Route 04', 'From Irvine to Sacramento'),
('Route 05', 'From Ontario to  Santa clara' ),
('Route 06', 'From Oakland to Ontario'),
('Route 07', 'From Pasadena to Berkeley'),
('Route 08', 'From Santa Clara to San Diego'),
('Route 09', 'From Sacramento to Sunnyvaley'),
('Route 11', 'From Sunnyvale to San Diego'),
('Route 12', 'From San Diego to Riverside'),
('Route 13', 'From Riverside to San Diego'),
('Route 14', 'From San Francisco to San Bernardino'),
('Route 15', 'From San Bernardino to Pasadena')


--inserts journey 
INSERT INTO [Journey] VALUES 
('Anahem-SunnyVale'),
('Berkeley-Sacramento-IV'),
('Corona-SantaClara-III'),
('Escondido-SantaClara'),
('Fontana-Pasadena'),
('Fresno-Oakland'),
('Fremont-Pasadena-Fontana'),
('Irvine-Sacramento'),
('Ontario-SantaClara'),
('Oakland-Ontario'),
('Pasadena-Berkeley'),
('Santaclara-SanDiego-II'),
('Sacramento-Sunnyvaley'),
('Sunnyvale-SanDiego-X'),
('SanDiego-Riverside-III'),
('Riverside-SanDiego'),
('SanFrancico-SanBernardino-V'),
('SanBernardino-Pasadena')


-- inserts Route journey
INSERT INTO Route_journey VALUES 
(2,2, 'Small travel'),
(2,11, 'Long travel'),
(4,8, 'Small travel'),
(4,14, 'Small travel'),
(5,3, 'Long travel'),
(5,17, 'Medium travel'),
(7,7, 'Small travel'),
(8,2, 'Long travel'),
(9,9, 'Medium travel'),
(10,12, 'Long travel'),
(13,10, 'Small travel'),
(13,7, 'Small travel'),
(13,6, 'Medium travel'),
(15,5, 'Small travel'),
(16,12, 'Long travel'),
(17,14, 'Medium travel'),
(18,2, 'Small travel')


--inserts route_log
INSERT INTO Route_log VALUES 
(49, '01-27-2020', 2),
(36, '11-20-2020', 2),
(50, '07-16-2020', 4),
(60, '09-08-2020', 5),
(36, '02-10-2020', 7),
(40, '11-03-2020', 8),
(36, '10-11-2021', 9),
(36, '04-24-2020', 10),
(46, '09-15-2020', 13),
(47, '12-01-2020', 15),
(36, '02-05-2020', 16),
(36, '12-05-2020', 16),
(40, '08-22-2020', 17),
(49, '11-30-2020', 17),
(40, '08-22-2020', 18),
(48, '12-30-2020', 18)


-- inserts town 
INSERT INTO [Town]  VALUES 
('Anaheim'),
('Berkeley'),
('Corona'),
('Escondido'),
('Fresno'),
('Fontana'),
('Fremont'),
('Irvine'),
('Ontario'),
('Oakland'),
('Pasadena'),
('Santa Clara'),
('Sacramento'),
('Sunnyvale'),
('San Diego'),
('Riverside'),
('San Francisco'),
('San Bernardino')


-- inserts Garage
INSERT INTO Garage VALUES
('North Garage',10,5),
('Louisa`s Garage', 15,5),
('Mars Garage', 23, 7),
('Dio Garage', 11, 7),
('Jhonathan Garage', 10, 9),
('Enrique Garage',19,13),
('Mirian Garage',22,16),
('South Garage', 18, 15),
('Santa Martara Garage', 20, 18),
('Jhonathan Garage II', 15, 3),
('Fenix Garage',25,9),
('San Marino Garage',13,6),
('South Garage II', 20, 2),
('Saint Garage', 14, 13),
('Jhonathan Garage III', 25, 9),
('Marco Garage', 21, 2),
('Another Fenix Garage', 21, 13),
('Militar Garage III', 17, 9)


--inserts journey_town
INSERT INTO Journey_town VALUES
(2,1, 'nice view of the city'),
(2,2, 'not nice view of the city'),
(3,3, 'nice view of the city'),
(4,4, 'not nice view of the city'),
(5,5, 'nice view of the city'),
(6,6, 'nice view of the city'),
(7,7, 'nice view of the city'),
(8,8, 'not nice view of the city'),
(9,9, 'nice view of the city'),
(10,10, 'nice view of the city'),
(11,11, 'nice view of the city'),
(12,12, 'nice view of the city'),
(13,13, 'not nice view of the city'),
(14,14, 'nice view of the city'),
(15,15, 'nice view of the city'),
(16,16, 'not nice view of the city'),
(17,17, 'not nice view of the city'),
(18,17, 'nice view of the city')


--inserts drivers
INSERT INTO Driver VALUES 
('Dimitier', 'German St. 124', '999-952679' , 3),
('Nebraka', 'Lucas Ave. 152', '055-395267' , 2),
('Dimitri', 'Pul St. 08', '999-952672', 4),
('Svetlana', 'Maria Ave. 123', '055-526793', 17),
('Vladimir', 'Main Ave. 01', '999-526794', 17),
('Boris', 'Mark St. 17', '999-987432' , 15),
('Alexey', 'Mirian Ave. 12', '055-892375' , 6),
('Jasha', 'Paul St. 10', '999-098234', 8),
('Mijail', 'Langris Ave. 23', '055-123793', 10),
('Nikolay', 'Albafika Ave. 81', '999-435794', 11),
('Alek', 'Moon St. 14', '999-098234' ,12),
('Alexander', 'Lima Ave. 52', '055-456729' , 7),
('Yuri', 'Dog St. 68', '999-987923', 5),
('Yura', 'Sea Ave. 36', '055-098125', 9),
('Gavrel', 'Latin Ave. 91', '999-989992', 10),
('Nikola', 'Kindred St. 4', '999-123789' ,13),
('Amir', 'Aluca Ave. 15', '055-897234' ,14),
('Demir', 'Marco St. 22', '999-123097', 16)


--inserts type_bus
INSERT INTO Type_bus VALUES 
('Acbe 203'),
('Acbe 204'),
('Acbe 205'),
('Acbe 206'),
('Acbe 207'),
('Acbe 208'),
('Acbe 209'),
('Acbe 210'),
('Acbe 211'),
('Acbe 212'),
('Acbe 213'),
('Acbe 214'),
('Acbe 215'),
('Acbe 216'),
('Acbe 217'),
('Acbe 218'),
('Acbe 219'),
('Acbe 220')



--insert bus
INSERT INTO Bus VALUES 
('AFC-N21', 20, 'Small',1, 2),
('RET-T45', 20, 'Small',1, 3),
('MDF-C34', 20, 'Small',1, 3),
('ABC-P87', 20, 'Small',1, 4),
('POI-S22', 40, 'Meium', 4, 4),
('HGF-K22', 40, 'Meium', 4, NULL),
('MCV-N34', 40, 'Meium', 4, NULL),
('ABD-K19', 60, 'Big', 2, 5),
('RHT-KI7', 20, 'Big', 5, 6),
('OPU-K90', 60, 'Big', 2, 7),
('KYN-Y67', 20, 'Big', 5, 8),
('JYT-Q12', 60, 'Big', 2, 9),
('NHC-E56', 20, 'Big', 5, 10),
('PTY-K87', 60, 'Big', 2, 11),
('JHD-ZH7', 10, 'Huge', 3, 12),
('YTR-KJ7', 10, 'Huge', 3, 13),
('POK-Z90', 10, 'Huge', 3, 14),
('YUT-H77', 10, 'Huge', 3, 15)