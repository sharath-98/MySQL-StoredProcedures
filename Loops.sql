delimiter $$
	create procedure loop_value()
    begin
		declare i int default 1;
        declare str VARCHAR(255) default '';
        while i < 10 do
			set str = concat(str, i, ', ');
            set i = i + 1;
        end while;
        select str;
    end $$
delimiter ;

call loop_value();

-- REPEAT LOOP
delimiter $$
	create procedure REPEAT_LOOP()
    begin
		declare i int default 1;
        declare str VARCHAR(255) default '';
        repeat
			set str = concat(str, i, ', ');
            set i = i + 1;
			until i = 10
        END REPEAT;
        select str;
    end $$
delimiter ;
call REPEAT_LOOP();

-- _LOOP
delimiter $$
	create procedure _LOOP()
    begin
		declare i int default 1;
        declare str VARCHAR(255) default '';
        loop_label_1: LOOP
			set str = concat(str, i, ', ');
            set i = i + 1;
            if i > 5 THEN
				LEAVE loop_label_1;
			end if;
        END LOOP;
        select str;
    end $$
delimiter ;
call _LOOP();