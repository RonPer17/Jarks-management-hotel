DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertRoomBooking`(
    IN p_Title VARCHAR(5),
    IN p_FName TEXT,
    IN p_LName TEXT,
    IN p_Email VARCHAR(50),
    IN p_National VARCHAR(30),
    IN p_Country VARCHAR(30),
    IN p_Phone TEXT,
    IN p_TRoom VARCHAR(20),
    IN p_Bed VARCHAR(10),
    IN p_NRoom VARCHAR(2),
    IN p_Meal VARCHAR(15),
    IN p_cin DATE,
    IN p_cout DATE,
    IN p_stat VARCHAR(15),
    IN p_nodays INT
)
BEGIN
    -- Insert into roombook table
    INSERT INTO roombook (Title, FName, LName, Email, National, Country, Phone, TRoom, Bed, NRoom, Meal, cin, cout, stat, nodays)
    VALUES (p_Title, p_FName, p_LName, p_Email, p_National, p_Country, p_Phone, p_TRoom, p_Bed, p_NRoom, p_Meal, p_cin, p_cout, p_stat, p_nodays);

    -- You can include additional insert statements for other tables if needed
END$$
