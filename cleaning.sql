--CREATE TABLES
CREATE TABLE insurance_claims (
policy_id VARCHAR(50),
subscription_length DECIMAL(10,1),
vehicle_age DECIMAL(10,1),
customer_age INT,
region_code VARCHAR(10),
region_density INT,
segment VARCHAR(10),
model VARCHAR (10),
fuel_type VARCHAR(20),
max_torque VARCHAR(50),
max_power VARCHAR(50),
engine_type VARCHAR(50),
airbags INT,
is_esc BOOLEAN,
is_adjustable_steering BOOLEAN,
is_tpms BOOLEAN,
is_parking_sensors BOOLEAN,
is_parking_camera BOOLEAN,
rear_brakes_type VARCHAR(10),
displacement INT,
cylinder INT,
transmission_type VARCHAR(20),
steering_type VARCHAR(10),
turning_radius DECIMAL (10,1),
length INT,
width INT,
gross_weight INT,
is_front_fog_lights BOOLEAN,
is_rear_window_wiper BOOLEAN,
is_rear_window_washer BOOLEAN,
is_rear_window_defogger BOOLEAN,
is_brake_assist BOOLEAN,
is_power_door_locks BOOLEAN,
is_central_locking BOOLEAN,
is_power_steering BOOLEAN,
is_driver_seat_height_adjustable BOOLEAN,
is_day_night_rear_view_mirror BOOLEAN,
is_ecw BOOLEAN,
is_speed_alert BOOLEAN,
ncap_rating INT,
claim_status INT
);

--SELECT ALL COLUMNS
SELECT * FROM insurance_claims
limit 10

--CHECK IF THERE IS MISSING VALUES
SELECT 
COUNT(*) - COUNT(policy_id),
COUNT(*) - COUNT(subscription_length),
COUNT(*) - COUNT(vehicle_age),
COUNT(*) - COUNT(customer_age),
COUNT(*) - COUNT(region_code),
COUNT(*) - COUNT(region_density),
COUNT(*) - COUNT(segment),
COUNT(*) - COUNT(model),
COUNT(*) - COUNT(fuel_type),
COUNT(*) - COUNT(max_torque),
COUNT(*) - COUNT(max_power),
COUNT(*) - COUNT(engine_type),
COUNT(*) - COUNT(airbags),
COUNT(*) - COUNT(is_esc),
COUNT(*) - COUNT(is_adjustable_steering),
COUNT(*) - COUNT(is_tpms),
COUNT(*) - COUNT(is_parking_sensors),
COUNT(*) - COUNT(is_parking_camera),
COUNT(*) - COUNT(rear_brakes_type),
COUNT(*) - COUNT(displacement),
COUNT(*) - COUNT(cylinder),
COUNT(*) - COUNT(transmission_type),
COUNT(*) - COUNT(steering_type),
COUNT(*) - COUNT(turning_radius),
COUNT(*) - COUNT(length),
COUNT(*) - COUNT(width),
COUNT(*) - COUNT(gross_weight),
COUNT(*) - COUNT(is_front_fog_lights),
COUNT(*) - COUNT(is_rear_window_wiper),
COUNT(*) - COUNT(is_rear_window_washer),
COUNT(*) - COUNT(is_rear_window_defogger),
COUNT(*) - COUNT(is_brake_assist),
COUNT(*) - COUNT(is_power_door_locks),
COUNT(*) - COUNT(is_central_locking),
COUNT(*) - COUNT(is_power_steering),
COUNT(*) - COUNT(is_driver_seat_height_adjustable),
COUNT(*) - COUNT(is_day_night_rear_view_mirror),
COUNT(*) - COUNT(is_ecw),
COUNT(*) - COUNT(is_speed_alert),
COUNT(*) - COUNT(ncap_rating),
COUNT(*) - COUNT(claim_status)
FROM insurance_claims

-- THERE ARE NO MISSING VALUES

--CHECK UNIQUE VALUES EACH COLUMNS
SELECT DISTINCT region_code FROM insurance_claims;
SELECT DISTINCT segment FROM insurance_claims;
SELECT DISTINCT model FROM insurance_claims;
SELECT DISTINCT fuel_type FROM insurance_claims;
SELECT DISTINCT rear_brakes_type FROM insurance_claims;
SELECT DISTINCT transmission_type FROM insurance_claims;
SELECT DISTINCT steering_type FROM insurance_claims;
SELECT DISTINCT ncap_rating  FROM insurance_claims;

--CHECK DUPLICATES
SELECT policy_id,
	COUNT (*) AS duplicates
FROM insurance_claims
GROUP BY policy_id
HAVING COUNT(*) > 1

--THERE ARE NO DUPLICATES
