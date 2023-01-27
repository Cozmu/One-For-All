-- Active: 1674757442069@@127.0.0.1@3307
DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.plans(
  `id` INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  `types` VARCHAR(20) NOT NULL,
  plan_value DECIMAL(3, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.artists(
  `id` INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  artists_name VARCHAR(60) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.albums(
  `id` INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  albums_name VARCHAR(100) NOT NULL,
  artist_id INT NOT NULL,
  release_date INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artists(`id`)
) engine = InnoDB;

CREATE TABLE SpotifyClone.songs(
  `id` INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  album_id INT NOT NULL,
  songs_name VARCHAR(100) NOT NULL,
  duration INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES albums(`id`)
) engine = InnoDB;

CREATE TABLE SpotifyClone.users(
  `id` INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  `names` VARCHAR(60) NOT NULL,
  age INT NOT NULL,
  plans_id INT NOT NULL,
  signature_date DATE NOT NULL,
  FOREIGN KEY (plans_id) REFERENCES `plans`(`id`)
) engine = InnoDB;

CREATE TABLE SpotifyClone.playback_history(
  user_id INT,
  name_songs_played_id INT,
  reproduction_date DATETIME NOT NULL,
  CONSTRAINT PRIMARY KEY(user_id, name_songs_played_id),
  FOREIGN KEY (user_id) REFERENCES users(`id`),
  FOREIGN KEY (name_songs_played_id) REFERENCES songs(`id`)
) engine = InnoDB;

CREATE TABLE SpotifyClone.following(
  `id` INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  user_id INT NOT NULL,
  artist_id INT,
  FOREIGN KEY (user_id) REFERENCES users(`id`),
  FOREIGN KEY (artist_id) REFERENCES artists(`id`)
) engine = InnoDB;

INSERT INTO `SpotifyClone`.plans(`types`, plan_value) 
VALUES
  ('gratuito', '0.00'),
  ('familiar','7.99'),
  ('pessoal', '6.99'),
  ('universitário', '5.99');

INSERT INTO `SpotifyClone`.artists(artists_name) 
VALUES
  ('Beyoncé'),
  ('Queen'),
  ('Elis Reqina'),
  ('Baco Exu do Blues'),
  ('Blind Guardian'),
  ('Nina Simone');

INSERT INTO `SpotifyClone`.albums(albums_name, artist_id, release_date) 
VALUES
  ('Renaissance', 1, 2022),
  ('Jazz', 2, 1978),
  ('Hot Space', 2, 1982),
  ('Falso Brilhante', 3, 1998),
  ('Vento de Maio', 3, 2001),
  ('QVVJFA', 4, 2003),
  ('Somewhere Far Bevond', 5, 2007),
  ('I Put A Spell On You', 6, 2012);

INSERT INTO `SpotifyClone`.songs(album_id, songs_name, duration)
VALUES
  (1, 'BREAK MY SOUL', 279),
  (1, "VIRGO’S GROOVE", 369),
  (1, 'ALIEN SUPERSTAR', 116),
  (2, "Don’t Stop Me Now", 203),
  (3, 'Under Pressure', 152),
  (4, 'Como Nossos Pais', 105),
  (5, 'O Medo de Amar é o Medo de Ser Livre', 207),
  (6, 'Samba em Paris', 267),
  (7, "The Bard’s Song", 244),
  (8, 'Feeling Good', 100);

INSERT INTO SpotifyClone.users(`names`, age, plans_id, signature_date)
VALUES
  ('Barbara Liskov', 82, 1, '2019-10-20'),
  ('Robert Cecil Martin', 58, 1, '2017-01-06'),
  ('Ada Lovelace', 37, 2, '2017-12-30'),
  ('Martin Fowler', 46, 2, '2017-01-17'),
  ('Sandi Metz', 58, 2, '2018-04-29'),
  ('Paulo Freire', 19, 4, '2018-02-14'),
  ('Bell Hooks', 26, 4, '2018-01-05'),
  ('Christopher Alexander', 85, 3, '2019-06-05'),
  ('Judith Butler', 45, 3, '2020-05-13'),
  ('Jorge Amado', 58, 3, '2017-02-17');

INSERT INTO  SpotifyClone.playback_history(user_id, name_songs_played_id, reproduction_date)
VALUES
  (1, 8, '2022-02-28 10:45:55'),
  (1, 2, '2020-05-02 05:30:35'),
  (1, 10, '2020-03-06 11:22:33'),
  (2, 10, '2022-08-05 08:05:17'),
  (2, 7, '2020-01-02 07:40:33'),
  (3, 10, '2020-11-13 16:55:13'),
  (3, 2, '2020-12-05 18:38:30'),
  (4, 8, '2021-08-15 17:10:10'),
  (5, 8, '2022-01-09 01:44:33'),
  (5, 5, '2020-08-06 15:23:43'),
  (6, 7, '2017-01-24 00:31:17'),
  (6, 1, '2017-10-12 12:35:20'),
  (7, 4, '2011-12-15 22:30:49'),
  (8, 4, '2012-03-17 14:56:41'),
  (9, 10, '2022-02-24 21:14:22'),
  (10, 3, '2015-12-13 08:30:22');

INSERT INTO SpotifyClone.following(user_id, artist_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (4, 4),
  (5, 5),
  (5, 6),
  (6, NULL),
  (7, 6),
  (8, NULL),
  (9, 3),
  (10, NULL);

SELECT * FROM `SpotifyClone`.following;