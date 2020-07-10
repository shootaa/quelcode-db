SELECT
    name,
    chatroom_name,
    cast(joined_at AS date) AS joined_at
from
    users_chatrooms uc
    left join users u on uc.user_id = u.id
    left join chatrooms cr on uc.chatroom_id = cr.id
where
    u.is_deleted = 0
    and cr.is_deleted = 0
ORDER BY
    uc.joined_at ASC;