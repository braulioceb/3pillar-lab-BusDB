USE Bus

GO

EXEC spInsertRoute 'Route spInsertedRoute', 'from spInsertRoute' 
EXEC spUpdateRoute 1, 'Route updateRoute', 'from spInsertRoute'
EXEC spSelectRoute 1
EXEC spDeleteRoute 1

GO 

EXEC spInsertJourney 'Journey spInsert'
EXEC spUpdateJourney 18, 'Journey spUpdate'
EXEC spSelectJourney 18
EXEC spDeleteJourney 18

GO

EXEC spInsertRoute_journey 15, 11, 'Route_jouney description inserted'
EXEC spUpdateRoute_journey 4,8,'Route_journey Updated '
EXEC spSelectRoute_journey 2,2
EXEC spDeleteRoute_journey 2,11

GO 

EXEC spInsertRoute_log 100, '09-09-2019', 15
EXEC spUpdateRoute_log 1, 200, '09-09-2019', 14
EXEC spSelectRoute_log 1
EXEC spDeleteRoute_log 15

GO

EXEC spInsertTown 'Inserted City'
EXEC spUpdateTown 18, 'Updated City'
EXEC spSelectTown 15
EXEC spDeleteTown 1

GO

EXEC spInsertGarage 'Inserted City', 100, 15
EXEC spUpdateGarage 2, 'Updated City', 1, 15
EXEC spSelectGarage 15
EXEC spDeleteGarage 1

GO

EXEC spInsertJourney_town 2, 5, 'nice view of inserted Journey_town'
EXEC spUpdateJourney_town 4, 4, 'nice view updated'
EXEC spSelectJourney_town 4, 4
EXEC spDeleteJourney_town 2, 2

GO

EXEC spInsertDriver 'Anatoli', 'Saint Av. 12', '999-999912', 8
EXEC spUpdateDriver 1, 'updated name', 'updated Av.', '999-99999', 10
EXEC spSelectDriver 4
EXEC spDeleteDriver 15

GO

EXEC spInsertType_bus 'Inserted description'
EXEC spUpdateType_bus 18,'updated description'
EXEC spSelectType_bus 1	
EXEC spDeleteType_bus 15