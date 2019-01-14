INSERT INTO `errorage_onehourgamejam`.`config` (`config_key`, `config_value`, `config_category`, `config_description`, `config_type`, `config_options`, `config_editable`, `config_required`, `config_added_to_dictionary`) VALUES ('JAM_DURATION', '60', 'JAM_SETTINGS', 'How many minutes do participants have to make their game?', 'NUMBER', '[]', '1', '1', '1');
INSERT INTO `errorage_onehourgamejam`.`config` (`config_key`, `config_value`, `config_category`, `config_description`, `config_type`, `config_options`, `config_editable`, `config_required`, `config_added_to_dictionary`) VALUES ('MINIMUM_PASSWORD_LENGTH', '8', 'SECURITY', 'Shortest password length', 'NUMBER', '[]', '0', '1', '1');
INSERT INTO `errorage_onehourgamejam`.`config` (`config_key`, `config_value`, `config_category`, `config_description`, `config_type`, `config_options`, `config_editable`, `config_required`, `config_added_to_dictionary`) VALUES ('MAXIMUM_PASSWORD_LENGTH', '128', 'SECURITY', 'Longest password length', 'NUMBER', '[]', '0', '1', '1');
INSERT INTO `errorage_onehourgamejam`.`config` (`config_key`, `config_value`, `config_category`, `config_description`, `config_type`, `config_options`, `config_editable`, `config_required`, `config_added_to_dictionary`) VALUES ('MINIMUM_PASSWORD_HASH_ITERATIONS', '10000', 'SECURITY', 'Minimum hash iterations for a user\'s password', 'NUMBER', '[]', '0', '1', '0');
INSERT INTO `errorage_onehourgamejam`.`config` (`config_key`, `config_value`, `config_category`, `config_description`, `config_type`, `config_options`, `config_editable`, `config_required`, `config_added_to_dictionary`) VALUES ('MAXIMUM_PASSWORD_HASH_ITERATIONS', '20000', 'SECURITY', 'Maximum hash iterations for a user\'s password', 'NUMBER', '[]', '0', '1', '0');
INSERT INTO `errorage_onehourgamejam`.`config` (`config_key`, `config_value`, `config_category`, `config_description`, `config_type`, `config_options`, `config_editable`, `config_required`, `config_added_to_dictionary`) VALUES ('MINIMUM_USERNAME_LENGTH', '2', 'USERS', 'Shortest username length', 'NUMBER', '[]', '0', '1', '1');
INSERT INTO `errorage_onehourgamejam`.`config` (`config_key`, `config_value`, `config_category`, `config_description`, `config_type`, `config_options`, `config_editable`, `config_required`, `config_added_to_dictionary`) VALUES ('MAXIMUM_USERNAME_LENGTH', '20', 'USERS', 'Longest username length', 'NUMBER', '[]', '0', '1', '1');
INSERT INTO `errorage_onehourgamejam`.`config` (`config_key`, `config_value`, `config_category`, `config_description`, `config_type`, `config_options`, `config_editable`, `config_required`, `config_added_to_dictionary`) VALUES ('DAYS_TO_KEEP_LOGGED_IN', '30', 'SECURITY', 'Number of dayts after the last visit that the user will be kept logged in', 'NUMBER', '[]', '1', '1', '1');
INSERT INTO `errorage_onehourgamejam`.`config` (`config_key`, `config_value`, `config_category`, `config_description`, `config_type`, `config_options`, `config_editable`, `config_required`, `config_added_to_dictionary`) VALUES ('MAX_COLORS_FOR_JAM', '16', 'NEW_JAM_DEFAULTS', 'Maximum number of colors that will be available for each jam', 'NUMBER', '[]', '1', '1', '1');
INSERT INTO `errorage_onehourgamejam`.`config` (`config_key`, `config_value`, `config_category`, `config_description`, `config_type`, `config_options`, `config_editable`, `config_required`, `config_added_to_dictionary`) VALUES ('MINIMUM_DISPLAY_NAME_LENGTH', '1', 'USERS', 'Shortest user display name', 'NUMBER', '[]', '1', '1', '1');
INSERT INTO `errorage_onehourgamejam`.`config` (`config_key`, `config_value`, `config_category`, `config_description`, `config_type`, `config_options`, `config_editable`, `config_required`, `config_added_to_dictionary`) VALUES ('MAXIMUM_DISPLAY_NAME_LENGTH', '50', 'USERS', 'Longestuser display name', 'NUMBER', '[]', '1', '1', '1');
INSERT INTO `errorage_onehourgamejam`.`config` (`config_key`, `config_value`, `config_category`, `config_description`, `config_type`, `config_options`, `config_editable`, `config_required`, `config_added_to_dictionary`) VALUES ('MAX_SCREENSHOT_FILE_SIZE_IN_BYTES', '5000000', 'JAM_SETTINGS', 'Maximum screenshot file size in bytes', 'NUMBER', '[]', '0', '1', '1');
INSERT INTO `errorage_onehourgamejam`.`config` (`config_key`, `config_value`, `config_category`, `config_description`, `config_type`, `config_options`, `config_editable`, `config_required`, `config_added_to_dictionary`) VALUES ('JAM_AUTO_SCHEDULER_MINUTES_BEFORE_JAM', '120', 'JAM_SETTINGS', 'How many minutes before the next jam should the jam autoscheduler schedule a jam?', 'NUMBER', '[]', '1', '1', '1');
INSERT INTO `errorage_onehourgamejam`.`config` (`config_key`, `config_value`, `config_category`, `config_description`, `config_type`, `config_options`, `config_editable`, `config_required`, `config_added_to_dictionary`) VALUES ('JAM_AUTO_SCHEDULER_ENABLED', '0', 'JAM_SETTINGS', 'Should the jam autoscheduler automatically schedule jams?', 'ENUM', '[{\"VALUE\":0,\"TEXT\":\"No\"},{\"VALUE\":1,\"TEXT\":\"Yes\"}]', '1', '1', '1');
