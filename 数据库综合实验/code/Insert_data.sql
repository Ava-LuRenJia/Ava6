-- Insert Data into Elderly Table
INSERT INTO Elderly (ElderlyID, Name, Gender, Age, Contact, Address)
VALUES
('E001', '张伟', 'M', 70, '13812345678', '北京市海淀区XX路'),
('E002', '李娟', 'F', 68, '13923456789', '上海市浦东新区YY路'),
('E003', '王刚', 'M', 75, '13734567890', '广州市天河区ZZ路'),
('E004', '刘敏', 'F', 80, '13645678901', '深圳市福田区AA路');
-- Insert Data into Service Table
INSERT INTO Service (ServiceID, ServiceName, ServiceType, Description)
VALUES
('S001', '基础养老', '生活照料', '为老年人提供日常生活照料，包括洗澡、穿衣、进食等基本服务'),
('S002', '医疗护理', '医疗帮助', '为老年人提供基础医疗护理服务，包括健康监测、药物管理等'),
('S003', '紧急救援', '紧急服务', '提供老年人在突发情况下的紧急救援，包括报警、送医等'),
('S004', '物业维修', '生活服务', '为社区老年人提供物业维修、设施维护等服务');

-- Insert Data into Volunteer Table
INSERT INTO Volunteer (VolunteerID, Name, Gender, Contact)
VALUES
('V001', '陈阳', 'M', '13567890123'),
('V002', '孙丽', 'F', '13678901234'),
('V003', '赵军', 'M', '13789012345'),
('V004', '李娟', 'F', '13890123456');

-- Insert Data into Announcement Table
INSERT INTO Announcement (AnnouncementID, Title, Content, PublishTime)
VALUES
('A001', '春节团圆活动', '社区将于春节期间举办团圆活动，请老人积极参与。', '2024-01-20 09:00:00'),
('A002', '健康讲座', '将举办健康养生讲座，邀请专家为老人讲解健康知识。', '2024-02-15 14:00:00'),
('A003', '紧急疏散演练', '社区将进行紧急疏散演练，确保老人安全。', '2024-03-10 10:00:00'),
('A004', '物业维修公告', '近期社区内多个设施进行维修，请居民注意。', '2024-04-05 16:00:00');

-- Insert Data into Feedback Table
INSERT INTO Feedback (FeedbackID, ElderlyID, AnnouncementID, F_Content, FeedbackTime)
VALUES
('F001', 'E001', 'A001', '活动安排很好，希望能增加更多互动环节。', '2024-01-21 10:00:00'),
('F002', 'E002', 'A002', '健康讲座内容很丰富，希望能够定期举办。', '2024-02-16 15:30:00'),
('F003', 'E003', 'A003', '演练很有意义，但希望能更快响应。', '2024-03-11 11:20:00'),
('F004', 'E004', 'A004', '维修工作影响了我的生活，希望能提前通知。', '2024-04-06 09:40:00');
-- Insert Data into Elderly_Service Table
INSERT INTO Elderly_Service (ElderlyID, ServiceID, JoinDate)
VALUES
('E001', 'S001', '2024-01-01'),
('E002', 'S002', '2024-01-15'),
('E003', 'S003', '2024-02-01'),
('E004', 'S004', '2024-03-05');

-- Insert Data into Volunteer_Service Table
INSERT INTO Volunteer_Service (VolunteerID, ServiceID, ParticipationDate)
VALUES
('V001', 'S001', '2024-01-10'),
('V002', 'S002', '2024-01-20'),
('V003', 'S003', '2024-02-10'),
('V004', 'S004', '2024-03-15');
