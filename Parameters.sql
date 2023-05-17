-- IN mode 
DELIMITER $$
	CREATE PROCEDURE IN_GET_STUDENT(IN student_id int)
		BEGIN
			Select * from student where student.student_id = student_id;
        END $$
DELIMITER ;

CALL IN_GET_STUDENT(4);

-- OUT MODE
DELIMITER $$
	CREATE PROCEDURE OUT_GET_STUDENT(IN student_name varchar(200), OUT studId int)
		BEGIN
			Select student_id into studId from student where student.lastname = student_name order by year desc limit 1;
        END $$
DELIMITER ;

CALL OUT_GET_STUDENT('Pugazhenthi', @studId);
SELECT * from student where student_id = @studId;

-- IN OUT MODE
DELIMITER $$
	CREATE PROCEDURE INOUT_GET_STUDENT(INOUT studVal int)
		BEGIN
			select student.year into studVal from student where student_id = studVal;
        END $$
DELIMITER ;

SET @studVal = 3;
CALL INOUT_GET_STUDENT(@studVal);
select * from student where student.year = @studVal;