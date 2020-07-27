CREATE DATABASE IF NOT EXISTS sistema_tareas;
USE sistema_tareas;

CREATE TABLE IF NOT EXISTS users(
    id int not null auto_increment,
    role varchar(50) not null,
    name varchar(100) not null,
    surname varchar(200) not null,
    email varchar(255) not null,
    password varchar(255) not null,
    created_at datetime,
    CONSTRAINT pk_users PRIMARY KEY(id)
)ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS tasks(
    id int not null auto_increment,
    user_id int not null,
    title varchar(255),
    content text,
    priority varchar(255),
    hours int(100),
    created_at datetime,
    CONSTRAINT pk_tasks PRIMARY KEY(id),
    CONSTRAINT fk_task_user FOREIGN KEY (user_id) REFERENCES users(id)
)ENGINE=InnoDb;