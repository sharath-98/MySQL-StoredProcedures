-- Show all the procedure across databases
SHOW PROCEDURE STATUS;

-- SHOW PROCEDURES OF PARTICULAR DATABASE
SHOW PROCEDURE STATUS WHERE DB = 'sharath_chander_pugazhenthi';

-- show procedures that match a certain pattern
SHOW PROCEDURE STATUS WHERE name like 'IF_%';

-- SHOW PROCEDURE
SHOW create procedure get_students;

-- DROP PROCEDURE
DROP procedure IF EXISTS get_students;
