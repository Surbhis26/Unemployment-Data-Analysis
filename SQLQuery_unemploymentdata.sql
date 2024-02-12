SELECT SUM(women) AS total_unemployed_women
FROM kcc.dbo.und 

SELECT MAX(black) AS max_unemployment_rate_black
FROM kcc.dbo.und

SELECT 
    YEAR(date) AS year,
        AVG(16-24) AS avg_unemployment_rate_16_24,
    AVG(25-54) AS avg_unemployment_rate_25_54,
    AVG(55-64) AS avg_unemployment_rate_55_64 from kcc.dbo.und
GROUP BY YEAR(date)
ORDER BY YEAR(date)

SELECT 
    'Black' AS ethnicity,
    SUM(black) AS total_unemployed_population
FROM kcc.dbo.und
UNION ALL
SELECT 
    'Hispanic' AS ethnicity,
    SUM(hispanic) AS total_unemployed_population
FROM kcc.dbo.und
UNION ALL
SELECT 
    'White' AS ethnicity,
    SUM(white) AS total_unemployed_population
FROM kcc.dbo.und

SELECT 
    'Women' AS gender,
    AVG(women) AS avg_unemployment_rate
FROM kcc.dbo.und
UNION ALL
SELECT 
    'Men' AS gender,
    AVG(men) AS avg_unemployment_rate
FROM kcc.dbo.und;

SELECT 
    'Hispanic' AS ethnicity,
    'Men' AS gender,
    AVG(hispanic_men) AS avg_unemployment_rate
FROM kcc.dbo.und
UNION ALL
SELECT 
    'Black' AS ethnicity,
    'Men' AS gender,
    AVG(black_men) AS avg_unemployment_rate
FROM kcc.dbo.und
UNION ALL
SELECT 
    'White' AS ethnicity,
    'Men' AS gender,
    AVG(white_men) AS avg_unemployment_rate
FROM kcc.dbo.und
WHERE hispanic_men IS NOT NULL OR black_men IS NOT NULL OR white_men IS NOT NULL

SELECT 
    'Black' AS ethnicity,
    AVG(black) AS avg_unemployment_rate
FROM kcc.dbo.und
UNION ALL
SELECT 
    'Hispanic' AS ethnicity,
    AVG(hispanic) AS avg_unemployment_rate
FROM kcc.dbo.und
UNION ALL
SELECT 
    'White' AS ethnicity,
    AVG(white) AS avg_unemployment_rate
FROM kcc.dbo.und
ORDER BY avg_unemployment_rate DESC

SELECT 
    'Less than High School' AS education_level,
    AVG(less_than_hs) AS avg_unemployment_rate
FROM kcc.dbo.und
UNION ALL
SELECT 
    'High School' AS education_level,
    AVG(high_school) AS avg_unemployment_rate
FROM kcc.dbo.und
UNION ALL
SELECT 
    'Some College' AS education_level,
    AVG(some_college) AS avg_unemployment_rate
FROM kcc.dbo.und
UNION ALL
SELECT 
    'Advanced Degree' AS education_level,
    AVG(advanced_degree) AS avg_unemployment_rate
FROM kcc.dbo.und

SELECT 
    YEAR(date) AS year,
        AVG(women) AS avg_unemployment_rate_women,
    AVG(men) AS avg_unemployment_rate_men,
    AVG(black) AS avg_unemployment_rate_black,
    AVG(hispanic) AS avg_unemployment_rate_hispanic,
    AVG(white) AS avg_unemployment_rate_white
FROM kcc.dbo.und
GROUP BY YEAR(date)
ORDER BY YEAR(date);

SELECT 
    'Women' AS gender,
    SUM(women) AS total_unemployed_population
FROM kcc.dbo.und
UNION ALL
SELECT 
    'Men' AS gender,
    SUM(men) AS total_unemployed_population
FROM kcc.dbo.und; 








