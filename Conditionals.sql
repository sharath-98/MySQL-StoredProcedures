-- Basic If 
DELIMITER $$
	CREATE PROCEDURE IF_GET_STUDENT(IN studId int, OUT studVal varchar(255))
		BEGIN
			DECLARE studName varchar(255) default 'No record';
            IF (studId > 2) THEN
				select lastname into studName from student where student_Id = studId; 
			END IF;
            SET studVal = studName;
        END $$
DELIMITER ;

CALL IF_GET_STUDENT(2, @studName);
select @studName as student_name;

CALL IF_GET_STUDENT(3, @studName);
select @studName as student_name;

-- Basic If / Else
DELIMITER $$
	CREATE PROCEDURE IF_ELSE_GET_STUDENT(IN studId int, OUT studVal varchar(255))
		BEGIN
			DECLARE studName varchar(255) default 'No record';
            IF (studId > 2) THEN
				select lastname into studName from student where student_Id = studId; 
			ELSE
				SET studName = 'Invalid ID';
			END IF;
            SET studVal = studName;
        END $$
DELIMITER ;

CALL IF_ELSE_GET_STUDENT(2, @studName);
select @studName as student_name;

-- Basic If / Else if/ else
DELIMITER $$
	CREATE PROCEDURE IF_ELSEIF_GET_STUDENT(IN studId int, OUT studVal varchar(255))
		BEGIN
			DECLARE studName varchar(255) default 'No record';
            IF (studId > 4) THEN
				select lastname into studName from student where student_Id = studId; 
			ELSEIF (studId > 3) THEN
				SET studName = 'Good ID';
			ELSE
				SET studName = 'Invalid ID';
			END IF;
            SET studVal = studName;
        END $$
DELIMITER ;

CALL IF_ELSEIF_GET_STUDENT(4, @studName);
select @studName as student_name;
