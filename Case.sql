-- CASE
DELIMITER $$
	create procedure case_get_student(out school_count int)
    begin
		declare population int default 0;
        select count(*) into population from student;
        case
			when population > 3 then
				set school_count = population;
			else
				set school_count = -1;
		end case;
    end $$
DELIMITER ;

CALL case_get_student(@school_count);
select @school_count as population;