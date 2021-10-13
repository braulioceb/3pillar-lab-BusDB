USE Bus

GO


-- ROUTE PROCEDURES 
	--Insert Route
DROP PROCEDURE IF EXISTS spInsertRoute

GO 
CREATE PROCEDURE spInsertRoute
(
	@name nvarchar(50),
	@description nvarchar(100)
)
AS
BEGIN
	SELECT * FROM  [dbo].[Route] 

	INSERT INTO [dbo].[Route] 
	VALUES(@name,@description)
	
	SELECT * FROM  [dbo].[Route] order by ID  desc
END

GO

	--Delete Route
DROP PROCEDURE IF EXISTS spDeleteRoute

GO
	
CREATE PROCEDURE spDeleteRoute(
	@ID INT 
)
AS 
BEGIN 
	SELECT * FROM [dbo].[Route]
	
	DELETE FROM [Route_journey] WHERE ID_route = @ID
 	DELETE FROM [Route_log] WHERE ID_route = @ID
	DELETE FROM [Bus] WHERE ID_route = @ID
	DELETE FROM [Route] WHERE ID = @ID

	SELECT * FROM [dbo].[Route]
END

GO
	
	--Update Route
DROP PROCEDURE IF EXISTS spUpdateRoute

GO	

CREATE PROCEDURE spUpdateRoute
(
	@ID INT,
	@name nvarchar(50),
	@description nvarchar(100)
)
AS 
BEGIN
	SELECT * FROM [dbo].[Route]

	UPDATE [Route]
	SET 
		[name] = @name,
		[description] = @description
	WHERE ID = @ID
	
	SELECT * FROM [Route]	
END 

GO

	--Select Route
DROP PROCEDURE IF EXISTS spSelectRoute 

GO 

CREATE PROCEDURE spSelectRoute(
	@ID INT
)
AS 
BEGIN
	SELECT [ID], [name], [description] FROM [dbo].[Route]
	WHERE ID = @ID
END

GO


--JOURNEY PROCEDURE

	--Insert Journey
DROP PROCEDURE IF EXISTS spInsertJourney

GO 
CREATE PROCEDURE spInsertJourney
(
	@name nvarchar(50)
)
AS
BEGIN
	SELECT * FROM  [dbo].[Journey] 

	INSERT INTO [dbo].[Journey] 
	VALUES(@name)
	
	SELECT * FROM  [dbo].[Journey] order by ID  desc
END

GO

	--Delete Journey
DROP PROCEDURE IF EXISTS spDeleteJourney

GO
	
CREATE PROCEDURE spDeleteJourney(
	@ID INT 
)
AS 
BEGIN 
	SELECT * FROM [dbo].[Journey]
	
	DELETE FROM [Driver] WHERE ID_journey = @ID
	DELETE FROM [Route_journey] WHERE ID_journey = @ID 
 	DELETE FROM [Journey_town] WHERE ID_journey = @ID
	DELETE FROM [Journey] WHERE ID = @ID

	SELECT * FROM [dbo].[Journey]
END

GO
	
	--Update Journey
DROP PROCEDURE IF EXISTS spUpdateJourney

GO	

CREATE PROCEDURE spUpdateJourney
(
	@ID INT,
	@name nvarchar(50)
)
AS 
BEGIN
	SELECT * FROM [dbo].[Journey]

	UPDATE [Journey]
	SET 
		[name] = @name
	WHERE ID = @ID
	
	SELECT * FROM [Journey]	
END 

GO

	--Select Journey
DROP PROCEDURE IF EXISTS spSelectJourney 

GO 

CREATE PROCEDURE spSelectJourney(
	@ID INT
)
AS 
BEGIN
	SELECT [ID], [name] FROM [dbo].[Journey]
	WHERE ID = @ID
END

GO


-- ROUTE-JOURNEY PROCEDURE
	--Insert Route_Journey 
DROP PROCEDURE IF EXISTS spInsertRoute_journey

GO 
CREATE PROCEDURE spInsertRoute_journey
(
	@ID_route INT,
	@ID_journey INT,
	@description varchar(20)
)
AS
BEGIN
	SELECT * FROM  [dbo].[Route_journey] 

	INSERT INTO [dbo].[Route_journey] 
	VALUES(@ID_route,@ID_journey, @description)
	
	SELECT * FROM  [dbo].[Route_journey] order by ID_route  desc
END

GO

	--Update Route_Journey
DROP PROCEDURE IF EXISTS spUpdateRoute_journey

GO	

CREATE PROCEDURE spUpdateRoute_Journey
(
	@ID_route INT,
	@ID_journey INT,
	@description nvarchar(20)
)
AS 
BEGIN
	SELECT * FROM [dbo].[Route_journey]

	UPDATE [Route_journey]
	SET 
		[description] = @description
	WHERE ID_route = @ID_route AND ID_journey = @ID_journey
	
	SELECT * FROM [Route_journey]	
