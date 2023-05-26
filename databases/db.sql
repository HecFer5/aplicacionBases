CREATE DATABASE database_links; 

USE database_links;

-- TABLA DE USUARIOS
CREATE TABLE usuarios(
    id INT(11) NOT NULL,
    username VARCHAR(16) NOT NULL,
    password VARCHAR(60) NOT NULL,
    fullname VARCHAR(100) NOT NULL
);

ALTER TABLE usuarios
    ADD PRIMARY KEY  (id);

ALTER TABLE usuarios
    MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT =2;

DESCRIBE usuarios; 

// TABLA DE ENLACES
CREATE TABLE links(
    id INT(11) NOT NULL,
    title VARCHAR(150) NOT NULL,
    url VARCHAR(255) NOT NULL,
    descripcion TEXT,
    user_id INT(11),
    created_ad timestamp NOT NULL DEFAULT current_timestamp,  
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES usuarios(id) 
);

ALTER TABLE links
    ADD PRIMARY KEY  (id);

 ALTER TABLE links
    MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT =2;