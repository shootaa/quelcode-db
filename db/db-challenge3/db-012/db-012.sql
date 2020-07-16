begin;
update
    chatrooms
set
    is_file_sendable = 0,
    updated_at = now(),
    updated_by = 1
where
    id not in(
        select
            DISTINCT chatroom_id
        from
            users_chatrooms
        where
            user_id = 1
    ); 
    commit;