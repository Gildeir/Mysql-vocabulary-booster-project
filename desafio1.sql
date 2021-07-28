SELECT
COUNTRY_NAME AS País,
  IF (REGION_ID = 1, 'incluido', 'não incluido') AS 'Status Inclusão'
FROM hr.countries
ORDER BY COUNTRY_NAME ASC;
