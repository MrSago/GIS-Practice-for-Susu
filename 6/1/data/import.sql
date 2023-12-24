CREATE TABLE uik_id (
    uik INT PRIMARY KEY,
    id BIGINT
);

\COPY uik_id FROM './uik_id.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE uik_lat_lon (
    uik INT PRIMARY KEY,
    lat DOUBLE PRECISION,
    lon DOUBLE PRECISION
);

\COPY uik_lat_lon FROM './uik_lat_lon.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE uik_okrug (
    uik INT PRIMARY KEY,
    okrug INT
);

\COPY uik_okrug FROM './uik_okrug.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE uik_yavka (
    uik INT PRIMARY KEY,
    yavka INT
);

\COPY uik_yavka FROM './uik_yavka.csv' DELIMITER ',' CSV HEADER;
