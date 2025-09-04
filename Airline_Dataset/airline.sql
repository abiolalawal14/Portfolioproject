
SHOW COLUMNS FROM airline_data;
-- Regional Performance Analysis of Airlines

-- Business Context:
-- The airline industry is regionally diverse, and profitability can vary significantly by region. 
-- As an analyst, you’re tasked with helping leadership identify which regions are operating most efficiently and profitably.

-- Problem Statement:

-- Perform a comparative analysis across regions to determine which region has the most efficient and profitable airlines, 
-- using the following metrics:
-- Average EBIT (USD)

SELECT
    airline_name,
    ROUND(AVG(ebit_usd),2) AS avg_ebit_usd
FROM
    airline_data
GROUP BY
    airline_name
ORDER BY
    avg_ebit_usd DESC;

-- Average Load Factor
SELECT
    airline_name,
    ROUND(AVG(load_factor),2) AS avg_load_factor
FROM
    airline_data
GROUP BY
    airline_name
ORDER BY    
    avg_load_factor DESC;


-- Average Passenger Yield
SELECT
    airline_name,
    ROUND(AVG(passenger_yield),2) AS avg_passenger_yield_usd
FROM
    airline_data
GROUP BY
    airline_name
ORDER BY
    avg_passenger_yield_usd DESC;


-- Fleet Utilization Proxy: Calculate aircraft utilization as ask / fleet_size, where ask = Available Seat Kilometers

SELECT
    airline_name,
    -- aircraft_utilisation
    ROUND(SUM(aircraft_utilisation) / SUM(fleet_size),2) AS avg_ask_per_aircraft
FROM
    airline_data
GROUP BY
    airline_name
ORDER BY
    avg_ask_per_aircraft DESC;
-- Average Airline Age

SELECT
    airline_name,
    ROUND(AVG(airline_age),2) AS avg_airline_age_years
FROM
    airline_data
GROUP BY
    airline_name
ORDER BY
    avg_airline_age_years DESC;

-- Bonus Challenge:
-- Which region has the best overall balance across profitability and operational efficiency?
SELECT
    region,
    ROUND(AVG(ebit_usd),2) AS avg_ebit_usd,
    ROUND(AVG(load_factor),2) AS avg_load_factor,
    ROUND(AVG(passenger_yield),2) AS avg_passenger_yield_usd,
    ROUND(SUM(aircraft_utilisation) / SUM(fleet_size),2) AS avg_ask_per_aircraft,
    ROUND(AVG(airline_age),2) AS avg_airline_age_years
FROM
    airline_data
GROUP BY
    region
ORDER BY    
    avg_ebit_usd DESC, avg_load_factor DESC, avg_passenger_yield_usd DESC, avg_ask_per_aircraft DESC, avg_airline_age_years DESC;

-- Are low-cost carriers more common in any particular region? Show a count of low-cost carriers per region.
SELECT
    region,
    COUNT(CASE WHEN low_cost_carrier = 'Y' THEN 1 END) AS low_cost_carriers_count
FROM
    airline_data
GROUP BY
    region
ORDER BY
    low_cost_carriers_count DESC;



SELECT
    region,
    COUNT(CASE WHEN low_cost_carrier = 'N' THEN 1 END) AS low_cost_carriers_count
FROM
    airline_data
GROUP BY
    region
ORDER BY
    low_cost_carriers_count DESC;

-- Expected Skills Practiced:
-- Advanced grouping and aggregations
-- Derived columns / calculated metrics
-- Ranking logic
-- Insights generation across multiple KPIs