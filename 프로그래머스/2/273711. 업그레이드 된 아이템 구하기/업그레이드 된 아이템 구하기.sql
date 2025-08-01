SELECT
    II.ITEM_ID,
    II.ITEM_NAME,
    II.RARITY
FROM
    ITEM_INFO II
JOIN
    ITEM_TREE IT
    ON II.ITEM_ID = IT.ITEM_ID
WHERE
    IT.PARENT_ITEM_ID IN (
        SELECT
            ITEM_ID
        FROM
            ITEM_INFO
        WHERE
            RARITY = 'RARE'
    )
ORDER BY
    1 DESC;