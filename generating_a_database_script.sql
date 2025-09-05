start transaction;

drop table if exists movies, director, genres;

create table genres (
genre_id int not null primary key auto_increment,
title varchar(30)
);

create table director (
director_id int not null primary key auto_increment,
first_name varchar(45),
last_name varchar(45)
);

create table movies(
movie_id int not null primary key auto_increment,
movie_title varchar(50),
duration_in_minutes int,
year_released int,
genre int references genre(genre_id),
director varchar(50) references director(director_id)
);

insert into genres (title) values ('Action');
insert into genres (title) values ('Horror');
insert into genres (title) values ('Romantic Comedy');
insert into genres (title) values ('Sci-Fi');
insert into genres (title) values ('Noire');
insert into genres (title) values ('True Crime');
insert into genres (title) values ('Thriller');

insert into director (first_name, last_name) values ('Steven', 'Spielberg'),
('Tim', 'Burton'),
('Martin', 'Scorsese'),
('Christopher', 'Nolan'),
('Quentin', 'Tarantino'),
('James', 'Cameron'),
('Greta', 'Gerwig'),
('Alfred', 'Hitchcock'),
('Kathryn', 'Bigelow'),
('Stanley', 'Kubrick'),
('Guillermo', 'del Toro'),
('Sofia', 'Coppola'),
('Jordan', 'Peele'),
('Wes', 'Anderson'),
('Denis', 'Villeneuve'),
('Ridley', 'Scott');

rollback;