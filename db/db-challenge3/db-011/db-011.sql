BEGIN;

update
    tasks
set
    is_done = 1,
    updated_at = now(),
    updated_by = 1
where
    created_at >= '2020-04-26 09:00:00'
    and created_at <= '2020-04-26 11:30:00'
    and is_deleted = 0;
commit;