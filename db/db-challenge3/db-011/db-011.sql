begin;
update
    tasks
set
    is_done = 1,
    updated_at = now(),
    updated_by =1
where
    cast(created_at as date) between '2020-04-26'
    AND '2020-04-26'
    AND cast(created_at as TIME) BETWEEN '09:00:00'
    AND '11:30:00'
    and is_deleted = 0
commit;