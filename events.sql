CREATE DEFINER=`root`@`localhost` EVENT `DeleteExpiredBookings` ON SCHEDULE EVERY 1 DAY STARTS '2023-12-02 23:02:33' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
    DELETE FROM roombook WHERE cout < CURDATE();
END