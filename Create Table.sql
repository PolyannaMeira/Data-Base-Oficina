-- Customers
CREATE TABLE Customers (
    idCustomers INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(45),
    Address VARCHAR(45),
    Phone VARCHAR(45)
);

-- Vehicles
CREATE TABLE Vehicles (
    idVehicles INT PRIMARY KEY AUTO_INCREMENT,
    Plate VARCHAR(45),
    Model VARCHAR(45),
    Year VARCHAR(45),
    Customers_idCustomers INT,
    FOREIGN KEY (Customers_idCustomers) REFERENCES Customers(idCustomers)
);

-- Mechanics
CREATE TABLE Mechanics (
    idMechanics INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(45),
    Address VARCHAR(45),
    Specialty VARCHAR(45)
);

-- Teams
CREATE TABLE Teams (
    idTeams INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(45)
);

-- Team_Mechanics (Many-to-Many)
CREATE TABLE Teams_Mechanics (
    Teams_idTeams INT,
    Mechanics_idMechanics INT,
    PRIMARY KEY (Teams_idTeams, Mechanics_idMechanics),
    FOREIGN KEY (Teams_idTeams) REFERENCES Teams(idTeams),
    FOREIGN KEY (Mechanics_idMechanics) REFERENCES Mechanics(idMechanics)
);

-- Service Orders
CREATE TABLE ServiceOrders (
    idServiceOrder INT PRIMARY KEY AUTO_INCREMENT,
    IssueDate VARCHAR(45),
    TotalAmount VARCHAR(45),
    Status VARCHAR(45),
    CompletionDate DATE,
    Vehicles_idVehicles INT,
    Teams_idTeams INT,
    CustomerAuthorization BOOLEAN,
    FOREIGN KEY (Vehicles_idVehicles) REFERENCES Vehicles(idVehicles),
    FOREIGN KEY (Teams_idTeams) REFERENCES Teams(idTeams)
);

-- Services
CREATE TABLE Services (
    idServices INT PRIMARY KEY AUTO_INCREMENT,
    Description VARCHAR(45),
    LaborCost VARCHAR(45)
);

-- Parts
CREATE TABLE Parts (
    idParts INT PRIMARY KEY AUTO_INCREMENT,
    Description VARCHAR(45),
    Price VARCHAR(45)
);

-- Service Order Items
CREATE TABLE ServiceOrderItems (
    idServiceOrderItems INT PRIMARY KEY AUTO_INCREMENT,
    Quantity INT,
    ServiceOrders_idServiceOrder INT,
    Parts_idParts INT,
    Services_idServices INT,
    FOREIGN KEY (ServiceOrders_idServiceOrder) REFERENCES ServiceOrders(idServiceOrder),
    FOREIGN KEY (Parts_idParts) REFERENCES Parts(idParts),
    FOREIGN KEY (Services_idServices) REFERENCES Services(idServices)
);
