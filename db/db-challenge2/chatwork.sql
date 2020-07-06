CREATE TABLE `chats` (
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `message` varchar(1000) NOT NULL,
      `filename` varchar(100),
      `chatroom_id` int(11) NOT NULL REFERENCES chatrooms(ID),
      `is_deleted` tinyint DEFAULT 0 NOT NULL,
      `created_at` datetime NOT NULL,
      `created_by` int(11) NOT NULL,
      `updated_at` datetime NOT NULL,
      `updated_by` int (11) NOT NULL,

      PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE `chatrooms` (
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `chatroom_name` varchar(100) NOT NULL,
      `description` varchar(1000),
      `file_permission` tinyint DEFAULT 0 NOT NULL,
      `is_directed` tinyint DEFAULT 0 NOT NULL,
      `is_deleted` tinyint DEFAULT 0 NOT NULL,
      `created_at` datetime NOT NULL,
      `created_by` int(11) NOT NULL,
      `updated_at` datetime NOT NULL,
      `updated_by` int(11) NOT NULL,

      PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE `chatrooms_users` (
      `user_id` int(11) NOT NULL REFERENCES users(ID),
      `chatroom_id` int(11) NOT NULL REFERENCES chatrooms(ID),
      `join_at` datetime NOT NULL,
      PRIMARY KEY (`user_id`,`chatroom_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE `users` (
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `name` varchar(100) NOT NULL,
      `email` varchar(100) NOT NULL,
      `password` varchar(100)  NOT NULL,
      `profile` varchar(100),
      `cellphone_number` int(13),
      `office_telephonenumber` int(13),
      `is_deleted` tinyint DEFAULT 0 NOT NULL,
      `created_at` tinyint NOT NULL,
      `updated_at` tinyint NOT NULL,

      PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE `tasks` (
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `task_name` varchar(1000) NOT NULL,
      `deadline` datetime,
      `is_done` tinyint DEFAULT 0 NOT NULL,
      `is_deleted` tinyint DEFAULT 0 NOT NULL,
      `owner_id` int(11)  NOT NULL REFERENCES users(ID),
      `chatroom_id` int(11)  NOT NULL REFERENCES chatrooms(ID),
      `created_at` datetime NOT NULL,
      `created_by` int(11) NOT NULL,
      `updated_at` datetime NOT NULL,
      `updated_by` int(11) NOT NULL,

      PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;



