CREATE DATABASE IF NOT EXISTS dandelion DEFAULT CHARACTER SET utf8mb4 DEFAULT COLLATE utf8mb4_general_ci;
GRANT ALL PRIVILEGES ON dandelion.* TO 'dandelion'@'localhost' IDENTIFIED BY 'dandelion123';
GRANT ALL PRIVILEGES ON dandelion.* TO 'dandelion'@'%'  IDENTIFIED BY 'dandelion123';
