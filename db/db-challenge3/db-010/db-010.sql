SELECT
    u.name,
    c2.最新の投稿日時,
    cr.chatroom_name
FROM
    chats c
    RIGHT JOIN (
        SELECT
            MAX(c.created_at) as 最新の投稿日時,
            c.chatroom_id
        FROM
            chats c
        WHERE
            c.is_deleted = 0
        GROUP BY
            c.chatroom_id
    ) AS c2 ON c.created_at = c2.最新の投稿日時
    AND c.chatroom_id = c2.chatroom_id
    LEFT JOIN users u ON c.created_by = u.id
    LEFT JOIN chatrooms cr ON c2.chatroom_id = cr.id
WHERE
    u.is_deleted = 0
ORDER BY
    c2.chatroom_id ASC;