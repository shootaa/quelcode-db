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
<<<<<<< HEAD
=======

>>>>>>> 893d31d6fa60bc6c73650bc54205e2e8016539a2
