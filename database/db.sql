CREATE DATABASE IF NOT EXISTS questions;
USE questions;
--Users table
CREATE TABLE users(
    id INT(11) NOT NULL AUTO_INCREMENT,
    firstName VARCHAR(60) NOT NULL,
    lastName VARCHAR(60) NOT NULL,
    typeOfAward VARCHAR(60) NOT NULL,
    created_at timestamp NOT NULL DEFAULT current_timestamp,
    PRIMARY KEY (id)
);
INSERT INTO users (id, firstName, lastName, typeOfAward) values (1, 'Ismael', 'Carvajal', 'Puntos');
--Questions table
CREATE TABLE questions(
	id INT(11) NOT NULL AUTO_INCREMENT,
    round VARCHAR(60) NOT NULL,
    category VARCHAR(60) NOT NULL,
    question VARCHAR(90) NOT NULL,
    answer VARCHAR(70) NOT NULL,
    incorrect1 VARCHAR(70) NOT NULL,
    incorrect2 VARCHAR(70) NOT NULL,
    incorrect3 VARCHAR(70) NOT NULL,
    image VARCHAR(90) NOT NULL,
    PRIMARY KEY(id),
    user_id INT(11),
    created_at timestamp NOT NULL DEFAULT current_timestamp,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id)
);
DESCRIBE questions;
DESCRIBE users;
INSERT INTO questions (id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image) values (1, 'Ronda 1', 'Computación', '¿Quién inventó el primer computador?', 'Charles Babbage', 'Albert Einstein', 'Alan Turing', 'Isaac Newton', 'https://i.ibb.co/PhFW70K/computador.jpg');
INSERT INTO questions (id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image) values (2, 'Ronda 2', 'Historia', '¿Qué famoso filósofo fue maestro de Alejandro Magno?', 'Aristóteles', 'Sócrates', 'Platón', 'Euclides', 'https://i.ibb.co/2KSVKdV/Arist-teles.jpg');
INSERT INTO questions (id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image) values (3, 'Ronda 3', 'Matemáticas', '¿Cuál es el número primo más pequeño?', '2', '1', '3', '5', 'https://i.ibb.co/FXBbTnx/Matem-ticas.jpg');
INSERT INTO questions (id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image) values (4, 'Ronda 4', 'Fisica', 'La física es una ciencia fundamental porque:', 'No necesita de otras ciencias naturales.', 'Necesita y se fundamenta en otras ciencias', 'Sus conceptos deben ser particulares', 'Ninguna respuesta es correcta', 'https://i.ibb.co/FXBbTnx/Matem-ticas.jpg');
INSERT INTO questions (id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image) values (5, 'Ronda 5', 'Quimica', '¿Cuál elemento pertene a la quimica orgánica?', 'carbono', 'oxido de cloro', 'oxido de boro', 'Dioxido de carbono', 'https://i.ibb.co/fCWG7CS/Quimica.jpg');
INSERT INTO questions (id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image) values (6, 'Ronda 1', 'Computación', 'La Web 2.0 es un elemento que permite: ', 'Concepto de tecnología que se fundamenta en crear y compartir recursos de diferente naturaleza', 'Herramienta para solo enviar correos electrónicos', 'Plataforma de alta tecnología de computo para compartir recursos en las redes basadas en Cisco', 'todas las anteriores', 'https://i.ibb.co/PhFW70K/computador.jpg');
INSERT INTO questions (id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image) values (7, 'Ronda 2', 'Historia', '¿Quién dibujó al famoso Hombre de Vitruvio?', 'Leonardo da Vinci', 'Miguel Angel', 'Rubens', 'Euclides', 'https://i.ibb.co/2KSVKdV/Arist-teles.jpg');
INSERT INTO questions (id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image) values (8, 'Ronda 3', 'Matemáticas', '¿A cuántas unidades equivale 10 decenas de millar?', '100.000 unidades', '10.000 unidades', '1.000 unidades', '100 unidades', 'https://i.ibb.co/FXBbTnx/Matem-ticas.jpg');
INSERT INTO questions (id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image) values (9, 'Ronda 4', 'Fisica', 'Un Amperio es una medida de: ', 'La corriente eléctrica', 'De la temperatura del fuego', 'De los protones', 'De la reactividad quimica', 'https://i.ibb.co/FXBbTnx/Matem-ticas.jpg');
INSERT INTO questions (id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image) values (10, 'Ronda 5', 'Quimica', 'Lo que diferencia a un proceso físico de uno químico es:', 'Que los compuestos que participaron son los mismos a finalizar el proceso.', 'El tipo de energía utilizada para que éste sea posible', 'Las fases en las que se encuentran los compuestos que intervienen', 'Las cantidades de materia que entran a combinarse', 'https://i.ibb.co/fCWG7CS/Quimica.jpg');
INSERT INTO questions (id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image) values (11, 'Ronda 1', 'Computación', '¿Quién inventó el primer computador?', 'Charles Babbage', 'Albert Einstein', 'Alan Turing', 'Isaac Newton', 'https://i.ibb.co/PhFW70K/computador.jpg');
INSERT INTO questions (id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image) values (12, 'Ronda 2', 'Historia', '¿Qué famoso filósofo fue maestro de Alejandro Magno?', 'Aristóteles', 'Sócrates', 'Platón', 'Euclides', 'https://i.ibb.co/2KSVKdV/Arist-teles.jpg');
INSERT INTO questions (id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image) values (13, 'Ronda 3', 'Matemáticas', '¿Cuál es el número primo más pequeño?', '2', '1', '3', '5', 'https://i.ibb.co/FXBbTnx/Matem-ticas.jpg');
INSERT INTO questions (id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image) values (14, 'Ronda 4', 'Fisica', 'La física es una ciencia fundamental porque:', 'No necesita de otras ciencias naturales.', 'Necesita y se fundamenta en otras ciencias', 'Sus conceptos deben ser particulares', 'Ninguna respuesta es correcta', 'https://i.ibb.co/FXBbTnx/Matem-ticas.jpg');
INSERT INTO questions (id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image) values (15, 'Ronda 5', 'Quimica', '¿Cuál elemento pertene a la quimica orgánica?', 'carbono', 'oxido de cloro', 'oxido de boro', 'Dioxido de carbono', 'https://i.ibb.co/fCWG7CS/Quimica.jpg');
INSERT INTO questions (id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image) values (16, 'Ronda 1', 'Computación', '¿Quién inventó el primer computador?', 'Charles Babbage', 'Albert Einstein', 'Alan Turing', 'Isaac Newton', 'https://i.ibb.co/PhFW70K/computador.jpg');
INSERT INTO questions (id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image) values (17, 'Ronda 2', 'Historia', '¿Qué famoso filósofo fue maestro de Alejandro Magno?', 'Aristóteles', 'Sócrates', 'Platón', 'Euclides', 'https://i.ibb.co/2KSVKdV/Arist-teles.jpg');
INSERT INTO questions (id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image) values (18, 'Ronda 3', 'Matemáticas', '¿Cuál es el número primo más pequeño?', '2', '1', '3', '5', 'https://i.ibb.co/FXBbTnx/Matem-ticas.jpg');
INSERT INTO questions (id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image) values (19, 'Ronda 4', 'Fisica', 'La física es una ciencia fundamental porque:', 'No necesita de otras ciencias naturales.', 'Necesita y se fundamenta en otras ciencias', 'Sus conceptos deben ser particulares', 'Ninguna respuesta es correcta', 'https://i.ibb.co/FXBbTnx/Matem-ticas.jpg');
INSERT INTO questions (id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image) values (20, 'Ronda 5', 'Quimica', '¿Cuál elemento pertene a la quimica orgánica?', 'carbono', 'oxido de cloro', 'oxido de boro', 'Dioxido de carbono', 'https://i.ibb.co/fCWG7CS/Quimica.jpg');
INSERT INTO questions (id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image) values (21, 'Ronda 1', 'Computación', '¿Quién inventó el primer computador?', 'Charles Babbage', 'Albert Einstein', 'Alan Turing', 'Isaac Newton', 'https://i.ibb.co/PhFW70K/computador.jpg');
INSERT INTO questions (id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image) values (22, 'Ronda 2', 'Historia', '¿Qué famoso filósofo fue maestro de Alejandro Magno?', 'Aristóteles', 'Sócrates', 'Platón', 'Euclides', 'https://i.ibb.co/2KSVKdV/Arist-teles.jpg');
INSERT INTO questions (id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image) values (23, 'Ronda 3', 'Matemáticas', '¿Cuál es el número primo más pequeño?', '2', '1', '3', '5', 'https://i.ibb.co/FXBbTnx/Matem-ticas.jpg');
INSERT INTO questions (id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image) values (24, 'Ronda 4', 'Fisica', 'La física es una ciencia fundamental porque:', 'No necesita de otras ciencias naturales.', 'Necesita y se fundamenta en otras ciencias', 'Sus conceptos deben ser particulares', 'Ninguna respuesta es correcta', 'https://i.ibb.co/FXBbTnx/Matem-ticas.jpg');
INSERT INTO questions (id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image) values (25, 'Ronda 5', 'Quimica', '¿Cuál elemento pertene a la quimica orgánica?', 'carbono', 'oxido de cloro', 'oxido de boro', 'Dioxido de carbono', 'https://i.ibb.co/fCWG7CS/Quimica.jpg');
SELECT * FROM questions;
SELECT * FROM users;