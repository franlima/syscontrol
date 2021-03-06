CREATE TABLE users (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    idtype INT NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    finished DATETIME NULL
);

CREATE TABLE userstype (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    type VARCHAR(50) NOT NULL UNIQUE,
    description VARCHAR(255) NOT NULL,
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    finished DATETIME
);

CREATE TABLE tfloperation (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL UNIQUE,
    description VARCHAR(255) NOT NULL,
    delta  INT DEFAULT 0,
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    finished DATETIME NULL
);

CREATE TABLE tfllog (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    idop INT NOT NULL,
    iduser INT NOT NULL,
    value DOUBLE NOT NULL,
    status  TINYINT NOT NULL DEFAULT 0,
    due DATETIME NULL,
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    finished DATETIME NULL
);