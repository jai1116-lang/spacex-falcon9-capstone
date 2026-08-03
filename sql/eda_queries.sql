-- SpaceX Falcon 9 EDA queries
-- Table: SPACEXTBL (loaded from data/spacex_launch_data.csv)

-- Q1: Unique launch sites
SELECT DISTINCT LaunchSite FROM SPACEXTBL;

-- Q2: Launches from CCAFS SLC-40
SELECT COUNT(*) AS ccafs_launches
FROM SPACEXTBL
WHERE LaunchSite = 'CCAFS SLC 40';

-- Q3: Overall mission success rate
SELECT
    SUM(Class) * 1.0 / COUNT(*) AS success_rate,
    SUM(Class) AS successes,
    COUNT(*) AS total
FROM SPACEXTBL;

-- Q4: Launches to GTO (geosynchronous transfer orbit)
SELECT COUNT(*) AS gto_launches
FROM SPACEXTBL
WHERE Orbit = 'GTO';

-- Q5: Missions successfully landed on a drone ship (ASDS)
SELECT COUNT(*) AS drone_ship_landings
FROM SPACEXTBL
WHERE Outcome = 'True ASDS';

-- Q6: Minimum payload mass
SELECT MIN(PayloadMass) AS min_payload_mass
FROM SPACEXTBL;

-- Q7: Total payload mass carried
SELECT SUM(PayloadMass) AS Total_Payload_Mass
FROM SPACEXTBL;

-- Q8: Mission outcome counts per launch site
SELECT LaunchSite, COUNT(Outcome) AS mission_outcome_count
FROM SPACEXTBL
GROUP BY LaunchSite;

-- Q9: Booster version carrying the maximum payload
SELECT Serial, PayloadMass
FROM SPACEXTBL
WHERE PayloadMass = (SELECT MAX(PayloadMass) FROM SPACEXTBL);
