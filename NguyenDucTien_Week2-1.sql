-- List all constrains in DB
select  * 
from information_schema.table_constraints
where constraint_schema = 'sql_likelion';

-- List all Table Name in DB
select distinct table_name 
from information_schema.table_constraints
where constraint_schema = 'sql_likelion';

-- List all sequence in DB

-- 
select first_name, last_name, `position`, campus_name, (yearly_membership_fee / 12) as monthy_dues
from members 
join `position` using (position_id)
join campus using (campus_id)
order by campus_name DESC, last_name ASC