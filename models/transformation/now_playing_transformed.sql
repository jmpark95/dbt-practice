{{ config(materialized='table') }}

WITH source AS 
(
  SELECT *
  FROM {{ source('transformation','now_playing') }}
)
SELECT
    id,
    title,
    genre_ids,
    release_date,
    original_language,
    vote_average,
    overview,
    popularity,
    vote_count,
    adult
FROM source