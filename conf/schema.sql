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
    sport_id integer NOT NULL
);

-- Table: favorite_sportman
CREATE TABLE favorite_sportman (
    sportman_id integer NOT NULL,
    user_id integer NOT NULL
);

-- Table: metric
CREATE TABLE metric (
    id integer NOT NULL, 
    name varchar(64) NOT NULL,
    description varchar(255) NOT NULL
);

-- Table: role
CREATE TABLE role (
    id integer NOT NULL,
    name varchar(64) NOT NULL
);

-- Table: sport
CREATE TABLE sport (
    id integer NOT NULL,
    name varchar(64) NOT NULL,
    description text NOT NULL
);

-- Table: sport_metric
CREATE TABLE sport_metric (
    sport_id integer NOT NULL,
    metric_id integer NOT NULL,
    value numeric NOT NULL
);

-- Table: sportman_metric
CREATE TABLE sportman_metric (
    sportman_id integer NOT NULL,
    metric_id integer NOT NULL,
    value numeric NOT NULL
);

-- Table: sportman
CREATE TABLE sportman (
    id integer NOT NULL, 
    name varchar(64) NOT NULL,
    nationality varchar(64) NOT NULL,
    birth_year numeric NOT NULL,
    gender varchar(1) NOT NULL
);

-- Table: user
CREATE TABLE user (
    username varchar(64) NOT NULL,
    passwd_hash varchar(64) NOT NULL,
    first_name varchar(64) NOT NULL,
    last_name varchar(64) NOT NULL,
    email varchar(128) NOT NULL,
    role_id integer NOT NULL
);

INSERT INTO role (id, name) VALUES (1, 'admin');
INSERT INTO role (id, name) VALUES (2, 'user');

INSERT INTO user (username, pa, sswd_hash, first_name, last_name, email, role_id) VALUES ('Nat','2e8c0277e396fabf683e56c8b7fa7e6dad68c679','Nathan','Arpin','arpinnathan@gmail.com',1);
INSERT INTO user (username, passwd_hash, first_name, last_name, email, role_id) VALUES ('nicky','2e8c0277e396fabf683e56c8b7fa7e6dad68c679','Annick','Melse','annick.melse@gmail.com',1);

INSERT INTO sport (id, name, description) VALUES (1, 'snowboard', 'sport that involves descending a snow-covered slope while standing on a snowboard attached to a riders feet');
INSERT INTO sport (id, name, description) VALUES (2,'ice hockey', 'contact team sport played on ice, in which two teams of skaters use their sticks to shoot a puck into their opponents goal to score points');
INSERT INTO sport (id, name, description) VALUES (3,'football', 'team sport played with a ball between two teams of eleven players. It the worlds most popular sport.  The game is played on a pitch with a goal at each end. The object of the game is to score in the opposite goal');
INSERT INTO sport (id, name, description) VALUES (4,'basketball', 'team sport in which two teams, most commonly of five players each, opposing one another on a court, with the primary objective of shooting a basketball through the defenders hoop,  while preventing the opposing team from shooting through their own hoop. A field goal is worth two points, unless made from behind the three-point line, when it is worth three');
INSERT INTO sport (id, name, description) VALUES (5,'golf', 'club-and-ball sport in which players use various clubs to hit balls into a series of holes on a course in as few strokes as possible');
INSERT INTO sport (id, name, description) VALUES (6,'rugby', 'contact team sport which is based on running with the ball in hand. It is a game between two teams of 15 players using an oval-shaped ball on a field with H-shaped goalposts at each end');
INSERT INTO sport (id, name, description) VALUES (7,'ski', 'sport based on sliding down snow-covered slopes on skis with fixed-heel bindings');
INSERT INTO sport (id, name, description) VALUES (8,'sport of athletics', 'collection of sporting events that involve competitive running, jumping, throwing, and walking. The most common types of athletics competitions are track and field, road running, cross country running, and race walking. ');
INSERT INTO sport (id, name, description) VALUES (9,'tennis', 'racket sport that can be played individually against a single opponent (singles) or between two teams of two players each (doubles). Each player uses a tennis racket to strike a rubber ball over or around a net and into the opponents court');
INSERT INTO sport (id, name, description) VALUES (10,'formula 1', 'highest class of single-seater auto racing');


INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (11,'Karine Ruby', 'France', '1978', 'F')
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (12,'Mathieu Bozzetto', 'France', '1973', 'M')
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (13,'Lindsey Jacobellis', 'USA', '1985', 'F')
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (14,'Wayne Gretzky', 'Canadian', '1961', 'M')
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (15,'Jaromir Jagr', 'Czech', '1972', 'M')
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (16,'Mark Messier', 'Canadian', '1961', 'M')
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (17,'Josef Bican', 'Czech', '1913', 'M')
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (18, 'Romario', 'Brazil', '1966', 'M')
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (19,'Pelé', 'Brazil', '1940', 'M')
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (20,'Dan Carter', 'New Zealand', '1982', 'M')
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (21,'Jonny Wilkinson', 'United Kingdom', '1979', 'M')
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (22,'Ronan OGara', 'Ireland', '1977', 'M')
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (23,'Jack Niklaus', 'USA', '1940', 'M')
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (24,'Tiger Woods', 'USA', '1975', 'M')
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (25,'Walter Hagen', 'USA', '1892', 'M')
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (26,'Kareem Abdul-Jabbar', 'USA', '1947', 'M')
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (27,'Karl Malone', 'USA', '1963', 'M')
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (28,'Kobe Bryant', 'USA', '1978', 'M')
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (29,'Margaret Smith Court', 'Australia', '1942', 'F')
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (30,'Serena Williams', 'USA', '1981', 'F')
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (31,'Steffi Graf', 'Germany', '1969', 'F')
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (32,'Paavo Nurmi', 'Finland', '1897', 'M')
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (33,'Carl Lewis', 'USA', '1961', 'M')
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (34,'Allyson Felix', 'USA', '1985', 'F')







