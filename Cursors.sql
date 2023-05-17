-- BASIC CURSOR
delimiter $$
	create procedure CURSOR_STUDENT()
		BEGIN
			declare finished int default 0;
            declare name_list varchar(500) default "";
            declare stud_name varchar(30);
			declare cur1 cursor for select lastname from student;
            
            -- TERMINATION CONDITION
            declare continue handler for not found set finished = 1;
            open cur1;
				loop_student:LOOP
					FETCH cur1 into stud_name;
                    if finished = 1 then
						leave loop_student;
					end if;
					set name_list = concat(name_list, stud_name,", ");
                END LOOP loop_student;
            close cur1;
            select name_list;
        END $$
delimiter ;

CALL CURSOR_STUDENT();