-- 1. Retrieve all customer names and phone numbers
SELECT Name, Phone FROM Customers;

-- 2. Retrieve all vehicles from the year 2020
SELECT * FROM Vehicles
WHERE Year = '2020';

-- 3. Show customers' contact info combining address and phone
SELECT 
    Name, 
    Phone, 
    CONCAT(Address, ', Phone: ', Phone) AS ContactInfo 
FROM Customers;

-- 4. List service orders ordered by completion date (most recent first)
SELECT * FROM ServiceOrders
ORDER BY CompletionDate DESC;

-- 5. Show vehicles with more than 2 service orders
SELECT Vehicles_idVehicles, COUNT(*) AS TotalOrders
FROM ServiceOrders
GROUP BY Vehicles_idVehicles
HAVING COUNT(*) > 2;

-- 6. Join multiple tables to show full service order details:
-- Customer name, vehicle model, service status, service description, part used
SELECT 
    c.Name AS CustomerName,
    v.Model AS VehicleModel,
    so.Status,
    s.Description AS ServiceDescription,
    p.Description AS PartUsed
FROM Customers c
JOIN Vehicles v ON c.idCustomers = v.Customers_idCustomers
JOIN ServiceOrders so ON so.Vehicles_idVehicles = v.idVehicles
JOIN ServiceOrderItems soi ON soi.ServiceOrders_idServiceOrder = so.idServiceOrder
JOIN Services s ON soi.Services_idServices = s.idServices
JOIN Parts p ON soi.Parts_idParts = p.idParts;
