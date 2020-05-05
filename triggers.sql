
/* Trigger log for fatalities in the C130_1 Table */

CREATE TABLE c130_1_log (
date VARCHAR(255),
type VARCHAR(255),
registration VARCHAR(255),
operator VARCHAR(255),
fatalities INT(11),
location VARCHAR(255),
cat VARCHAR(255),
id MEDIUMINT(9),
LogDate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


DELIMITER $$
CREATE TRIGGER c130_1_after_update
	AFTER UPDATE ON c130_1
	FOR EACH ROW
BEGIN
	INSERT INTO c130_1_log (date, type,registration,operator, fatalities,location, cat, id)
VALUES (USER(), OLD.date,OLD.type,OLD.registration, OLD.operator, OLD.location, OLD.cat, OLD.id, NEW.fatalities);


END$$
DELIMITER ;

/* Trigger log for fatalities in the C160 Table */

CREATE TABLE c160_log (
date VARCHAR(255),
type VARCHAR(255),
registration VARCHAR(255),
operator VARCHAR(255),
fatalities INT(11),
location VARCHAR(255),
cat VARCHAR(255),
id MEDIUMINT(9),
LogDate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


DELIMITER $$
CREATE TRIGGER C160_after_update
	AFTER UPDATE ON C160
	FOR EACH ROW
BEGIN
	INSERT INTO c160_log (date, type,registration,operator, fatalities,location, cat, id)
VALUES (USER(), OLD.date,OLD.type,OLD.registration, OLD.operator, OLD.location, OLD.cat, OLD.id, NEW.fatalities);


END$$
DELIMITER ;

/* Trigger log for fatalities in the AN12 Table */

CREATE TABLE an12_log (
date VARCHAR(255),
type VARCHAR(255),
registration VARCHAR(255),
operator VARCHAR(255),
fatalities INT(11),
location VARCHAR(255),
cat VARCHAR(255),
id MEDIUMINT(9),
LogDate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


DELIMITER $$
CREATE TRIGGER AN12_after_update
	AFTER UPDATE ON AN12
	FOR EACH ROW
BEGIN
	INSERT INTO AN12_log (date, type,registration,operator, fatalities,location, cat, id)
VALUES (USER(), OLD.date,OLD.type,OLD.registration, OLD.operator, OLD.location, OLD.cat, OLD.id, NEW.fatalities);


END$$
DELIMITER ;



#MANAGING TRIGGERS
SHOW TRIGGERS;

SHOW TRIGGERS WHERE `Table` = 'c130_1';

SHOW CREATE TRIGGER c130_1_after_update;

/* these 3 triggers will help a user identify what in the fatalities column was modified in the three tables
and when the change occured */
