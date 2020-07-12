begin;
(
    select
        user_id,
        chatroom_id,
        cr.is_file_sendable,
        cr.updated_at,
        cr.created_at,
        cr.is_deleted,
        cr.updated_by
    from
        users_chatrooms uc
        left join chatrooms cr on uc.chatroom_id = cr.id
    where
        user_id not in(1)
        and is_deleted = 0
) as a
update
    a
set
    is_file_sendable = 0,
    updated_at = now(),
    updated_by = 1 
commit;