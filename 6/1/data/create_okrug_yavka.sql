CREATE TABLE okrug_yavka AS
SELECT
    u.okrug AS okrug,
    SUM(c.yavka) / COUNT(c.yavka) AS yavka
FROM
    uik_okrug AS u
JOIN
    uik_combined AS c
ON
    u.uik = c.uik
GROUP BY
    u.okrug;
