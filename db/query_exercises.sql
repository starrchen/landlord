-- Retrieve all info on all tenants
SELECT * FROM tenants;
-- Retrieve the name, age, and gender of all tenants
SELECT name, age, gender FROM tenants;
-- Retrieve all info on all tenants older than 65
SELECT * FROM tenants WHERE age > 65;
-- Retrieve all info on all tenants in apartment with id 20
SELECT * FROM tenants WHERE apartment_id = 20;
-- Retrieve all info on all tenants in apartment with ids 20 or 15
SELECT * FROM tenants WHERE apartment_id = 20 OR apartment_id = 15;
-- Delete all tenants whose age is greater than 65
DELETE FROM tenants WHERE age > 65;
-- Create one new tenant, put them in any apartment you want
INSERT INTO tenants(name, age, gender, apartment_id) VALUES ("Steve Rogers", 93, "Male", 1)
-- Find just the ids for all apartments
SELECT id FROM tenants;
-- Find all info for apartments whose price is greater than $2300
SELECT id FROM apartments WHERE monthly_rent > 2300; #5, 7, 9, 15, 16, 19
-- SELECT * FROM tenants WHERE apartment_id = 5 OR apartment_id = 7 OR apartment_id = 9 OR apartment_id = 15 OR apartment_id = 16 OR apartment_id = 19;
-- Geriatric Birthday! Update all tenants whose age is 90 to be 91
UPDATE tenants SET age = 91 where age = 90;
-- Change all tenants ages to increase by 1
UPDATE tenants SET age = age+1;
-- Find all tenants who live in an apartment that costs more than $2300
-- SELECT * FROM tenants WHERE apartment_id = 5 OR apartment_id = 7 OR apartment_id = 9 OR apartment_id = 15 OR apartment_id = 16 OR apartment_id = 19;
SELECT * FROM tenants JOIN apartments ON apartments.id=tenants.apartment_id WHERE apartments.monthly_rent > 2300;
