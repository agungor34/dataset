-- CREATE TABLE IF NOT EXISTS users (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(100),
--     session_id VARCHAR(100),
--     created_at DATETIME DEFAULT CURRENT_TIMESTAMP
-- );


CREATE TABLE my_table (
    `Timestamp` VARCHAR(255),
    `Age` INT,
    `Gender` VARCHAR(255),
    `Country` VARCHAR(255),
    `state` VARCHAR(255),
    `self_employed` VARCHAR(255),
    `family_history` VARCHAR(255),
    `treatment` VARCHAR(255),
    `work_interfere` VARCHAR(255)
    -- `no_employees` VARCHAR(255),
    -- `remote_work` VARCHAR(255),
    -- `tech_company` VARCHAR(255),
    -- `benefits` VARCHAR(255),
    -- `care_options` VARCHAR(255),
    -- `wellness_program` VARCHAR(255),
    -- `seek_help` VARCHAR(255),
    -- `anonymity` VARCHAR(255),
    -- `leave` VARCHAR(255),
    -- `mental_health_consequence` VARCHAR(255),
    -- `phys_health_consequence` VARCHAR(255),
    -- `coworkers` VARCHAR(255),
    -- `supervisor` VARCHAR(255),
    -- `mental_health_interview` VARCHAR(255),
    -- `phys_health_interview` VARCHAR(255),
    -- `mental_vs_physical` VARCHAR(255),
    -- `obs_consequence` VARCHAR(255),
    -- `comments` VARCHAR(255)
);
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'password' WITH GRANT OPTION;
FLUSH PRIVILEGES;

-- SET GLOBAL wait_timeout = 900;  -- 15 dk
-- SET GLOBAL interactive_timeout = 900;  -- 8 saat
-- SET GLOBAL max_allowed_packet = 1073741824;  -- 1 GB
-- SET GLOBAL max_execution_time = 600000;  -- 600 saniye
-- SET GLOBAL net_read_timeout = 300;  -- 300 saniye
-- SET GLOBAL net_write_timeout = 300;  -- 300 saniye


