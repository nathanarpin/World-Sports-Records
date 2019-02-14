CREATE TABLE user
(
	username VARCHAR(64) NOT NULL,
	passwd_hash VARCHAR(64) NOT NULL,
	first_name VARCHAR(64) DEFAULT NULL,
	last_name VARCHAR(64) DEFAULT NULL,
	email VARCHAR(128) DeFAULT NULL
); 

INSERT INTO user (username, passwd_hash, first_name, last_name, email) VALUES ('Nat','2e8c0277e396fabf683e56c8b7fa7e6dad68c679','Nathan','Arpin','arpinnathan@gmail.com');
INSERT INTO user (username, passwd_hash, first_name, last_name, email) VALUES ('nicky','2e8c0277e396fabf683e56c8b7fa7e6dad68c679','Annick','Melse','annick.melse@gmail.com');