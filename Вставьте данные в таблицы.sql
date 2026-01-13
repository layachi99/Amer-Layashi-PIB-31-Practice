-- Insert data into the Locomotives table first
INSERT INTO Locomotives (type, mileage, age, repair_history) VALUES
('Electric', 50000, 10, 'Minor repairs in 2020'),
('Diesel', 30000, 5, 'No repairs yet'),
('Steam', 150000, 25, 'Overhaul in 2018'),
('Electric', 70000, 8, 'No repairs yet'),
('Diesel', 10000, 3, 'Minor repairs in 2021'),
('Electric', 25000, 4, 'Minor repairs in 2022'),
('Diesel', 50000, 10, 'Routine maintenance in 2019'),
('Electric', 120000, 15, 'Overhaul in 2017'),
('Diesel', 45000, 12, 'No repairs yet'),
('Steam', 100000, 20, 'Complete engine replacement in 2015');

-- Insert data into the Staff table (referencing Locomotives by locomotive_id)
INSERT INTO Staff (name, role, locomotive_id) VALUES
('Ivanov Alexey', 'Driver', 1),
('Petrov Dmitry', 'Dispatcher', 2),
('Sidorov Sergey', 'Repairman', 3),
('Kozlov Andrey', 'Driver', 4),
('Morozov Anton', 'Dispatcher', 5),
('Fedorov Igor', 'Repairman', 6),
('Dmitriev Natalia', 'Driver', 7),
('Popov Alexander', 'Dispatcher', 8),
('Sokolov Maria', 'Repairman', 9),
('Smirnov Viktor', 'Driver', 10);

-- Insert data into the TrainStations table
INSERT INTO TrainStations (station_name, location, platform_count, manager) VALUES
('Volgograd Station', 'Volgograd, Russia', 5, 'Yuri Petrov'),
('Moscow Station', 'Moscow, Russia', 10, 'Elena Ivanova'),
('Saint Petersburg Station', 'Saint Petersburg, Russia', 8, 'Alexey Dmitriev'),
('Krasnodar Station', 'Krasnodar, Russia', 6, 'Natalia Lebedeva'),
('Novosibirsk Station', 'Novosibirsk, Russia', 7, 'Maxim Ivanov'),
('Sochi Station', 'Sochi, Russia', 4, 'Igor Ponomarev'),
('Yekaterinburg Station', 'Yekaterinburg, Russia', 9, 'Olga Tarasova'),
('Kazan Station', 'Kazan, Russia', 6, 'Dmitry Kolesnikov'),
('Nizhny Novgorod Station', 'Nizhny Novgorod, Russia', 8, 'Anna Vinogradova'),
('Rostov Station', 'Rostov-on-Don, Russia', 7, 'Vadim Zhukov');

-- Insert data into the TrainCrews table
INSERT INTO TrainCrews (crew_member_id, train_id, role, assigned_shift) VALUES
(1, 1, 'Driver', 'Morning'),
(2, 2, 'Dispatcher', 'Afternoon'),
(3, 3, 'Repairman', 'Night'),
(4, 4, 'Driver', 'Morning'),
(5, 5, 'Dispatcher', 'Afternoon'),
(6, 6, 'Driver', 'Night'),
(7, 7, 'Dispatcher', 'Morning'),
(8, 8, 'Repairman', 'Afternoon'),
(9, 9, 'Driver', 'Night'),
(10, 10, 'Dispatcher', 'Morning');

-- Insert data into the TrainSchedules table
INSERT INTO TrainSchedules (train_id, departure_station_id, arrival_station_id, departure_time, arrival_time) VALUES
(1, 1, 2, '2026-01-15 08:00:00', '2026-01-15 14:00:00'),
(2, 2, 3, '2026-01-15 10:00:00', '2026-01-15 16:00:00'),
(3, 3, 4, '2026-01-15 12:00:00', '2026-01-15 18:00:00'),
(4, 4, 5, '2026-01-15 14:00:00', '2026-01-15 20:00:00'),
(5, 5, 1, '2026-01-15 16:00:00', '2026-01-15 22:00:00'),
(6, 6, 7, '2026-01-16 08:00:00', '2026-01-16 14:00:00'),
(7, 7, 8, '2026-01-16 10:00:00', '2026-01-16 16:00:00'),
(8, 8, 9, '2026-01-16 12:00:00', '2026-01-16 18:00:00'),
(9, 9, 10, '2026-01-16 14:00:00', '2026-01-16 20:00:00'),
(10, 10, 1, '2026-01-16 16:00:00', '2026-01-16 22:00:00');

