create database if not exists blog;
use blog;
drop table if exists user;
CREATE TABLE user (
	id int(11) NOT NULL AUTO_INCREMENT,
	name varchar(64) NOT NULL,
	email varchar(64) DEFAULT NULL unique,
	password varchar(64) DEFAULT NULL,
    gender varchar(64) DEFAULT NULL,
	about varchar(500) DEFAULT NULL,
    pPic varchar(100) DEFAULT 'default.png',
    
    rdate DATETIME NOT NULL
                DEFAULT CURRENT_TIMESTAMP,
	
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
ALTER TABLE user
ADD  rdate DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP;
select * from user;
DELETE FROM user WHERE id=2;

ALTER TABLE user CHANGE pPic profile varchar(100) DEFAULT 'default.png';

