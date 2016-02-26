use dbispconfig;
UPDATE sys_user SET passwort = md5('admin') WHERE username = 'admin';
