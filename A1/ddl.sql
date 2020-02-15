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
  CONSTRAINT `player_to_hp` FOREIGN KEY (`hp_id`) REFERENCES `hockey_person` (`hp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
