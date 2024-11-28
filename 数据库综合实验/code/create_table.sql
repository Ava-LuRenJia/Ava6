-- Create Elderly Table
CREATE TABLE Elderly (
    ElderlyID CHAR(6) PRIMARY KEY,        -- 实体完整性
    Name VARCHAR(20) NOT NULL,            -- 姓名不能为空
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')) NOT NULL,  -- 性别约束
    Age INT CHECK (Age > 0) NOT NULL,     -- 年龄大于0
    Contact VARCHAR(15) NOT NULL,         -- 联系方式不能为空
    Address VARCHAR(50) NOT NULL          -- 地址不能为空
);

-- Create Service Table
CREATE TABLE Service (
    ServiceID CHAR(6) PRIMARY KEY,        -- 实体完整性
    ServiceName VARCHAR(50) NOT NULL,     -- 服务名称不能为空
    ServiceType VARCHAR(20) NOT NULL,     -- 服务类型不能为空
    Description TEXT NOT NULL            -- 描述不能为空
);

-- Create Volunteer Table
CREATE TABLE Volunteer (
    VolunteerID CHAR(6) PRIMARY KEY,      -- 实体完整性
    Name VARCHAR(20) NOT NULL,            -- 姓名不能为空
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')) NOT NULL,  -- 性别约束
    Contact VARCHAR(15) NOT NULL          -- 联系方式不能为空
);

-- Create Announcement Table
CREATE TABLE Announcement (
    AnnouncementID CHAR(6) PRIMARY KEY,   -- 实体完整性
    Title VARCHAR(100) NOT NULL,          -- 标题不能为空
    Content TEXT NOT NULL,                -- 内容不能为空
    PublishTime DATETIME NOT NULL         -- 发布时间不能为空
);

-- Create Feedback Table with Foreign Keys
CREATE TABLE Feedback (
    FeedbackID CHAR(6) PRIMARY KEY,       -- 实体完整性
    ElderlyID CHAR(6),                    -- 外键约束
    AnnouncementID CHAR(6),               -- 外键约束
    F_Content TEXT NOT NULL,              -- 反馈内容不能为空
    FeedbackTime DATETIME NOT NULL,       -- 反馈时间不能为空
    FOREIGN KEY (ElderlyID) REFERENCES Elderly(ElderlyID),    -- 参照完整性
    FOREIGN KEY (AnnouncementID) REFERENCES Announcement(AnnouncementID)  -- 参照完整性
);

-- Create Elderly_Service Table with Foreign Keys
CREATE TABLE Elderly_Service (
    ElderlyID CHAR(6),                    -- 外键约束
    ServiceID CHAR(6),                    -- 外键约束
    JoinDate DATE NOT NULL,               -- 加入日期不能为空
    PRIMARY KEY (ElderlyID, ServiceID),   -- 联合主键
    FOREIGN KEY (ElderlyID) REFERENCES Elderly(ElderlyID),  -- 参照完整性
    FOREIGN KEY (ServiceID) REFERENCES Service(ServiceID)   -- 参照完整性
);

-- Create Volunteer_Service Table with Foreign Keys
CREATE TABLE Volunteer_Service (
    VolunteerID CHAR(6),                  -- 外键约束
    ServiceID CHAR(6),                    -- 外键约束
    ParticipationDate DATE NOT NULL,       -- 参与日期不能为空
    PRIMARY KEY (VolunteerID, ServiceID), -- 联合主键
    FOREIGN KEY (VolunteerID) REFERENCES Volunteer(VolunteerID),  -- 参照完整性
    FOREIGN KEY (ServiceID) REFERENCES Service(ServiceID)   -- 参照完整性
);
