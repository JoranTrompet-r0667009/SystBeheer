DELIMITER // 
USE check
SET GLOBAL event_scheduler = ON;
CREATE EVENT trim_table
	ON SCHEDULE EVERY 1 MINUTE STARTS '2018-11-21 17:50:00'
	DO
		BEGIN IF (SELECT COUNT(*) FROM log) > 95 THEN
			DELETE FROM log ORDER BY date ASC limit 10;
	END IF;
END //
