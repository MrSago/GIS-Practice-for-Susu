CREATE TABLE uik_combined AS
SELECT
    ul.uik,
    ul.lat,
    ul.lon,
    uy.yavka
FROM
    uik_lat_lon AS ul
JOIN
    uik_yavka AS uy
ON
    ul.uik = uy.uik;
