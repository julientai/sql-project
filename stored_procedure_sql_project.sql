# Update the getIncidentCount stored procedure to return an OUT parameter for the number of rows in the c130_n table.
# Keep the IN parameters for a `DATE` date range.

DELIMITER $$

DROP PROCEDURE IF EXISTS getIncidentCount$$
CREATE PROCEDURE getIncidentCount(inIncidentDateStart DATE, inIncidentDateEnd DATE, OUT outIncidentCount INT)
BEGIN
	SET @incidentDateStart := inIncidentDateStart
	SET @incidentDateEnd := inIncidentDateEnd
	SELECT COUNT(*) into outIncidentCount
	FROM c130_1
	WHERE `date` BETWEEN @incidentDateStart AND @incidentDateEnd;
END$$

DELIMITER;



# Execute stored procedure

CALL getIncidentCount('1-Jan-78', '25-Dec-78', @incidentRowCount);


SELECT @incidentRowCount;

SELECT @incidentRowCount+3;

SHOW procedure status

SHOW CREATE PROCEDURE getIncidentCount;