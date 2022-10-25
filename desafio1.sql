-- Active: 1666720144667@@127.0.0.1@3307
DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.plans(
      "plan_id" INT PRIMARY KEY AUTO_INCREMENT,
      "name" VARCHAR(45) NOT NULL,
      "price" DECIMAL NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.users(
      "user_id" INT PRIMARY KEY AUTO_INCREMENT,
      "name" VARCHAR(45) NOT NULL,
      "age" INT,
      "plan" INT,
      "signature_date" DATE NOT NULL,
      FOREIGN KEY (plan) REFERENCES SpotifyClone.plans (plan_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.artists(
    "artist_id" INT PRIMARY KEY AUTO_INCREMENT,
    "name" VARCHAR(45) NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.albums(
      "album_id" INT PRIMARY KEY AUTO_INCREMENT,
      "name" VARCHAR(45) NOT NULL,
      "artist" INT,
      "year_release" DATE NOT NULL,
      FOREIGN KEY (artist) REFERENCES SpotifyClone.artists (artist_id)
    ) engine = InnoDB;

    CREATE TABLE SpotifyClone.songs(
      "song_id" INT PRIMARY KEY AUTO_INCREMENT,
      "name" VARCHAR(45) NOT NULL,
      "album" INT,
      "duration" INT,
      FOREIGN KEY (album) REFERENCES SpotifyClone.albums (album_id)
    ) engine = InnoDB;

  CREATE TABLE SpotifyClone.reproduction_history(
      "user" INT,
      "songs" INT,
      CONSTRAINT PRIMARY KEY (user, songs),
      FOREIGN KEY (user) REFERENCES SpotifyClone.users (user_id),
      FOREIGN KEY (songs) REFERENCES SpotifyClone.songs (song_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.following_artists(
      "user" INT,
      "artists" INT,
      CONSTRAINT PRIMARY KEY (user, artists),
      FOREIGN KEY (user) REFERENCES SpotifyClone.users (user_id),
      FOREIGN KEY (artists) REFERENCES SpotifyClone.artists (artist_id)
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.plans (plan_id, name, price)
  VALUES
    (1, 'gratuito', 0.00),
    (2, 'universitário', 5.99),
    (3, 'pessoal', 6.99),
    (4, 'familiar', 7.99);

  INSERT INTO SpotifyClone.users (user_id, name, age, plan, signature_date)
  VALUES
    (1, 'Barbara Liskov', 82, 'gratuito', '2019-10-20'),
    (2, 'Robert Cecil Martin', 58, 'gratuito', '2017-01-06'),
    (3, 'Ada Lovelace', 37, 'familiar', '2017-12-30'),
    (4, 'Martin Fowler', 46, 'familiar', '2017-01-17'),
    (5, 'Sandi Metz', 58, 'familiar', '2018-04-29'),
    (6, 'Paulo Freire', 19, 'universitário', '2018-02-14'),
    (7, 'Bell Hooks', 26, 'universitário', '2018-01-05'),
    (8, 'Christopher Alexander', 85, 'pessoal', '2019-06-05'),
    (9, 'Judith Butler', 45, 'pessoal', '2020-05-13'),
    (10, 'Jorge Amado', 58, 'pessoal', '2017-02-17');

  INSERT INTO SpotifyClone.artists (artist_id, name)
  VALUES
  (1, ),
  (1, );