-- Insert data into the Passengers table
INSERT INTO Passengers (name, dob, passport_number, contact_details) VALUES
('Alexey Ivanov', '1995-02-11', 'AB1234567', 'Mira St, 10, Volgograd'),
('Maria Petrova', '1998-07-05', 'CD9876543', 'Lenin Ave, 45, Moscow'),
('Dmitry Sidorov', '1997-10-21', 'EF5432109', 'Krasnaya St, 25, Saint Petersburg'),
('Olga Kozlova', '1996-03-17', 'GH4567890', 'Zhukov St, 3, Krasnodar'),
('Sergey Morozov', '1994-09-14', 'IJ1357924', 'Nevsky Ave, 18, Novosibirsk'),
('Artem Popov', '1997-08-10', 'KL1245687', 'Parkovaya St, 2, Sochi'),
('Nina Fedorova', '1995-11-22', 'MN8765432', 'Volgogradskaya St, 13, Yekaterinburg'),
('Maxim Ivanov', '1996-04-25', 'OP9876543', 'Krasnoznamenskaya St, 11, Kazan'),
('Anastasia Orlova', '1997-06-18', 'QR1234567', 'Lenin Ave, 5, Nizhny Novgorod'),
('Pavel Sokolov', '1998-02-02', 'ST2345678', 'Olimpiyskaya St, 8, Rostov-on-Don');

-- Insert data into the Tickets table
INSERT INTO Tickets (ticket_number, route_id, passenger_id, departure_date, seat_number) VALUES
('T12345', 1, 1, '2026-01-15 08:00:00', 5),
('T12346', 2, 2, '2026-01-15 10:00:00', 7),
('T12347', 3, 3, '2026-01-15 12:00:00', 2),
('T12348', 4, 4, '2026-01-15 14:00:00', 9),
('T12349', 5, 5, '2026-01-15 16:00:00', 4),
('T12350', 6, 6, '2026-01-16 08:00:00', 10),
('T12351', 7, 7, '2026-01-16 10:00:00', 12),
('T12352', 8, 8, '2026-01-16 12:00:00', 15),
('T12353', 9, 9, '2026-01-16 14:00:00', 20),
('T12354', 10, 10, '2026-01-16 16:00:00', 25);

-- Insert data into the TicketsSold table
INSERT INTO TicketsSold (ticket_id, sale_date, sold_by, price) VALUES
(1, '2026-01-10', 'Sales Agent 1', 1500.00),
(2, '2026-01-10', 'Sales Agent 2', 1600.00),
(3, '2026-01-10', 'Sales Agent 3', 1700.00),
(4, '2026-01-10', 'Sales Agent 4', 1800.00),
(5, '2026-01-10', 'Sales Agent 5', 1900.00),
(6, '2026-01-12', 'Sales Agent 1', 2000.00),
(7, '2026-01-12', 'Sales Agent 2', 2100.00),
(8, '2026-01-12', 'Sales Agent 3', 2200.00),
(9, '2026-01-12', 'Sales Agent 4', 2300.00),
(10, '2026-01-12', 'Sales Agent 5', 2400.00);

-- Insert data into the TrainTypes table
INSERT INTO TrainTypes (train_type, capacity) VALUES
('Electric', 200),
('Diesel', 150),
('Steam', 100),
('Electric_2', 250),  -- Renamed to avoid duplication
('Diesel_2', 175);    -- Renamed to avoid duplication

-- Insert data into the CrewSchedules table
INSERT INTO CrewSchedules (crew_id, schedule_date, shift_time) VALUES
(1, '2026-01-15', 'Morning'),
(2, '2026-01-15', 'Afternoon'),
(3, '2026-01-15', 'Night'),
(4, '2026-01-15', 'Morning'),
(5, '2026-01-15', 'Afternoon'),
(6, '2026-01-16', 'Morning'),
(7, '2026-01-16', 'Afternoon'),
(8, '2026-01-16', 'Night'),
(9, '2026-01-16', 'Morning'),
(10, '2026-01-16', 'Afternoon');

-- Insert data into the RouteTypes table
INSERT INTO RouteTypes (route_type, description) VALUES
('Local', 'Train travels within the city limits'),
('Intercity', 'Train travels between cities'),
('International', 'Train travels between countries'),
('Cargo', 'Train for transporting goods'),
('Luxury', 'High-end passenger service with additional amenities');

-- Insert data into the EventLogs table
INSERT INTO EventLogs (event_type, event_description, event_timestamp) VALUES
('Error', 'Train 1 encountered a technical issue', '2026-01-15 08:30:00'),
('Update', 'Ticket sales updated for Train 2', '2026-01-10 10:00:00'),
('Maintenance', 'Locomotive 1 received a minor repair', '2026-01-09 16:00:00'),
('Error', 'Train 3 delayed due to weather conditions', '2026-01-15 14:30:00'),
('Maintenance', 'Locomotive 5 received a routine checkup', '2026-01-10 18:00:00');
