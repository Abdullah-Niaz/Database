
insert into personal
values
    (3,"Rizwan","M","Multan");
select * from personal;
COMMIT;
 -- to take snapshot of previous queries/command
delete from personal
where id = 3;
rollback;
select * from personal; 