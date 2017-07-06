REPLACE INTO `command` (`name`, `permission`, `help`) VALUES
('server idleshutdown', 723, 'Syntax: .server idleshutdown #delay [#exit_code] [reason]\n\nShut the server down after #delay seconds if no active connections are present (no players). Use #exit_code or 0 as program exist code.'),
('server idleshutdown cancel', 724, 'Syntax: .server idleshutdown cancel\r\n\r\nCancel the restart/shutdown timer if any.'),
('server shutdown', 734, 'Syntax: .server shutdown #delay [#exit_code] [reason]\n\nShut the server down after #delay seconds. Use #exit_code or 0 as program exit code.'),
('server shutdown cancel', 735, 'Syntax: .server shutdown cancel\r\n\r\nCancel the restart/shutdown timer if any.');
