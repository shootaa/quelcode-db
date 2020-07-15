begin;
update
    users
set
    is_deleted = 1,
    updated_at = now()
where
    cellphone_number is null
    and office_telephone_number is null;
commit;