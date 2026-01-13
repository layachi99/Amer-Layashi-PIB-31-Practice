DROP DATABASE IF EXISTS RailwayStationDB;

-- Create Database
CREATE DATABASE RailwayStationDB;

-- Use the Database
USE RailwayStationDB;

-- Create Locomotives 
CREATE TABLE Locomotives (
    locomotive_id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary Key for Locomotives
    type VARCHAR(100),
    mileage INT,
    age INT,
    repair_history TEXT
);

-- Create Staff Table 
CREATE TABLE Staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary Key for Staff
    name VARCHAR(100),
    role VARCHAR(50),
    locomotive_id INT,  -- Foreign Key referencing Locomotives table
    FOREIGN KEY (locomotive_id) REFERENCES Locomotives(locomotive_id)
);

-- Create Train Stations Table 
CREATE TABLE TrainStations (
    station_id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary Key for TrainStations
    station_name VARCHAR(100),
    location VARCHAR(100),
    platform_count INT,
    manager VARCHAR(100)
);

-- Create Train Crews Table 
CREATE TABLE TrainCrews (
    crew_id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary Key for TrainCrews
    crew_member_id INT,  -- Foreign Key referencing Staff table
    train_id INT,  -- Foreign Key referencing Locomotives table
    role VARCHAR(100),
    assigned_shift VARCHAR(100),
    FOREIGN KEY (train_id) REFERENCES Locomotives(locomotive_id),
    FOREIGN KEY (crew_member_id) REFERENCES Staff(staff_id)
);

-- Create Train Schedules Table 
CREATE TABLE TrainSchedules (
    schedule_id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary Key for TrainSchedules
    train_id INT,  -- Foreign Key referencing Locomotives table
    departure_station_id INT,  -- Foreign Key referencing TrainStations table
    arrival_station_id INT,  -- Foreign Key referencing TrainStations table
    departure_time DATETIME,
    arrival_time DATETIME,
    FOREIGN KEY (departure_station_id) REFERENCES TrainStations(station_id),
    FOREIGN KEY (arrival_station_id) REFERENCES TrainStations(station_id),
    FOREIGN KEY (train_id) REFERENCES Locomotives(locomotive_id)
);

-- Create Passengers Table 
CREATE TABLE Passengers (
    passenger_id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary Key for Passengers
    name VARCHAR(100),
    dob DATE,
    passport_number VARCHAR(100),
    contact_details TEXT
);

-- Create Tickets Table 
CREATE TABLE Tickets (
    ticket_id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary Key for Tickets
    ticket_number VARCHAR(50),
    route_id INT,  -- Foreign Key referencing TrainSchedules table
    passenger_id INT,  -- Foreign Key referencing Passengers table
    departure_date DATETIME,
    seat_number INT,
    FOREIGN KEY (route_id) REFERENCES TrainSchedules(schedule_id),
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id)
);

-- Create Tickets Sold Table 
CREATE TABLE TicketsSold (
    ticketsold_id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary Key for TicketsSold
    ticket_id INT,  -- Foreign Key referencing Tickets table
    sale_date DATETIME,
    sold_by VARCHAR(100),
    price DECIMAL(10, 2),
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id)
);

-- Create Ticket Categories Table 
CREATE TABLE TicketCategories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary Key for TicketCategories
    category_name VARCHAR(100),
    description TEXT,
    price_multiplier DECIMAL(5, 2)
);

-- Create Train Delays Table 
CREATE TABLE TrainDelays (
    delay_id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary Key for TrainDelays
    train_id INT,  -- Foreign Key referencing Locomotives table
    delay_duration INT,
    delay_reason VARCHAR(255),
    FOREIGN KEY (train_id) REFERENCES Locomotives(locomotive_id)
);

-- Create Ticket Payments Table 
CREATE TABLE TicketPayments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary Key for TicketPayments
    ticket_id INT,  -- Foreign Key referencing Tickets table
    payment_date DATETIME,
    payment_method VARCHAR(50),
    payment_status VARCHAR(50),
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id)
);

-- Create Locomotive Maintenance Table 
CREATE TABLE LocomotiveMaintenance (
    maintenance_id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary Key for LocomotiveMaintenance
    locomotive_id INT,  -- Foreign Key referencing Locomotives table
    maintenance_date DATETIME,
    maintenance_details TEXT,
    cost DECIMAL(10, 2),
    FOREIGN KEY (locomotive_id) REFERENCES Locomotives(locomotive_id)
);

-- Create Train Types Table 
CREATE TABLE TrainTypes (
    train_type_id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary Key for TrainTypes
    train_type VARCHAR(50),
    capacity INT
);

-- Create Crew Schedules Table 
CREATE TABLE CrewSchedules (
    crew_schedule_id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary Key for CrewSchedules
    crew_id INT,  -- Foreign Key referencing Staff table
    schedule_date DATE,
    shift_time VARCHAR(100),
    FOREIGN KEY (crew_id) REFERENCES Staff(staff_id)
);

-- Create Route Types Table 
CREATE TABLE RouteTypes (
    route_type_id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary Key for RouteTypes
    route_type VARCHAR(100),
    description TEXT
);

-- Create Event Logs Table 
CREATE TABLE EventLogs (
    event_log_id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary Key for EventLogs
    event_type VARCHAR(100),
    event_description TEXT,
    event_timestamp DATETIME
);

