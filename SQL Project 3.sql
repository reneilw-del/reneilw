/* recoveries */
SELECT 
    `Country/Region`, 
    SUM(recovered) AS total_recovered,
    ROUND(SUM(recovered) / SUM(`confirmed cases`) * 100, 2) AS `Recovered / 100 Cases`,
    SUM(`new recovered`) AS total_new_recovered
FROM 
    covid_19
GROUP BY 
    `Country/Region`
ORDER BY 
    total_recovered DESC;
    
    
        SELECT 
    `Country/Region`, 
    SUM(confirmed) AS total_confirmed,
    SUM(recovered) AS total_recovered,
    SUM(`new recovered`) AS total_new_recovered,
    ROUND(SUM(recovered) / SUM(confirmed) * 100, 2) AS `Recovered per 100 Cases`,
    ROUND(SUM(deaths) / SUM(recovered), 2) AS `Deaths per Recovered`
FROM 
    covid_19
GROUP BY 
    `Country/Region`
ORDER BY 
    total_confirmed DESC
    limit 10;
    
    
     SELECT 
    `Country/Region`, 
    SUM(recovered) AS total_recovered
FROM 
    covid_19
GROUP BY 
    `Country/Region`
ORDER BY 
    total_recovered DESC;
    
    