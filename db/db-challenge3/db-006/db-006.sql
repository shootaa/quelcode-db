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
ORDER BY
    id ASC;