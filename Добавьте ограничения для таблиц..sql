-- Add constraints for the tables

-- Unique Ticket Number in Tickets Table
ALTER TABLE Tickets
ADD CONSTRAINT UC_Tickets_TicketNumber UNIQUE (ticket_number);

-- Unique Locomotive ID in Locomotives Table
ALTER TABLE Locomotives
ADD CONSTRAINT UC_Locomotives_ID UNIQUE (locomotive_id);

-- Unique Staff Name and Role Combination
ALTER TABLE Staff
ADD CONSTRAINT UC_Staff_Name_Role UNIQUE (name, role);

-- Unique Train Type in TrainTypes Table
ALTER TABLE TrainTypes
ADD CONSTRAINT UC_TrainTypes_TrainType UNIQUE (train_type);

-- Check Constraints

-- Ensure the delay duration in TrainDelays is a non-negative value
ALTER TABLE TrainDelays
ADD CONSTRAINT CHK_TrainDelays_DelayDuration CHECK (delay_duration >= 0);

-- Ensure that the seat number in Tickets is a positive integer
ALTER TABLE Tickets
ADD CONSTRAINT CHK_Tickets_SeatNumber CHECK (seat_number > 0);

-- Ensure that the locomotive age in Locomotives is a non-negative value
ALTER TABLE Locomotives
ADD CONSTRAINT CHK_Locomotives_Age CHECK (age >= 0);

-- Ensure that the repair cost in LocomotiveMaintenance is greater than or equal to 0
ALTER TABLE LocomotiveMaintenance
ADD CONSTRAINT CHK_LocomotiveMaintenance_Cost CHECK (cost >= 0);

-- Ensure that the ticket price in TicketsSold is a positive value
ALTER TABLE TicketsSold
ADD CONSTRAINT CHK_TicketsSold_Price CHECK (price > 0);

-- Ensure that the train ID in TrainSchedules references a valid Locomotive ID
ALTER TABLE TrainSchedules
ADD CONSTRAINT FK_TrainSchedules_TrainID FOREIGN KEY (train_id) REFERENCES Locomotives(locomotive_id);

-- Ensure that the crew member ID in TrainCrews references a valid Staff ID
ALTER TABLE TrainCrews
ADD CONSTRAINT FK_TrainCrews_CrewMemberID FOREIGN KEY (crew_member_id) REFERENCES Staff(staff_id);

-- Ensure that the train ID in TrainCrews references a valid Locomotive ID
ALTER TABLE TrainCrews
ADD CONSTRAINT FK_TrainCrews_TrainID FOREIGN KEY (train_id) REFERENCES Locomotives(locomotive_id);

-- Ensure that the route ID in Tickets references a valid TrainSchedule ID
ALTER TABLE Tickets
ADD CONSTRAINT FK_Tickets_RouteID FOREIGN KEY (route_id) REFERENCES TrainSchedules(schedule_id);

-- Ensure that the passenger ID in Tickets references a valid Passenger ID
ALTER TABLE Tickets
ADD CONSTRAINT FK_Tickets_PassengerID FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id);

-- Ensure that the ticket ID in TicketsSold references a valid Ticket ID
ALTER TABLE TicketsSold
ADD CONSTRAINT FK_TicketsSold_TicketID FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id);

-- Ensure that the ticket ID in TicketPayments references a valid Ticket ID
ALTER TABLE TicketPayments
ADD CONSTRAINT FK_TicketPayments_TicketID FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id);

-- Ensure that the ticket ID in TicketPayments references a valid Ticket ID
ALTER TABLE LocomotiveMaintenance
ADD CONSTRAINT FK_LocomotiveMaintenance_LocomotiveID FOREIGN KEY (locomotive_id) REFERENCES Locomotives(locomotive_id);

-- Ensure that the crew ID in CrewSchedules references a valid Staff ID
ALTER TABLE CrewSchedules
ADD CONSTRAINT FK_CrewSchedules_CrewID FOREIGN KEY (crew_id) REFERENCES Staff(staff_id);
