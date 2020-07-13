begin;
delete from
    users_chatrooms
where
    user_id in(
        select
            id
        from
             users 
        where
            is_deleted = 1
    ) 
commit;
