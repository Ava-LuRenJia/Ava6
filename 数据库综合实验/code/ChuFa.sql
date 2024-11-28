DELIMITER //

-- 创建触发器：自动填充 ParticipationDate
CREATE TRIGGER SetParticipationDate
BEFORE INSERT ON Volunteer_Service
FOR EACH ROW
BEGIN
    -- 在插入之前，自动为 ParticipationDate 设置当前日期
    IF NEW.ParticipationDate IS NULL THEN
        SET NEW.ParticipationDate = CURDATE();
    END IF;
END //

DELIMITER ;

-- 插入数据，不提供 ParticipationDate，触发器会自动设置为当前日期
INSERT INTO Volunteer_Service (VolunteerID, ServiceID)
VALUES ('V005', 'S005');  -- 这个插入不指定 ParticipationDate，触发器会填充
