-- Insert new incident
INSERT INTO incidents (incident_type, description, location, severity)
VALUES (?, ?, ?, ?);

-- Fetch all incidents
SELECT * FROM incidents
ORDER BY created_at DESC;

-- Filter by severity
SELECT * FROM incidents
WHERE severity >= ?
ORDER BY created_at DESC;

-- Update incident status
UPDATE incidents
SET status = ?
WHERE id = ?;

-- Delete incident
DELETE FROM incidents
WHERE id = ?;
