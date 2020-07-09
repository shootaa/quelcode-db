SELECT
    id,
    name,
    email,
    password,
    profile,
    cellphone_number,
    office_telephone_number,
    is_deleted,
    created_at,
    updated_at
FROM
    `users`
WHERE
    is_deleted = 0
    OR is_deleted = 1
ORDER BY
    id ASC