--
-- Add roles tables, along with a user-to-roles many-to-many join table
--
drop table if exists ROLE     ;
drop table if exists USER_ROLE;

CREATE TABLE ROLE (
        id   INTEGER PRIMARY KEY,
        role TEXT
);
CREATE TABLE USER_ROLE (
        user_id INT(11),
        role_id INT(11),
        PRIMARY KEY (user_id, role_id)
);
--
-- Load up some initial test data
--
INSERT INTO USER (USER_ID, USERNAME, PASSWORD, EMAIL,             FIRSTNAME, LASTNAME) 
       VALUES    (1,       'test01', 'mypass', 't01@example.com', 'Joe',     'Blow');
INSERT INTO USER (USER_ID, USERNAME, PASSWORD, EMAIL,             FIRSTNAME, LASTNAME) 
       VALUES    (2,       'test02', 'mypass', 't02@example.com', 'Jane',    'Doe');
INSERT INTO USER (USER_ID, USERNAME, PASSWORD, EMAIL,             FIRSTNAME, LASTNAME) 
       VALUES    (3,       'test03', 'mypass', 't03@example.com', 'No',      'Go');

INSERT INTO ROLE      (id, role)         VALUES (1, 'user');
INSERT INTO ROLE      (id, role)         VALUES (2, 'admin');
INSERT INTO USER_ROLE (user_id, role_id) VALUES (1, 1);
INSERT INTO USER_ROLE (user_id, role_id) VALUES (1, 2);
INSERT INTO USER_ROLE (user_id, role_id) VALUES (2, 1);
INSERT INTO USER_ROLE (user_id, role_id) VALUES (3, 1);
