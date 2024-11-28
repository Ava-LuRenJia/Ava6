-- Create Elderly Table
CREATE TABLE Elderly (
    ElderlyID CHAR(6) PRIMARY KEY,
    Name VARCHAR(20) NOT NULL,
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')) NOT NULL,
    Age INT CHECK (Age > 0) NOT NULL,
    Contact VARCHAR(15) NOT NULL,
    Address VARCHAR(50) NOT NULL
);

-- Create Service Table
CREATE TABLE Service (
    ServiceID CHAR(6) PRIMARY KEY,
    ServiceName VARCHAR(50) NOT NULL,
    ServiceType VARCHAR(20) NOT NULL,
    Description TEXT NOT NULL
);

-- Create Volunteer Table
CREATE TABLE Volunteer (
    VolunteerID CHAR(6) PRIMARY KEY,
    Name VARCHAR(20) NOT NULL,
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')) NOT NULL,
    Contact VARCHAR(15) NOT NULL,
);

-- Create Announcement Table
CREATE TABLE Announcement (
    AnnouncementID CHAR(6) PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Content TEXT NOT NULL,
    PublishTime DATETIME NOT NULL
);

-- Create Feedback Table
CREATE TABLE Feedback (
    FeedbackID CHAR(6) PRIMARY KEY,
    ElderlyID CHAR(6),
    AnnouncementID CHAR(6),
    F_Content TEXT NOT NULL,
    FeedbackTime DATETIME NOT NULL,
    FOREIGN KEY (ElderlyID) REFERENCES Elderly(ElderlyID),
    FOREIGN KEY (AnnouncementID) REFERENCES Announcement(AnnouncementID)
);

-- Create Elderly_Service Table
CREATE TABLE Elderly_Service (
    ElderlyID CHAR(6),
    ServiceID CHAR(6),
    JoinDate DATE NOT NULL,
    PRIMARY KEY (ElderlyID, ServiceID),
    FOREIGN KEY (ElderlyID) REFERENCES Elderly(ElderlyID),
    FOREIGN KEY (ServiceID) REFERENCES Service(ServiceID)
);

-- Create Volunteer_Service Table
CREATE TABLE Volunteer_Service (
    VolunteerID CHAR(6),
    ServiceID CHAR(6),
    ParticipationDate DATE NOT NULL,
    PRIMARY KEY (VolunteerID, ServiceID),
    FOREIGN KEY (VolunteerID) REFERENCES Volunteer(VolunteerID),
    FOREIGN KEY (ServiceID) REFERENCES Service(ServiceID)
);
