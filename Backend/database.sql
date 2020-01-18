use sky_detector;
CREATE TABLE USERS
(
    id INT
    AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR
    (100),
    password VARCHAR
    (100),
    username VARCHAR
    (30) PRIMARY KEY,
    -- focalLength FLOAT,
    -- height FLOAT,
    -- width FLOAT,
    angleOfView FLOAT,
	register_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
    CREATE TABLE HISTORIES
    (
        id INT
        AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR
        (30),
    image VARCHAR
        (100),
    mask VARCHAR
        (100),
    angles LONGTEXT,
    addr1 VARCHAR
        (100),
    addr2 VARCHAR
        (100),
    percent FLOAT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY
        (username)
        REFERENCES USERS
        (username)
);