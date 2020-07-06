CREATE TABLE `chats` (
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `message` varchar(1000) NOT NULL,
      `filename` varchar(100),
      `chatroom_id` int(11) NOT NULL REFERENCES chatrooms(id),
      `is_deleted` tinyint(1) DEFAULT 0 NOT NULL,
      `created_at` datetime NOT NULL,
      `created_by` int(11) NOT NULL REFERENCES users(id),
      `updated_at` datetime NOT NULL,
      `updated_by` int (11) NOT NULL REFERENCES users(id),

      PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE `chatrooms` (
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `chatroom_name` varchar(100) NOT NULL,
      `description` varchar(1000),
      `is_file_sendable` tinyint(1) DEFAULT 1 NOT NULL,
      `is_direct_chat` tinyint(1) DEFAULT 0 NOT NULL,
      `is_deleted` tinyint(1) DEFAULT 0 NOT NULL,
      `created_at` datetime NOT NULL,
      `created_by` int(11) NOT NULL REFERENCES users(id),
      `updated_at` datetime NOT NULL,
      `updated_by` int(11) NOT NULL REFERENCES users(id),

      PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE `chatrooms_users` (
      `user_id` int(11) NOT NULL REFERENCES users(id),
      `chatroom_id` int(11) NOT NULL REFERENCES chatrooms(id),
      `join_at` datetime NOT NULL,
      PRIMARY KEY (`user_id`,`chatroom_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE `users` (
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `name` varchar(100) NOT NULL,
      `email` varchar(100) NOT NULL,
      `password` varchar(100)  NOT NULL,
      `profile` varchar(100),
      `cellphone_number` varchar(13),
      `office_telephone_number` varchar(13),
      `is_deleted` tinyint(1) DEFAULT 0 NOT NULL,
      `created_at` datetime NOT NULL,
      `updated_at` datetime NOT NULL,

      PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE `tasks` (
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `task_name` varchar(1000) NOT NULL,
      `deadline` datetime,
      `is_done` tinyint(1) DEFAULT 0 NOT NULL,
      `is_deleted` tinyint(1) DEFAULT 0 NOT NULL,
      `task_manager_id` int(11)  NOT NULL REFERENCES users(id),
      `chatroom_id` int(11)  NOT NULL REFERENCES chatrooms(id),
      `created_at` datetime NOT NULL,
      `created_by` int(11) NOT NULL REFERENCES users(id),
      `updated_at` datetime NOT NULL,
      `updated_by` int(11) NOT NULL REFERENCES users(id),

      PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;