END 

GO

	--Select Route_Journey
DROP PROCEDURE IF EXISTS spSelectRoute_journey 

GO 

CREATE PROCEDURE spSelectRoute_journey(
	@ID_route INT,
	@ID_journey INT
)
AS 
BEGIN
	SELECT [ID_route], [ID_journey], [description] FROM [dbo].[Route_journey]
	WHERE ID_route = @ID_route AND ID_journey = @ID_journey 
END

GO

	--Delete Route_Journey
DROP PROCEDURE IF EXISTS spDeleteRoute_journey

GO
	
CREATE PROCEDURE spDeleteRoute_journey(
	@ID_route INT,
	@ID_journey INT
)
AS 
BEGIN 
	SELECT * FROM [dbo].[Route_journey]
	
	DELETE FROM [Route_journey]
	WHERE ID_route = @ID_route AND ID_journey = @ID_journey

	SELECT * FROM [dbo].[Route_journey]
END

GO


-- ROUTE_LOG PROCEDURE
	--Insert Route_log 
DROP PROCEDURE IF EXISTS spInsertRoute_log

GO 
CREATE PROCEDURE spInsertRoute_log
(
	@pass_averange INT,
	@Date DATE,
	@ID_route INT
)
AS
BEGIN
	SELECT * FROM  [dbo].[Route_log] 

	INSERT INTO [dbo].[Route_log] 
	VALUES(@pass_averange, @Date, @ID_route)
	
	SELECT * FROM  [dbo].[Route_log] order by ID  desc
END

GO

	--Update Route_log
DROP PROCEDURE IF EXISTS spUpdateRoute_log

GO	

CREATE PROCEDURE spUpdateRoute_log
(
	@ID INT,
	@pass_averange INT,
	@Date DATE,
	@ID_route INT
)
AS 
BEGIN
	SELECT * FROM [dbo].[Route_log]

	UPDATE [Route_log]
	SET 
		[pass_average] = @pass_averange,
		[Date] = @Date,
		ID_route = @ID_route
	WHERE ID = @ID
	
	SELECT * FROM [Route_log]	
END 

GO

	--Select Route_log
DROP PROCEDURE IF EXISTS spSelectRoute_log

GO 

CREATE PROCEDURE spSelectRoute_log(
	@ID INT
)
AS 
BEGIN
	SELECT [ID], [pass_average], [ID_route] FROM [dbo].[Route_log]
	WHERE ID = @ID 
END

GO

	--Delete Route_log
DROP PROCEDURE IF EXISTS spDeleteRoute_log

GO
	
CREATE PROCEDURE spDeleteRoute_log(
	@ID INT
)
AS 
BEGIN 
	SELECT * FROM [dbo].[Route_log]
	
	DELETE FROM [Route_log]
	WHERE ID = @ID

	SELECT * FROM [dbo].[Route_log]
END

GO


-- TOWN PROCEDURE
	--Insert Town 
DROP PROCEDURE IF EXISTS spInsertTown

GO

CREATE PROCEDURE spInsertTown
(	
	@name nvarchar(50)
)
AS
BEGIN
	SELECT * FROM  [dbo].[Town] 

	INSERT INTO [dbo].[Town] 
	VALUES(@name)
	
	SELECT * FROM  [dbo].[Town] order by ID  desc
END

GO

	--Update Town
DROP PROCEDURE IF EXISTS spUpdateTown

GO	

CREATE PROCEDURE spUpdateTown
(
	@ID INT,
	@name nvarchar(50)
)
AS 
BEGIN
	SELECT * FROM [dbo].[Town]

	UPDATE [Town]
	SET 
		[Name] = @name
	WHERE ID = @ID
	
	SELECT * FROM [Town]	
END 

GO

	--Select Town
DROP PROCEDURE IF EXISTS spSelectTown

GO 

CREATE PROCEDURE spSelectTown(
	@ID INT
)
AS 
BEGIN
	SELECT [ID], [Name] FROM [dbo].[Town]
	WHERE ID = @ID 
END

GO

	--Delete Town
DROP PROCEDURE IF EXISTS spDeleteTown

GO
	
CREATE PROCEDURE spDeleteTown(
	@ID INT
)
AS 
BEGIN 
	SELECT * FROM [dbo].[Town]
	
	DELETE FROM [Garage] WHERE 	ID_town = @ID
	DELETE FROM [Journey_town] WHERE ID_town = @ID
	DELETE FROM [Town] WHERE ID = @ID

	SELECT * FROM [dbo].[Town]
END

GO


-- GARAGE PROCEDURE
	--Insert Garage
DROP PROCEDURE IF EXISTS spInsertGarage

GO

