#创建存储过程来查询老人服务记录
DELIMITER //
CREATE PROCEDURE GetElderlyServices(IN elderly_id CHAR(6))
BEGIN
    SELECT E.Name, S.ServiceName, ES.JoinDate
    FROM Elderly E
    JOIN Elderly_Service ES ON E.ElderlyID = ES.ElderlyID
    JOIN Service S ON ES.ServiceID = S.ServiceID
    WHERE E.ElderlyID = elderly_id;
END //
DELIMITER ;
#调用存储过程
CALL GetElderlyServices('E001');
