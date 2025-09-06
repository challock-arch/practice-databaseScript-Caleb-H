start transaction;

drop table if exists inventory, media_type, department;

create table media_type (
	id int not null primary key auto_increment,
    category varchar(50) not null
);

create table department (
	id int not null primary key auto_increment,
    subjects varchar(50) not null
);

create table inventory (
	id int not null primary key auto_increment,
    title varchar(50),
    media_type_id int not null references media_type(id),
    department_id int not null references department(id),
    isAvailable boolean default 1
);

insert into department (subjects) values
('Biology');
('Chemistry'),
('Physics'),
('Mathematics'),
('Computer Science'),
('Electrical Engineering'),
('Mechanical Engineering'),
('Civil Engineering'),
('Economics'),
('Psychology'),
('Sociology'),
('Political Science'),
('Philosophy'),
('History'),
('English'),
('Linguistics'),
('Art History'),
('Music'),
('Business Administration'),
('Education'),
('Law'),
('Medicine'),
('Nursing'),
('Environmental Science'),
('Anthropology');

insert into media_type (category) values
('Book'),
('Magazine'),
('Newspaper'),
('Journal'),
('eBook'),
('Audio Book'),
('Film'),
('Television Show'),
('Radio Program'),
('Podcast'),
('Video Game'),
('Music Album'),
('Single'),
('Photograph'),
('Painting'),
('Sculpture'),
('Website'),
('Blog Post'),
('Social Media Post'),
('Newsletter'),
('Documentary'),
('Short Film'),
('Comic Book'),
('Graphic Novel'),
('Interactive Media');

insert into inventory (title) values
("To Kill a Mockingbird"),
("A Brief History of Time"),
("National Geographic: Ocean Wonders"),
("The Great Gatsby (Audiobook)"),
("World War II Documentary"),
("Python Programming for Beginners"),
("The New York Times (Daily Issue)"),
("Van Gogh: Painted With Words"),
("Beethoven's Symphony No. 9"),
("How to Cook Everything")
;

rollback;
-- commit