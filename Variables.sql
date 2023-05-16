DELIMITER $$
	CREATE PROCEDURE VARIABLE_GET_STUDENTS()
		BEGIN
			declare studentId int default 2;
			select * from student where student_id = studentId;
        END $$
DELIMITER ;

CALL VARIABLE_GET_STUDENTS();