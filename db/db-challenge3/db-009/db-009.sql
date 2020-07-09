select
    count(chatroom_id) AS 投稿数,
    chatroom_name
FROM
    chatrooms cr
    LEFT JOIN chats c ON cr.id = c.chatroom_id
WHERE
    cr.is_deleted = 0
    AND c.is_deleted = 0
GROUP BY
    cr.id
ORDER BY
    `投稿数` DESC