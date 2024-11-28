-- 老人表内插入数据
INSERT INTO Elderly (ElderlyID, Name, Gender, Age, Contact, Address)
VALUES ('E005', '赵芳', 'F', 65, '13912345678', '北京市朝阳区XX路');

-- 服务表内插入数据
INSERT INTO Service (ServiceID, ServiceName, ServiceType, Description)
VALUES ('S005', '健康讲座', '医疗帮助', '为老年人提供健康讲座服务');

-- 志愿者表内插入数据
INSERT INTO Volunteer (VolunteerID, Name, Gender, Contact)
VALUES ('V005', '李刚', 'M', '13812345679');

-- 公告表内插入数据
INSERT INTO Announcement (AnnouncementID, Title, Content, PublishTime)
VALUES ('A005', '冬季健康讲座', '冬季健康讲座，将讲解冬季保健知识', '2024-12-01 09:00:00');
