-- Create index on Elderly Contact for faster queries
CREATE INDEX idx_contact ON Elderly(Contact);

-- Create index on Service ServiceType for faster queries
CREATE INDEX idx_service_type ON Service(ServiceType);
