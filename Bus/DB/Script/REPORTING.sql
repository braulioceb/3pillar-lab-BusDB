USE Bus

GO   -- 1

SELECT 
	 DISTINCT  G.[Name], TB.[Description] 
FROM 
	Garage G
JOIN 
	Town T ON G.ID_town = T.[ID]
JOIN
	Journey_town JT ON T.[ID] = JT.ID_town
JOIN 
	Journey J ON JT.ID_journey = J.ID 
JOIN 
	Route_journey RJ ON J.ID = RJ.ID_journey
JOIN 
	[Route] R ON RJ.ID_route = R.ID
JOIN 
	Bus B ON R.ID = B.ID_route
JOIN 
	Type_bus TB ON B.ID_type_bus = TB.ID
GROUP BY
	G.[Name], TB.[Description]

GO --2

SELECT 
	 G.[Name], TB.[Description], COUNT(*) AS Total 
FROM 
	Garage G
JOIN 
	Town T ON G.ID_town = T.[ID]
JOIN
	Journey_town JT ON T.[ID] = JT.ID_town
JOIN 
	Journey J ON JT.ID_journey = J.ID 
JOIN 
	Route_journey RJ ON J.ID = RJ.ID_journey
JOIN 
	[Route] R ON RJ.ID_route = R.ID
JOIN 
	Bus B ON R.ID = B.ID_route
JOIN 
	Type_bus TB ON B.ID_type_bus = TB.ID
GROUP BY
	G.[Name], TB.[Description]

GO --3

SELECT 
	R.ID, RJ.ID_journey
FROM 
	[Route] R
FULL OUTER JOIN Route_journey RJ ON R.ID = RJ.ID_route
FULL OUTER JOIN Journey J ON RJ.ID_journey = J.ID


GO --4

SELECT 
	DISTINCT D.ID, D.[Name], T.[Name] 
FROM Driver D
JOIN 
	Journey J ON D.ID_journey = J.ID
JOIN 
	Journey_town JT ON J.ID = JT.ID_journey
JOIN 
	Town T ON JT.ID_town = T.ID
ORDER BY 
	D.[name] DESC

GO --5

SELECT 
	TB.[ID], TB.Description
FROM Type_bus TB
LEFT JOIN 
	BUS B ON TB.ID = B.ID_type_bus
WHERE 
	B.licence_plate IS NULL	

GO --6

SELECT 
	 T.[name], COUNT(*)
FROM 
	Garage G
JOIN	
	Town T ON G.ID_town = T.ID
GROUP BY
	T.[Name]

GO --7

SELECT 
	[ID_type_bus], [size], COUNT([size]) AS [Total]
FROM 
	[Bus]
GROUP BY 
	[ID_type_bus], [size]
ORDER BY
	[ID_type_bus]
DESC

GO --8

SELECT 
	R.[ID], R.[Name], RL.pass_average, RL.[Date]
FROM 
	[Route] R
JOIN 
	Route_log RL ON R.ID  = RL.ID_route
WHERE 
	RL.[Date]
BETWEEN '20210101' AND '20211101'	

GO --9

SELECT 
	D.[ID], COUNT(J.ID) AS Toltal_Journey	
FROM
	Driver D 
INNER JOIN
	Journey J ON D.ID_journey = J.ID 
WHERE 
	D.ID > 10
GROUP BY 
	D.[ID]


GO -- 10

SELECT 
	MIN(pass_average) AS MinPassAverage, MAX(pass_average) AS MaxPassAverage, AVG(pass_average) AS AvgPassAverage 
FROM Route_log 

GO --View BusRouteDescription -11

CREATE VIEW BUSRouteDescription
AS 
SELECT
	B.licence_plate, R.[name], R.[description]	
FROM Bus B
LEFT JOIN 
	Route R ON B.ID_route = R.ID

GO

SELECT * FROM BUSRouteDescription

GO --View DriverBusLicence -12

CREATE VIEW DriverBusLicence
AS 
SELECT 
	D.[name], D.ID, B.licence_plate
FROM 
	Driver D
LEFT JOIN 
	Journey J ON D.ID_journey = J.ID
LEFT JOIN 
	Route_journey RJ ON J.ID = RJ.ID_journey
LEFT JOIN 
	[Route] R ON RJ.ID_route = R.ID
LEFT JOIN 
	Bus B ON R.ID = B.ID_route

GO 

SELECT * FROM DriverBusLicence

GO --View TownWithoutJourney -13

CREATE VIEW TownWithoutJourney
AS
SELECT 
	T.ID, T.[name]
FROM 
	Town T
LEFT JOIN 
	Journey_town JT ON T.ID = JT.ID_town
WHERE
	JT.ID_journey IS NULL

GO

SELECT * FROM TownWithoutJourney

GO --ViewRouteWithoutRouteLog -14

CREATE VIEW RouteWithoutRouteLog
AS 
SELECT 
	R.[ID], R.[name]
FROM
	[Route] R
LEFT JOIN 
	Route_log RL ON R.ID = RL.ID_route
WHERE 
	RL.ID IS NULL

GO

SELECT * FROM RouteWithoutRouteLog

GO -- RouteWithoutBus -15

CREATE VIEW RouteWithoutBus 
AS 
SELECT 
	R.ID, R.[name]
FROM 
	Bus B
RIGHT JOIN
	[Route] R ON B.ID_route = R.ID
WHERE 
	B.licence_plate IS NULL 

GO 

SELECT * FROM RouteWithoutBus

GO -- 16

SELECT 
	COUNT(*)
FROM 
	BUS
WHERE 
	ID_route IS NULL OR ID_type_bus IS NULL

GO -- 17

SELECT 
	D.ID, D.[Name], G.[Name] AS GarageName
FROM 
	Driver D
LEFT JOIN 
	Journey J ON D.ID_journey = J.ID
LEFT JOIN 
	Journey_town JT ON J.ID = JT.ID_journey
LEFT JOIN 
	Town T ON JT.ID_town = T.ID
LEFT JOIN 
	Garage G ON T.ID = G.ID_town
