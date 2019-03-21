-- CREATE TABLE user
-- (
--	username VARCHAR(64) NOT NULL,
--	passwd_hash VARCHAR(64) NOT NULL,
--	first_name VARCHAR(64) DEFAULT NULL,
--	last_name VARCHAR(64) DEFAULT NULL,
--	email VARCHAR(128) DeFAULT NULL
-- ); 

CREATE TABLE favorite_sport (
    user_id integer NOT NULL,
    sport_id integer NOT NULL,
    CONSTRAINT favorite_user FOREIGN KEY (user_id)
    REFERENCES user (id),
    CONSTRAINT favorite_sport FOREIGN KEY (sport_id)
    REFERENCES sport (id)
);

-- Table: favorite_sportsmen
CREATE TABLE favourite_sportsmen (
    sportsmen_id integer NOT NULL,
    user_id integer NOT NULL,
    CONSTRAINT favorite_sportsmen_sportsmen FOREIGN KEY (sportsmen_id)
    REFERENCES sportsmen (id),
    CONSTRAINT favorite_sportsmen_user FOREIGN KEY (user_id)
    REFERENCES user (id)
);

-- Table: metric
CREATE TABLE metric (
    name varchar(64) NOT NULL,
    value numeric NOT NULL,
    description varchar(255) NOT NULL,
    id integer NOT NULL CONSTRAINT metric_pk PRIMARY KEY
);

-- Table: role
CREATE TABLE role (
    id integer NOT NULL CONSTRAINT role_pk PRIMARY KEY,
    name varchar(64) NOT NULL
);

-- Table: sport
CREATE TABLE sport (
    name varchar(64) NOT NULL,
    description text NOT NULL,
    id integer NOT NULL CONSTRAINT sport_pk PRIMARY KEY
);

-- Table: sport_metric
CREATE TABLE sport_metric (
    sport_id integer NOT NULL,
    metric_id integer NOT NULL,
    CONSTRAINT sport_metric_metric FOREIGN KEY (metric_id)
    REFERENCES metric (id),
    CONSTRAINT sport_metric_sport FOREIGN KEY (sport_id)
    REFERENCES sport (id)
);

-- Table: sportmen_metric
CREATE TABLE sportmen_metric (
    sportsmen_id integer NOT NULL,
    metric_id integer NOT NULL,
    CONSTRAINT sportmen_metric_sportsmen FOREIGN KEY (sportsmen_id)
    REFERENCES sportsmen (id),
    CONSTRAINT sportmen_metric_metric FOREIGN KEY (metric_id)
    REFERENCES metric (id)
);

-- Table: sportsmen
CREATE TABLE sportsmen (
    id integer NOT NULL CONSTRAINT sportsmen_pk PRIMARY KEY,
    name varchar(64) NOT NULL,
    nationality varchar(64) NOT NULL,
    birth_year numeric NOT NULL,
    gender varchar(1) NOT NULL
);

-- Table: user
CREATE TABLE user (
    id integer NOT NULL CONSTRAINT user_pk PRIMARY KEY,
    username varchar(64) NOT NULL,
    passwd_hash varchar(64) NOT NULL,
    first_name varchar(64) NOT NULL,
    last_name varchar(64) NOT NULL,
    email varchar(128) NOT NULL,
    role_id integer NOT NULL,
    CONSTRAINT user_role FOREIGN KEY (role_id)
    REFERENCES role (id)
);

INSERT INTO role (id, name) VALUES (1, 'admin');
INSERT INTO role (id, name) VALUES (2, 'user');

INSERT INTO user (username, passwd_hash, first_name, last_name, email, role_id) VALUES ('Nat','2e8c0277e396fabf683e56c8b7fa7e6dad68c679','Nathan','Arpin','arpinnathan@gmail.com',1);
INSERT INTO user (username, passwd_hash, first_name, last_name, email, role_id) VALUES ('nicky','2e8c0277e396fabf683e56c8b7fa7e6dad68c679','Annick','Melse','annick.melse@gmail.com',1);

INSERT INTO sport (name, description) VALUES ('snowboard', 'sport that involves descending a snow-covered slope while standing on a snowboard attached to a riders feet');
INSERT INTO sport (name, description) VALUES ('ice hockey', 'contact team sport played on ice, in which two teams of skaters use their sticks to shoot a puck into their opponents goal to score points'); 
INSERT INTO sport (name, description) VALUES (
INSERT INTO sport (name, description) VALUES (
INSERT INTO sport (name, description) VALUES (
INSERT INTO sport (name, description) VALUES (
INSERT INTO sport (name, description) VALUES (
INSERT INTO sport (name, description) VALUES (
INSERT INTO sport (name, description) VALUES (




















