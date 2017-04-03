
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

INSERT INTO `i18n_translation` (`ukey`, `language`, `translation`) VALUES
('404_headline', 'de', 'Seite leider nicht gefunden'),
('404_headline', 'en', 'Page not found'),
('404_text', 'de', 'Diese Seite konnte leider nicht gefunden werden'),
('404_text', 'en', 'maybe a typo?'),
('about', 'de', 'About'),
('about', 'en', 'About'),
('about', 'fr', 'About'),
('about', 'zh', '关于'),
('admin', 'de', 'Admin'),
('admin', 'en', 'Admin'),
('admin', 'fr', 'Admin'),
('admin', 'zh', '管理'),
('admin_index_headline', 'de', 'Willkommen'),
('admin_index_headline', 'en', 'Welcome to this site'),
('admin_info_headline', 'de', 'Admin Informationen'),
('admin_info_headline', 'en', 'Admin infos here ...'),
('admin_translation_key', 'de', 'variable'),
('admin_translation_key', 'en', 'Original'),
('admin_translation_key', 'fr', 'Original'),
('admin_translation_key', 'zh', '原文'),
('admin_translation_line', 'de', 'line'),
('admin_translation_line', 'en', 'Line'),
('admin_translation_line', 'fr', 'Line'),
('admin_translation_line', 'zh', '线'),
('admin_translation_value', 'de', 'translation'),
('admin_translation_value', 'en', 'Translation'),
('admin_translation_value', 'fr', 'Translation'),
('admin_translation_value', 'zh', '翻译'),
('footer_admin', 'de', 'Admin'),
('footer_admin', 'en', 'Admin'),
('footer_contact', 'de', 'Kontakt'),
('footer_contact', 'en', 'Contact'),
('footer_imprint', 'de', 'Impressum'),
('footer_imprint', 'en', 'Imprint'),
('footer_privacy', 'de', 'Privacy'),
('footer_privacy', 'en', 'Pricacy'),
('footer_terms', 'de', 'AGB'),
('footer_terms', 'en', 'Terms'),
('headline', 'en', 'Welcome to this pedetes page'),
('help', 'de', 'Hilfe'),
('help', 'en', 'Help'),
('help', 'fr', 'Help'),
('help', 'zh', '帮助'),
('home', 'de', 'Home'),
('home', 'en', 'Home'),
('home', 'fr', 'Home'),
('home', 'zh', '开始'),
('i18n_clean', 'de', 'Aufräumen'),
('i18n_clean', 'en', 'Clean'),
('i18n_clean', 'zh', '清理'),
('i18n_publish', 'de', 'Veröffentlichen'),
('i18n_publish', 'en', 'Publish '),
('i18n_publish', 'zh', '发布'),
('i18n_search_new', 'de', 'Suchen'),
('i18n_search_new', 'en', 'Search'),
('i18n_search_new', 'zh', '搜索新'),
('i18n_show_entries', 'de', 'Anzeigen'),
('i18n_show_entries', 'en', 'Show'),
('i18n_show_entries', 'zh', '显示项目'),
('languages', 'de', 'Sprache'),
('languages', 'en', 'Languages'),
('languages', 'fr', 'Langues'),
('languages', 'zh', '语言'),
('login_forgot', 'en', 'Forgot'),
('login_headline', 'en', 'Login'),
('login_register', 'en', 'Register'),
('paragraph', 'en', 'Here is no content, please fill in something in the translations section'),
('settings', 'de', 'Einstellungen'),
('settings', 'en', 'Settings'),
('settings', 'fr', 'Paramètres'),
('settings', 'zh', '设置'),
('translations', 'de', 'Übersetzungen'),
('translations', 'en', 'Translations'),
('translations', 'fr', 'Traductions'),
('translations', 'zh', '翻译'),
('user', 'de', 'Benutzer'),
('user', 'en', 'User'),
('user', 'fr', 'Utilisateur'),
('user', 'zh', '用户');
