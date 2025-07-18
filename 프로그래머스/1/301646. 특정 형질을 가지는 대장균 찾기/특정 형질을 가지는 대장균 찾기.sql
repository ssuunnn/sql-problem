SELECT
    COUNT(ID) AS COUNT
FROM
    ECOLI_DATA
WHERE
    GENOTYPE & 2 != 2
    AND
    (
        GENOTYPE & 1 = 1
        OR
        GENOTYPE & 4 = 4
    );