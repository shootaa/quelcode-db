begin;
update
    chatrooms
set
    is_file_sendable = 0,
    updated_at = now(),
    updated_by = 1
where
    id  in(
        select
            chatroom_id
        from
            users_chatrooms where user_id not in (1)
    ) 
commit;

