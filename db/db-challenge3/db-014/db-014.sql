begin;
(
    select
        user_id,
        chatroom_id
    from
        users_chatrooms uc
        left join users u on uc.user_id = u.id
    where
        u.is_deleted = 1
) as a
delete from
    a 
commit;