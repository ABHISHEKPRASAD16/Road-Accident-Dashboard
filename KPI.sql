--SELECT * FROM road_accident;


--CURRENT YEAR CASUALITIES
--SELECT SUM(number_of_casualties) AS CY_Casualties FROM road_accident WHERE YEAR(accident_date)='2022';

--CURRENT YEAR ACCIDENTS
--SELECT COUNT(DISTINCT accident_index) AS CY_Accident FROM road_accident WHERE YEAR(accident_date)='2022';

--CURRENT YEAR FATAL CASUALITIES
--SELECT SUM(number_of_casualties) AS CY_Fatal_Casualities FROM road_accident WHERE YEAR(accident_date)='2022' AND accident_severity='Fatal';

--CURRENT YEAR SERIOUS CASUALITIES
--SELECT SUM(number_of_casualties) AS CY_Serious_Casualities FROM road_accident WHERE YEAR(accident_date)='2022' AND accident_severity='Serious';


--CURRENT YEAR SLIGHT CASUALITIES
--SELECT SUM(number_of_casualties) AS CY_Slight_Casualities FROM road_accident WHERE YEAR(accident_date)='2022' AND accident_severity='Slight';

----Percentage for Slight Casualitities
--SELECT CAST(SUM(number_of_casualties) AS DECIMAL(10,2)) * 100/(SELECT CAST(SUM(number_of_casualties) AS DECIMAL(10,2)) FROM road_accident)
--FROM road_accident
--WHERE accident_severity = 'Slight'


