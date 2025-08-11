SELECT
    CAR_ID,
    CASE
        WHEN CAR_ID IN (
            SELECT
                CAR_ID
            FROM
                CAR_RENTAL_COMPANY_RENTAL_HISTORY
            WHERE
                DATEDIFF('2022-10-16', START_DATE) >= 0
                AND
                DATEDIFF('2022-10-16', END_DATE) <= 0
        )
            THEN '대여중'
        ELSE
            '대여 가능'
    END AS AVAILABILITY
FROM
    CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY
    CAR_ID
ORDER BY
    1 DESC;