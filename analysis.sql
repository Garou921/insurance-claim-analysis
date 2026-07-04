--SELECT ALL COLUMNS
SELECT * FROM insurance_claims
limit 10
SELECT DISTINCT vehicle_age FROM insurance_claims

--AVG AGE OF CUSTOMER WHO MADE A CLAIM
SELECT claim_status,
	ROUND(AVG(customer_age)) AS avg_age,
	COUNT(*) AS total_customers,
	ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM insurance_claims),2) AS percentage
FROM insurance_claims
GROUP BY claim_status

--CLAIM RATE BASED ON TRANSMISSION TYPE 
SELECT transmission_type,
	COUNT(claim_status) AS total_customer,
	SUM(CASE WHEN claim_status = 1 THEN 1 ELSE 0 END) AS total_claims,
	ROUND(SUM(CASE WHEN claim_status = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS percentage
FROM insurance_claims
GROUP BY transmission_type
ORDER BY percentage DESC

--CLAIM RATE BASED ON FUEL TYPE
SELECT fuel_type,
	COUNT(claim_status) AS total_customer,
	SUM(CASE WHEN claim_status = 1 THEN 1 ELSE 0 END) AS total_claims,
	ROUND(SUM(CASE WHEN claim_status = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS percentage
FROM insurance_claims
GROUP BY fuel_type
ORDER BY percentage DESC

--CLAIM RATE BASED ON VECHICLE AGE
SELECT vehicle_age,
	COUNT(claim_status) AS total_customers,
	SUM(CASE WHEN claim_status = 1 THEN 1 ELSE 0 END) AS total_claims,
	ROUND(SUM(CASE WHEN claim_status = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS percentage
FROM insurance_claims
GROUP BY vehicle_age
ORDER BY vehicle_age ASC

--CLAIM RATE BASED ON REGION
SELECT region_code,
	COUNT(claim_status) AS total_customers,
	SUM(CASE WHEN claim_status = 1 THEN 1 ELSE 0 END) AS total_claims,
	ROUND(SUM(CASE WHEN claim_status = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS percentage
FROM insurance_claims
GROUP BY region_code 
ORDER BY percentage DESC

--CLAIM RATE BASED ON SEGMENT
SELECT segment,
	COUNT(claim_status) AS total_customers,
	SUM(CASE WHEN claim_status = 1 THEN 1 ELSE 0 END) AS total_claims,
	ROUND(SUM(CASE WHEN claim_status = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT (*),2) AS percentage
FROM insurance_claims
GROUP BY segment
ORDER BY percentage DESC

--CLAIM RATE BASED ON NUMBER OF AIRBAGS
SELECT airbags,
	COUNT(claim_status) AS total_customers,
	SUM(CASE WHEN claim_status = 1 THEN 1 ELSE 0 END) AS total_claims,
	ROUND(SUM(CASE WHEN claim_status = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS percentage
FROM insurance_claims
GROUP BY airbags
ORDER BY percentage DESC

--CLAIM RATE BASED ON NCAP RATING
SELECT ncap_rating,
	COUNT(claim_status) AS toral_customer,
	SUM(CASE WHEN claim_status = 1 THEN 1 ELSE 0 END) AS total_claims,
	ROUND(SUM(CASE WHEN claim_status = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS percentage
FROM insurance_claims
GROUP BY ncap_rating
ORDER BY ncap_rating DESC