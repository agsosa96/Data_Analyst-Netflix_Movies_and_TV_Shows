-- TOP 10 paises con mas titulos en Netflix --
SELECT TOP 10 country, COUNT(*) AS Title_Count
FROM dbo.datos_limpios
WHERE country IS NOT NULL AND country != ' '
GROUP BY country
ORDER BY Title_Count DESC;

-- Generos mas populares --
CREATE TABLE TempGenres (
    genre NVARCHAR(255)
)

INSERT INTO TempGenres (genre)
SELECT TRIM(value)
FROM dbo.datos_limpios 
CROSS APPLY STRING_SPLIT(listed_in, ',');

SELECT genre, COUNT(*) as genre_count
FROM TempGenres
GROUP BY genre
ORDER BY genre_count DESC

-- Titulos lanzados por años --
SELECT release_year, COUNT(*) AS title_count
FROM dbo.datos_limpios
GROUP BY release_year
ORDER BY release_year DESC;