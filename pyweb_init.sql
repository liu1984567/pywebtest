PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE oilingrecords(id char(50) PRIMARY KEY,
email char(50) not null,
passwd char(50) not null,
admin boolean not null,
name char(50) not null,
image char(500),
created_at datetime no null
);
CREATE TABLE users(id char(50) PRIMARY KEY,
email char(50) not null,
passwd char(50) not null,
admin boolean not null,
name char(50) not null,
image char(500),
created_at datetime no null
);
CREATE TABLE blogs(id char(50) PRIMARY KEY,
user_id char(50) not null,
user_name char(50) not null,
user_image char(500),
name char(50) not null,
content char(2048),
created_at datetime no null
);
CREATE TABLE comments(id char(50) PRIMARY KEY,
blog_id char(50) not null,
user_id char(50) not null,
user_name char(50) not null,
user_image char(500),
content char(2048) not null,
created_at datetime no null
);
COMMIT;
