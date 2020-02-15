/* HOCKEY PERSON TABLE */
CREATE TABLE `hockey_person` (
  `hp_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `birthday` date DEFAULT NULL,
  PRIMARY KEY (`hp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

/* STAFF TABLE */
CREATE TABLE `staff` (
  `hp_id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL COMMENT 'there should be a check to ensure that end_date is later than start_date',
  PRIMARY KEY (`hp_id`),
  CONSTRAINT `staff_to_hp` FOREIGN KEY (`hp_id`) REFERENCES `hockey_person` (`hp_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

/* PLAYER TABLE */
CREATE TABLE `player` (
  `hp_id` int(11) NOT NULL,
  `position` enum('forward','defense','goalie') NOT NULL,
  `height_inches` int(11) DEFAULT NULL,
  `picture` longblob,
  PRIMARY KEY (`hp_id`),
  CONSTRAINT `player_to_hp` FOREIGN KEY (`hp_id`) REFERENCES `hockey_person` (`hp_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

/* TEAM TABLE */
CREATE TABLE `team` (
  `team_name` varchar(45) NOT NULL,
  `conference` enum('Western','Eastern') NOT NULL,
  `division` enum('Metropolitan','Atlantic','Central','Pacific') NOT NULL,
  PRIMARY KEY (`team_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

/* SEASON TABLE */
CREATE TABLE `season` (
  `season_year` char(7) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `salary_cap` decimal(11,2) DEFAULT NULL,
  `champion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`season_year`),
  KEY `season_to_winning_team_idx` (`champion`),
  CONSTRAINT `season_to_winning_team` FOREIGN KEY (`champion`) REFERENCES `team` (`team_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

/* ROSTER TABLE */
CREATE TABLE `player_roster` (
  `hp_id` int(11) NOT NULL,
  `season_year` char(7) NOT NULL,
  `team_name` varchar(45) NOT NULL,
  `player_salary` decimal(10,2) DEFAULT NULL,
  `jersey_number` int(2) NOT NULL,
  PRIMARY KEY (`hp_id`,`team_name`,`season_year`),
  KEY `roster_to_season_idx` (`season_year`),
  KEY `roster_to_team_idx` (`team_name`),
  CONSTRAINT `roster_to_player` FOREIGN KEY (`hp_id`) REFERENCES `player` (`hp_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `roster_to_season` FOREIGN KEY (`season_year`) REFERENCES `season` (`season_year`),
  CONSTRAINT `roster_to_team` FOREIGN KEY (`team_name`) REFERENCES `team` (`team_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci


/* PLAYER STATS TABLE*/
CREATE TABLE `player_stats` (
  `hp_id` int(11) NOT NULL,
  `season_year` char(7) NOT NULL,
  `games_played` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `ice_time` varchar(45) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `penalty_time` varchar(45) DEFAULT NULL,
  `team_name` varchar(45) NOT NULL,
  PRIMARY KEY (`hp_id`,`season_year`,`team_name`),
  CONSTRAINT `pstats_to_roster` FOREIGN KEY (`hp_id`, `season_year`, `team_name`) REFERENCES `player_roster` (`hp_id`, `season_year`, `team_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
