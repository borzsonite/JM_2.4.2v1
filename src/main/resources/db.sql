CREATE TABLE `springsecurity`.`roles` (
  `id` bigint NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE `springsecurity`.`users` (
  `id` bigint NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(150) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE `springsecurity`.`users_roles` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  KEY `user_id_idx` (`user_id`),
  KEY `role_id_idx` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `springsecurity`.`roles`
(`id`, `name`) VALUES (1, 2);

INSERT INTO `springsecurity`.`users`
(`id`, `username`,`password`,`email`) VALUES ('1', 'user', '$2y$12$zxZpZUhYJgw1lGZg4cSL1ejcxJ4De2njFyy/DDblUucDxLLVWtqP2', 'user@mail.ru');

INSERT INTO `springsecurity`.`users_roles` (`user_id`,`role_id`) VALUES ('1', '2');