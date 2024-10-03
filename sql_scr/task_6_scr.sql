-- :List all projects completed in the last 6 months

SELECT 
    projectname, EndDate
FROM
    proj_dataset
WHERE
    enddate >= DATE_ADD(('2023-12-30'),
        INTERVAL - 6 MONTH);