CREATE PROCEDURE spInsertGarage
(	
	@name nvarchar(50),
	@Capacity INT,
	@ID_town INT
)
AS
BEGIN
	SELECT * FROM  [dbo].[Garage] 

	INSERT INTO [dbo].[Garage] 
	VALUES(@name, @Capacity, @ID_town)
	
	SELECT * FROM  [dbo].[Garage] order by ID  desc
END

GO

	--Update Garage
DROP PROCEDURE IF EXISTS spUpdateGarage

GO	

CREATE PROCEDURE spUpdateGarage
(
	@ID INT,
	@name nvarchar(50),
	@Capacity INT,
	@ID_town INT
)
AS 
BEGIN
	SELECT * FROM [dbo].[Garage]

	UPDATE [Garage]
	SET 
		[Name] = @name,
		[Capacity] =  @Capacity,
		[ID_town] = @ID_town
	WHERE ID = @ID
	
	SELECT * FROM [Garage]	
END 

GO

	--Select Garage
DROP PROCEDURE IF EXISTS spSelectGarage

GO 

CREATE PROCEDURE spSelectGarage(
	@ID INT
)
AS 
BEGIN
	SELECT [ID], [Name], [Capacity], [ID_town] FROM [dbo].[Garage]
	WHERE ID = @ID 
END

GO

	--Delete Garage
DROP PROCEDURE IF EXISTS spDeleteGarage

GO
	
CREATE PROCEDURE spDeleteGarage(
	@ID INT
)
AS 
BEGIN 
	SELECT * FROM [dbo].[Garage]
	
	DELETE FROM [Garage]
	WHERE ID = @ID

	SELECT * FROM [dbo].[Garage]
END

GO

-- JOURNEY_TOWN PROCEDURE
	--Insert Journey_Town 
DROP PROCEDURE IF EXISTS spInsertJourney_town

GO 
CREATE PROCEDURE spInsertJourney_town
(
	@ID_town INT,
	@ID_journey INT,
	@description varchar(50)
)
AS
BEGIN
	SELECT * FROM  [dbo].[Journey_town] 

	INSERT INTO [dbo].[Journey_town] 
	VALUES(@ID_town,@ID_journey, @description)
	
	SELECT * FROM  [dbo].[Journey_town] order by ID_town  desc
END

GO

	--Update Journey_town
DROP PROCEDURE IF EXISTS spUpdateJourney_town

GO	

CREATE PROCEDURE spUpdateJourney_town
(
	@ID_town INT,
	@ID_journey INT,
	@description nvarchar(50)
)
AS 
BEGIN
	SELECT * FROM [dbo].[Journey_town]
	UPDATE [Journey_town]
	SET 
		[description] = @description
	WHERE ID_town = @ID_town AND ID_journey = @ID_journey
	
	SELECT * FROM [Journey_town]	
END 

GO

	--Select Journey_town
DROP PROCEDURE IF EXISTS spSelectJourney_town 

GO 

CREATE PROCEDURE spSelectJourney_town
(
	@ID_town INT,
	@ID_journey INT
)
AS 
BEGIN
	SELECT [ID_town], [ID_journey], [description] FROM [dbo].[Journey_town]
	WHERE ID_town = @ID_town AND ID_journey = @ID_journey 
END

GO

	--Delete Route_Journey
DROP PROCEDURE IF EXISTS spDeleteJourney_town

GO
	
CREATE PROCEDURE spDeleteJourney_town
(
	@ID_town INT,
	@ID_journey INT
)
AS 
BEGIN 
	SELECT * FROM [dbo].[Journey_town]
	
	DELETE FROM [Journey_town]
	WHERE ID_town = @ID_town AND ID_journey = @ID_journey

	SELECT * FROM [dbo].[Journey_town]
END

GO


-- Driver PROCEDURE
	--Insert Driver
DROP PROCEDURE IF EXISTS spInsertDriver

GO

CREATE PROCEDURE spInsertDriver
(	
	@name nvarchar(50),
	@address nvarchar(100),
	@telephone varchar(50),
	@ID_journey INT
)
AS
BEGIN
	SELECT * FROM  [dbo].[Driver] 

	INSERT INTO [dbo].[Driver] 
	VALUES(@name, @address, @telephone, @ID_journey)
	
	SELECT * FROM  [dbo].[Driver] order by ID  desc
END

GO

	--Update Driver
DROP PROCEDURE IF EXISTS spUpdateDriver

GO	

CREATE PROCEDURE spUpdateDriver
(
	@ID INT,
	@name nvarchar(50),
	@address nvarchar(100),
	@telephone nvarchar(50),
	@ID_Journey INT
)
AS 
BEGIN
	SELECT * FROM [dbo].[Driver]

	UPDATE [Driver]
	SET 
		[Name] = @name,
		[Address] =  @address,
		[Telephone] = @telephone,
		[ID_journey] = @ID_Journey
	WHERE ID = @ID
	
	SELECT * FROM [Driver]	
