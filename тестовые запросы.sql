-- List all passengers with their ticket number, route, and seat number
SELECT p.passenger_id AS PassengerID, p.name AS PassengerName, t.ticket_number, ts.departure_time, ts.arrival_time, t.seat_number
FROM Passengers p
JOIN Tickets t ON p.passenger_id = t.passenger_id
JOIN TrainSchedules ts ON t.route_id = ts.schedule_id
ORDER BY p.name, ts.departure_time;

-- List all staff members with their assigned locomotive and role
SELECT s.staff_id AS StaffID, s.name AS StaffName, s.role, l.type AS LocomotiveType, l.locomotive_id AS LocomotiveID
FROM Staff s
JOIN Locomotives l ON s.locomotive_id = l.locomotive_id
ORDER BY s.name;

-- List all train schedules with departure and arrival stations, including train ID
SELECT ts.schedule_id AS ScheduleID, ts.departure_time, ts.arrival_time, ts.train_id, ds.station_name AS DepartureStation, ar.station_name AS ArrivalStation
FROM TrainSchedules ts
JOIN TrainStations ds ON ts.departure_station_id = ds.station_id
JOIN TrainStations ar ON ts.arrival_station_id = ar.station_id
ORDER BY ts.departure_time;

-- List all train crews with their assigned shifts and trains
SELECT tc.crew_id AS CrewID, s.name AS StaffName, tc.role, tc.assigned_shift, l.type AS LocomotiveType, l.locomotive_id AS LocomotiveID
FROM TrainCrews tc
JOIN Staff s ON tc.crew_member_id = s.staff_id
JOIN Locomotives l ON tc.train_id = l.locomotive_id
ORDER BY tc.assigned_shift, s.name;

-- List all tickets sold with their prices and sale date
SELECT t.ticket_number, ps.name AS PassengerName, ts.price, ts.sale_date
FROM TicketsSold ts
JOIN Tickets t ON ts.ticket_id = t.ticket_id
JOIN Passengers ps ON t.passenger_id = ps.passenger_id
ORDER BY ts.sale_date;

-- List all train types with their capacities
SELECT tt.train_type, tt.capacity
FROM TrainTypes tt
ORDER BY tt.train_type;

-- List all train delays with their durations and reasons
SELECT td.train_id, td.delay_duration, td.delay_reason, l.type AS LocomotiveType
FROM TrainDelays td
JOIN Locomotives l ON td.train_id = l.locomotive_id
ORDER BY td.delay_duration DESC;

-- List all route types with their descriptions
SELECT rt.route_type, rt.description
FROM RouteTypes rt
ORDER BY rt.route_type;

-- List all events with their timestamps
SELECT el.event_type, el.event_description, el.event_timestamp
FROM EventLogs el
ORDER BY el.event_timestamp DESC;

-- List all train schedules with their associated departure and arrival stations
SELECT ts.schedule_id AS ScheduleID, ds.station_name AS DepartureStation, ar.station_name AS ArrivalStation, ts.departure_time, ts.arrival_time
FROM TrainSchedules ts
JOIN TrainStations ds ON ts.departure_station_id = ds.station_id
JOIN TrainStations ar ON ts.arrival_station_id = ar.station_id
ORDER BY ts.departure_time;
