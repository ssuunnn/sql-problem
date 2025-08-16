SELECT
    ED.ID,
    IFNULL(CC.CHILD_COUNT, 0) AS CHILD_COUNT
FROM
    ECOLI_DATA ED
LEFT JOIN
    (
        SELECT
            PARENT_ID,
            COUNT(ID) AS CHILD_COUNT
        FROM
            ECOLI_DATA
        GROUP BY
            PARENT_ID
    ) CC
    ON ED.ID = CC.PARENT_ID
ORDER BY
    1;