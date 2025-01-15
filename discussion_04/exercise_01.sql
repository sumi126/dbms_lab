CREATE TRIGGER trg_test ON Item FOR INSERT
AS
BEGIN
	PRINT 'Data interted succesfully'
END