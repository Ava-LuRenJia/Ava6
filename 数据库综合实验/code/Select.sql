-- 1. 查询所有参与服务的老人信息，并按年龄升序排序
SELECT E.Name, E.Age, S.ServiceName, ES.JoinDate
FROM Elderly E
JOIN Elderly_Service ES ON E.ElderlyID = ES.ElderlyID
JOIN Service S ON ES.ServiceID = S.ServiceID
ORDER BY E.Age ASC;

-- 2. 查询每种服务的参与人数
SELECT S.ServiceName, COUNT(ElderlyID) AS NumberOfParticipants
FROM Service S
JOIN Elderly_Service ES ON S.ServiceID = ES.ServiceID
GROUP BY S.ServiceName;

-- 3. 查询每个服务的志愿者参与情况
SELECT V.Name, S.ServiceName, VS.ParticipationDate
FROM Volunteer V
JOIN Volunteer_Service VS ON V.VolunteerID = VS.VolunteerID
JOIN Service S ON VS.ServiceID = S.ServiceID;

-- 4. 查询每个服务的老人数量，并且只显示参与人数超过1的服务
SELECT S.ServiceName, COUNT(ES.ElderlyID) AS ElderlyCount
FROM Service S
JOIN Elderly_Service ES ON S.ServiceID = ES.ServiceID
GROUP BY S.ServiceName
HAVING COUNT(ES.ElderlyID) > 1;

-- 5. 查询老人对公告的反馈情况，按反馈时间倒序排列
SELECT F.F_Content, F.FeedbackTime, A.Title
FROM Feedback F
JOIN Announcement A ON F.AnnouncementID = A.AnnouncementID
ORDER BY F.FeedbackTime DESC;
