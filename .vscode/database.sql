-- Create the customers table (if it doesn't already exist)
CREATE TABLE IF NOT EXISTS customers (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(20),
    created_at TIMESTAMP
);

-- Insert sample data (optional, for testing purposes)
-- INSERT INTO customers (id, name, email, phone, created_at) VALUES
-- (1, 'John Doe', 'john@example.com', '1234567890', '2024-08-01 10:00:00'),
-- (2, 'Jane Smith', 'jane@example.com', '0987654321', '2024-08-02 11:00:00'),
-- (3, 'John Doe', 'john@example.com', '1234567890', '2024-08-03 12:00:00'),
-- (4, 'Alice Johnson', 'alice@example.com', '1234509876', '2024-08-04 13:00:00'),
-- (5, 'John Doe', 'john@example.com', '1234567890', '2024-08-05 14:00:00');

-- Remove redundant records, keeping the oldest entry for each unique combination of name, email, and phone
DELETE FROM customers
WHERE id NOT IN (
    SELECT MIN(id)
    FROM customers
    GROUP BY name, email, phone
);

-- Verify the result (optional, to check if redundant records are removed)
SELECT 
    name, 
    email, 
    phone, 
    COUNT(*) AS count
FROM 
    customers
GROUP BY 
    name, 
    email, 
    phone
HAVING 
    COUNT(*) > 1;
