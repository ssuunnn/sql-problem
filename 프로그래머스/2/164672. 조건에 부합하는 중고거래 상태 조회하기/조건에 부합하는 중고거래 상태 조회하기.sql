SELECT
    BOARD_ID,
    WRITER_ID,
    TITLE,
    PRICE,
    CASE
        WHEN STATUS = 'SALE'
            THEN '판매중'
        WHEN STATUS = 'RESERVED'
            THEN '예약중'
        WHEN STATUS = 'DONE'
            THEN '거래완료'
        ELSE NULL
    END AS STATUS
FROM
    USED_GOODS_BOARD
WHERE
    DATE_FORMAT(CREATED_DATE, '%Y-%m-%d') = '2022-10-05'
ORDER BY
    1 DESC;