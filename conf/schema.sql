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
    metric_id integer NOT NULL
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

INSERT INTO user (username, passwd_hash, first_name, last_name, email, role_id) VALUES ('Nat','2e8c0277e396fabf683e56c8b7fa7e6dad68c679','Nathan','Arpin','arpinnathan@gmail.com',1);
INSERT INTO user (username, passwd_hash, first_name, last_name, email, role_id) VALUES ('nicky','2e8c0277e396fabf683e56c8b7fa7e6dad68c679','Annick','Melse','annick.melse@gmail.com',1);

INSERT INTO sport (id, name, description) VALUES (1, 'snowboard', 'sport that involves descending a snow-covered slope while standing on a snowboard attached to a riders feet');
INSERT INTO sport (id, name, description) VALUES (2,'ice hockey', 'contact team sport played on ice, in which two teams of skaters use their sticks to shoot a puck into their opponents goal to score points');
INSERT INTO sport (id, name, description) VALUES (3,'football', 'team sport played with a ball between two teams of eleven players. It the worlds most popular sport.  The game is played on a pitch with a goal at each end. The object of the game is to score in the opposite goal');
INSERT INTO sport (id, name, description) VALUES (4,'rugby', 'contact team sport which is based on running with the ball in hand. It is a game between two teams of 15 players using an oval-shaped ball on a field with H-shaped goalposts at each end');
INSERT INTO sport (id, name, description) VALUES (5,'golf', 'club-and-ball sport in which players use various clubs to hit balls into a series of holes on a course in as few strokes as possible');
INSERT INTO sport (id, name, description) VALUES (6,'basketball', 'team sport in which two teams, most commonly of five players each, opposing one another on a court, with the primary objective of shooting a basketball through the defenders hoop,  while preventing the opposing team from shooting through their own hoop. A field goal is worth two points, unless made from behind the three-point line, when it is worth three');
INSERT INTO sport (id, name, description) VALUES (7,'tennis', 'racket sport that can be played individually against a single opponent (singles) or between two teams of two players each (doubles). Each player uses a tennis racket to strike a rubber ball over or around a net and into the opponents court');
INSERT INTO sport (id, name, description) VALUES (8,'athletics', 'collection of sporting events that involve competitive running, jumping, throwing, and walking. The most common types of athletics competitions are track and field, road running, cross country running, and race walking. ');
INSERT INTO sport (id, name, description) VALUES (9,'formula 1', 'highest class of single-seater auto racing');
INSERT INTO sport (id, name, description) VALUES (10,'ski', 'sport based on sliding down snow-covered slopes on skis with fixed-heel bindings');


INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (1,'Karine Ruby', 'France', '1978', 'F');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (2,'Mathieu Bozzetto', 'France', '1973', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (3,'Lindsey Jacobellis', 'USA', '1985', 'F');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (4,'Jasey Jay Anderson', 'Canada', '1975', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (5,'Daniela Meuli', 'Switzerland', '1981', 'F');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (6,'Pierre Vaultier', 'France', 1987, 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (7,'Marion Posch', 'Italy', '1972', 'F');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (8,'Maelle Ricker', 'Canada', '1978', 'F');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (9,'Benjamin Karl', 'Austria', '1985', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (10,'Andreas Prommegger', 'Austria', '1980', 'M');

INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (11,'Wayne Gretzky', 'Canadian', '1961', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (12,'Jaromir Jagr', 'Czech', '1972', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (13,'Mark Messier', 'Canadian', '1961', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (14,'Gordie Howe', 'Canada', '1928', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (15,'Ron Francis', 'Canada', '1963', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (16,'Marcel Dionne', 'Canada', '1951', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (17,'Steve Yzerman', 'Canada', '1965', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (18,'Mario Lemieux', 'Canada', '1965', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (19,'Joe Sakic', 'Canada', '1969', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (20,'Phil Esposito', 'Canada', '1942', 'M');

INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (21,'Josef Bican', 'Czech', '1913', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (22, 'Romario', 'Brazil', '1966', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (23,'Pelé', 'Brazil', '1940', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (24,'Ferenc Puskas', 'Hungary', '1927', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (25,'Gert Muller', 'Germany', '1945', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (26,'Cristiano Ronaldo', 'Portugal', '1985', 'M');

INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (31,'Dan Carter', 'New Zealand', '1982', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (32,'Jonny Wilkinson', 'United Kingdom', '1979', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (33,'Ronan OGara', 'Ireland', '1977', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (34,'Neil Jenkis', 'Wales', '1971', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (35,'Diego Domíngez', 'Italian-Argentinian', '1966', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (36, 'Andrew Mehrtens', 'New Zealand', '1973', 'M');

INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (41,'Jack Niklaus', 'USA', '1940', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (42,'Tiger Woods', 'USA', '1975', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (43,'Walter Hagen', 'USA', '1892', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (44,'Ben Hogan', 'USA', '1912', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (45,'Gary Player', 'South Africa', '1935', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (46,'Tom Watson', 'USA', '1949', 'M');

INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (51,'Kareem Abdul-Jabbar', 'USA', '1947', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (52,'Karl Malone', 'USA', '1963', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (53,'Kobe Bryant', 'USA', '1978', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (54,'Lebron James', 'USA', '1984', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (55,'Michael Jordan', 'USA', '1963', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (56,'Dirk Nowitzki', 'Germany', '1978', 'M');

INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (61,'Margaret Smith Court', 'Australia', '1942', 'F');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (62,'Serena Williams', 'USA', '1981', 'F');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (63,'Steffi Graf', 'Germany', '1969', 'F');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (64,'Roger Federer', 'Switzerland', '1981', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (65,'Helen Wills Moody', 'USA', '1905', 'F');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (66,'Martina Navrátilová', 'Czech Republic / USA', '1956', 'F');

INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (71,'Paavo Nurmi', 'Finland', '1897', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (72,'Carl Lewis', 'USA', '1961', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (73,'Allyson Felix', 'USA', '1985', 'F');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (74,'Merlene Ottey', 'Jamaica', '1972', 'F');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (75,'Ray Ewry', 'USA', '1873', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (76,'Usain Bolt', 'Jamaica', '1986', 'M');

INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (81, 'Michael Schumacher', 'Germany', '1969', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (82, 'Lewis Hamilton', 'United Kingdom', '1985', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (83, 'Sebastian Vettel', 'Germany', '1987', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (84,'Alain Prost', 'France', '1955', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (85,'Ayrton Senna', 'Brazil', '1960', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (86, 'Fernando Alonso', 'Spain', '1981', 'M');

INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (91, 'Ingemar Stenmark', 'Sweden', '1956', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (92, 'Lindsey Vonn', 'USA', '1984', 'F');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (93, 'Marcel Hirscher', 'Austria', '1989', 'M');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (94, 'Annemarie Moser-Pröll', 'Austria', '1953', 'F');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (95,'Mikaela Shiffrin', 'USA', '1995', 'F');
INSERT INTO sportman (id, name, nationality, birth_year, gender) VALUES (96,'Vreni Schneider', 'Switzerland', '1964', 'F');


INSERT INTO metric (id, name, description) VALUES (1, 'wins', 'number of wins in World Cup in career');
INSERT INTO metric (id, name, description) VALUES (2, 'wins', 'number of wins in World Cup in career');
INSERT INTO metric (id, name, description) VALUES (3, 'points', 'number of goals scored in career');
INSERT INTO metric (id, name, description) VALUES (4, 'points', 'number of points in career with his national team');
INSERT INTO metric (id, name, description) VALUES (5, 'titles', 'number of titles in Grand Slam tournaments');
INSERT INTO metric (id, name, description) VALUES (6, 'points', 'number of points in NBA in career');
INSERT INTO metric (id, name, description) VALUES (7, 'wins', 'number of wins in Grand Slam tournament / singles');
INSERT INTO metric (id, name, description) VALUES (8, 'medals', 'number of medals at Olympics') ;
INSERT INTO metric (id, name, description) VALUES (9, 'wins', 'number of wins in career');
INSERT INTO metric (id, name, description) VALUES (10, 'wins', 'number of wins in World Cup in career');


INSERT INTO sport_metric (sport_id, metric_id) VALUES (1, 1);
INSERT INTO sport_metric (sport_id, metric_id) VALUES (2, 2);
INSERT INTO sport_metric (sport_id, metric_id) VALUES (3, 3);
INSERT INTO sport_metric (sport_id, metric_id) VALUES (4, 4);
INSERT INTO sport_metric (sport_id, metric_id) VALUES (5, 5);
INSERT INTO sport_metric (sport_id, metric_id) VALUES (6, 6);
INSERT INTO sport_metric (sport_id, metric_id) VALUES (7, 7);
INSERT INTO sport_metric (sport_id, metric_id) VALUES (8, 8);
INSERT INTO sport_metric (sport_id, metric_id) VALUES (9, 9);

INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (1, 1, 67);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (2, 1, 35);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (3, 1, 29);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (4, 1, 28);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (5, 1, 22);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (6, 1, 22);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (7, 1, 16);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (8, 1, 16);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (9, 1, 16);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (10, 1, 16) ;

INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (11, 2, 2857);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (12, 2, 1921);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (13, 2, 1887);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (14, 2, 1850);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (15, 2, 1798);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (16, 2, 1771);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (17, 2, 1755);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (18, 2, 1723);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (19, 2, 1641);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (20, 2, 1590);

INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (21, 3, 805);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (22, 3, 772);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (23, 3, 767);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (24, 3, 746);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (25, 3, 735);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (26, 3, 686);

INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (31, 4, 1598);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (32, 4, 1179);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (33, 4, 1083);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (34, 4, 1049);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (35, 4, 1010);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (36, 4, 967);

INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (41, 5, 18);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (42, 5, 15);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (43, 5, 11);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (44, 5, 9);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (45, 5, 9);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (46, 5, 8);

INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (51, 6, 38387);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (52, 6, 36928);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (53, 6, 33643);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (54, 6, 32543);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (55, 6, 32292);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (56, 6, 31560);

INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (61, 7, 24);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (62, 7, 23);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (63, 7, 22);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (64, 7, 20);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (65, 7, 19);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (66, 7, 18);

-- 9 gold and 3 silver;
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (71, 8, 12);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (72, 8, 10);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (73, 8, 9);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (74, 8, 9);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (75, 8, 8);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (76, 8, 8);

INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (81, 9, 91);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (82, 9, 75);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (83, 9, 52);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (84, 9, 51);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (85, 9, 41);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (86, 9, 32);

INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (91, 10, 86);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (92, 10, 82);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (93, 10, 67);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (94, 10, 62);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (95, 10, 60);
INSERT INTO sportman_metric (sportman_id, metric_id, value) VALUES (96, 10, 55);

