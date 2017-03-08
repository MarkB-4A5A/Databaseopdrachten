create if not exists database `artists`;

use `artists`;

create table `artist` (
 id INT auto_increment primary key,
    fistname varchar(20) not null,
    lastname varchar(50) not null
);

insert into `artist` (
 fistname, lastname
    ) VALUES (
  'Tupac','Shakur'
    ),(
  'Christopher','Wallace'
    ),(
  'Andre','Young'
    );

create table `album` (
 id INT auto_increment primary key,
    artist_id int not null,
    fullname varchar(100) not null,
    release_date date not null
);

insert into `album` (
 artist_id, fullname, release_date
    ) VALUES (
  2,'Albumname', now()
    ),(
  1,'Albumname', now()
    ),(
  4,'Albumname', now()
    );

create table `label` (
 id INT auto_increment primary key,
    artist_id int not null,
    fullname varchar(100) not null
);

insert into `label` (
 artist_id, fullname
    ) VALUES (
  1,'Labelnaam'
    ),(
  2,'Labelnaam'
    ),(
  3,'Labelnaam'
    );

create table `studio` (
 id INT auto_increment primary key,
    artist_id int not null
);

insert into `studio` (
 artist_id
    ) VALUES (
  2
    ),(
  1
    ),(
  4
    ),(
  3
    );