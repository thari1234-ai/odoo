CREATE DATABASE IF NOT EXISTS incident_db;
USE incident_db;

CREATE TABLE incidents (
  id INT AUTO_INCREMENT PRIMARY KEY,
  incident_type VARCHAR(50) NOT NULL,
  description TEXT NOT NULL,
  location VARCHAR(100) NOT NULL,
  severity INT NOT NULL CHECK (severity BETWEEN 1 AND 5),
  status VARCHAR(20) DEFAULT 'Open',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
