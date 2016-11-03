
DROP TABLE IF EXISTS `i18n`;
CREATE TABLE IF NOT EXISTS `i18n` (
  `ukey` varchar(128) NOT NULL,
  `file` varchar(128) NOT NULL,
  `line` int(11) NOT NULL,
  UNIQUE KEY `unique_key` (`ukey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `i18n_translation`;
CREATE TABLE IF NOT EXISTS `i18n_translation` (
  `ukey` varchar(128) NOT NULL,
  `language` varchar(2) NOT NULL,
  `translation` text NOT NULL,
  UNIQUE KEY `key` (`ukey`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `language` varchar(2) NOT NULL,
  `name` varchar(64) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`language`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `languages_translation`;
CREATE TABLE IF NOT EXISTS `languages_translation` (
  `language` varchar(2) NOT NULL,
  `translation` varchar(2) NOT NULL,
  `name` varchar(64) NOT NULL,
  `native` varchar(64) DEFAULT NULL,
  UNIQUE KEY `unique_selector` (`language`,`translation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT '1',
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `reg` varchar(16) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reg` (`reg`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

INSERT INTO `languages` (`language`, `name`, `enabled`) VALUES
('de', 'German', 1),
('en', 'English', 1),
('fr', 'French', 1),
('zh', 'Chinese', 1);

INSERT INTO `languages_translation` (`language`, `translation`, `name`, `native`) VALUES
('de', 'de', 'Deutsch', 'Deutsch'),
('de', 'en', 'English', 'Englisch'),
('de', 'fr', 'Français', 'Französisch'),
('de', 'zh', '中文', 'Chinesisch'),
('en', 'de', 'Deutsch', 'German'),
('en', 'en', 'English', 'English'),
('en', 'fr', 'Français', 'French'),
('en', 'zh', '中文', 'Chinese'),
('fr', 'de', 'Deutsch', 'Allemand'),
('fr', 'en', 'Englisch', 'Anglais'),
('fr', 'fr', 'Français', 'Français'),
('fr', 'zh', '中文', 'Chinois'),
('zh', 'de', 'Deutsch', '德语'),
('zh', 'en', 'English', '英语'),
('zh', 'fr', 'Français', '法国'),
('zh', 'zh', '中文', '中文');