CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS POSTGIS;
CREATE EXTENSION IF NOT EXISTS POSTGIS_TOPOLOGY;

-- Tabela Country
CREATE TABLE public.country (
    country_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    country_name VARCHAR(50)
);

-- Tabela Strong_Foot
CREATE TABLE public.strong_foot (
    foot_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    foot_name VARCHAR(50)
);

-- Tabela Club
CREATE TABLE public.club (
    club_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    club_name VARCHAR(100)
);

-- Tabela Player
CREATE TABLE public.player (
    player_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    club_id INT,
    country_id INT,
    name VARCHAR(100),
    height INT,
    price VARCHAR(20),
    salary VARCHAR(20),
    foot_id INT,
    FOREIGN KEY (club_id) REFERENCES Club(club_id),
    FOREIGN KEY (country_id) REFERENCES Country(country_id),
    FOREIGN KEY (foot_id) REFERENCES Strong_Foot(foot_id)
);

-- Tabela Player_Stats
CREATE TABLE public.player_stats (
    player_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    overall INT,
    potential INT,
    offense VARCHAR(10),
    defense VARCHAR(10),
    crossing INT,
    finishing INT,
    heading INT,
    short_pass INT,
    volleys INT,
    dribble INT,
    curve INT,
    free_kick INT,
    long_pass INT,
    ball_control INT,
    acceleration INT,
    sprint INT,
    agility INT,
    reactions INT,
    balance INT,
    shot_power INT,
    jump INT,
    stamina INT,
    strength INT,
    long_shot INT,
    aggression INT,
    positioning INT,
    vision INT,
    penalty INT,
    composure INT,
    interception INT,
    defensive_awareness INT,
    stand_tackle INT,
    slide_tackle INT,
    diving INT,
    handling INT,
    gk_kick INT,
    gk_positioning INT,
    reflexes INT,
    FOREIGN KEY (player_id) REFERENCES Player(player_id)
);


/* Sample table and data that we can insert once the database is created for the first time */
CREATE TABLE public.teachers (
	name    VARCHAR (100),
	city    VARCHAR(100),
	created_on      TIMESTAMP NOT NULL DEFAULT NOW(),
	updated_on      TIMESTAMP NOT NULL DEFAULT NOW()
);

INSERT INTO teachers(name, city) VALUES('Luís Teófilo', 'Porto');
INSERT INTO teachers(name, city) VALUES('Ricardo Castro', 'Braga');

