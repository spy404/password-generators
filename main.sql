CREATE FUNCTION generatePassword (@length INT)
RETURNS VARCHAR(20)
BEGIN
  DECLARE @charset VARCHAR(100) = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'
  DECLARE @password VARCHAR(20) = ''

  WHILE LEN(@password) < @length
  BEGIN
    DECLARE @randomIndex INT = RAND() * LEN(@charset) + 1
    SET @password = @password + SUBSTRING(@charset, @randomIndex, 1)
  END

  RETURN @password
END

SELECT dbo.generatePassword(10)
