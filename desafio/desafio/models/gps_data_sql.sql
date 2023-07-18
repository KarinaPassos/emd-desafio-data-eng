-- models/gps_data_model.sql

{{ config(materialized='tabela_final') }}

SELECT
    codigo,
    placa,
    ST_Point(longitude, latitude) AS position,
    velocidade,
    data_Hora
FROM
    {{ source('postgres', 'gps_data') }};