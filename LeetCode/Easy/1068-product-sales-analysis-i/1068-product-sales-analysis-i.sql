SELECT
    P.PRODUCT_NAME,
    S.YEAR,
    S.PRICE
FROM
    SALES S
JOIN
    PRODUCT P
    ON S.PRODUCT_ID = P.PRODUCT_ID;