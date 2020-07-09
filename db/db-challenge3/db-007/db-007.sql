SELECT
    id,
    chatroom_name,
    description,
    is_file_sendable,
    CASE
        is_file_sendable
        WHEN 1 THEN '許可'
        WHEN 0 THEN '禁止'
    END,
    is_direct_chat,
    is_deleted,
    created_by,
    created_at,
    updated_by,
    updated_at
FROM
    `chatrooms`
WHERE
    description LIKE '%ダイレクトチャット'
    AND is_deleted = 0
ORDER BY
    id ASC