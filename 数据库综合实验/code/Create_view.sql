#创建一个视图来查看所有参与特定服务的老人信息#
CREATE VIEW ElderlyServiceView AS
SELECT E.ElderlyID, E.Name, E.Age, S.ServiceName, ES.JoinDate
FROM Elderly E
JOIN Elderly_Service ES ON E.ElderlyID = ES.ElderlyID
JOIN Service S ON ES.ServiceID = S.ServiceID;