END 

GO

	--Select Driver
DROP PROCEDURE IF EXISTS spSelectDriver

GO 

CREATE PROCEDURE spSelectDriver(
	@ID INT
)
AS 
BEGIN
	SELECT [ID], [Name], [Address], [Telephone], [ID_journey] FROM [dbo].[Driver]
	WHERE ID = @ID 
END

GO

	--Delete Driver
DROP PROCEDURE IF EXISTS spDeleteDriver

GO
	
CREATE PROCEDURE spDeleteDriver(
	@ID INT
)
AS 
BEGIN 
	SELECT * FROM [dbo].[Driver]
	
	DELETE FROM [Driver]
	WHERE ID = @ID

	SELECT * FROM [dbo].[Driver]
END

GO


-- TYPE_BUS PROCEDURE
	--Insert Type_bus
DROP PROCEDURE IF EXISTS spInsertType_bus

GO

CREATE PROCEDURE spInsertType_bus
(	
	@description nvarchar(100)
)
AS
BEGIN
	SELECT * FROM  [dbo].[Type_bus] 

	INSERT INTO [dbo].[Type_bus] 
	VALUES(@description)
	
	SELECT * FROM  [dbo].[Type_bus] order by ID  desc
END

GO

	--Update Type_bus
DROP PROCEDURE IF EXISTS spUpdateType_bus

GO	

CREATE PROCEDURE spUpdateType_bus
(
	@ID INT,
	@Description nvarchar(100)
)
AS 
BEGIN
	SELECT * FROM [dbo].[Type_bus]

	UPDATE [Type_bus]
	SET 
		[Description] = @Description
	WHERE ID = @ID
	
	SELECT * FROM [Type_bus]	
END 

GO

	--Select Type_bus
DROP PROCEDURE IF EXISTS spSelectType_bus

GO 

CREATE PROCEDURE spSelectType_bus(
	@ID INT
)
AS 
BEGIN
	SELECT [ID], [Description] FROM [dbo].[Type_bus]
	WHERE ID = @ID 
END

GO

	--Delete Type_bus
DROP PROCEDURE IF EXISTS spDeleteType_bus

GO
	
CREATE PROCEDURE spDeleteType_bus(
	@ID INT
)
AS 
BEGIN 
	SELECT * FROM [dbo].[Type_bus]
	
	DELETE FROM [Bus] WHERE ID_type_bus = @ID
	DELETE FROM [Type_bus] WHERE ID = @ID

	SELECT * FROM [dbo].[Type_bus]
END

GO


-- BUS PROCEDURE
	--Insert Bus
DROP PROCEDURE IF EXISTS spInsertBus

GO

CREATE PROCEDURE spInsertBus
(	
	@licence_plate nvarchar(50),
	@capacity INT,
	@size nvarchar(50),
	@ID_type_bus INT,
	@ID_route INT
)
AS
BEGIN
	SELECT * FROM  [dbo].[Bus] 

	INSERT INTO [dbo].[Bus] 
	VALUES(@licence_plate, @capacity, @size, @ID_type_bus, @ID_route)
	
	SELECT * FROM  [dbo].[Bus] order by licence_plate 
END

GO

	--Update Bus
DROP PROCEDURE IF EXISTS spUpdateBus

GO	

CREATE PROCEDURE spUpdateBus
(
	@licence_plate nvarchar(50),
	@capacity INT,
	@size nvarchar(50),
	@ID_type_bus INT,
	@ID_route INT 
)
AS 
BEGIN
	SELECT * FROM [dbo].[Bus]

	UPDATE [Bus]
	SET 
		capacity = @capacity,
		size = @size,
		ID_type_bus = @ID_type_bus,
		ID_route = @ID_route
	WHERE licence_plate = @licence_plate
	
	SELECT * FROM [Bus]	
END 

GO

	--Select Bus
DROP PROCEDURE IF EXISTS spSelectBus

GO 

CREATE PROCEDURE spSelectBus(
	@licence_plate nvarchar(50)
)
AS 
BEGIN
	SELECT [licence_plate], [size], [ID_type_bus], [ID_route] FROM [dbo].[Bus]
	WHERE licence_plate = @licence_plate
END

GO

	--Delete Bus
DROP PROCEDURE IF EXISTS spDeleteBus

GO
	
CREATE PROCEDURE spDeleteBus(
	@licence_plate nvarchar(50) 
)
AS 
BEGIN 
	SELECT * FROM [dbo].[Bus]
	
	DELETE FROM [Bus] WHERE licence_plate = @licence_plate

	SELECT * FROM [dbo].[Bus]
END

GO