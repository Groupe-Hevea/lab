-- migrate:up
ALTER TABLE users CHANGE name display_name varchar(255);

ALTER TABLE users ADD first_name varchar(255) AFTER display_name;
ALTER TABLE users ADD last_name  varchar(255) AFTER first_name;

UPDATE users SET first_name = 'not yet defined' WHERE first_name IS NULL;
UPDATE users SET last_name  = 'not yet defined' WHERE last_name IS NULL;

-- migrate:down transaction:false
ALTER TABLE users DROP first_name;
ALTER TABLE users DROP last_name;
ALTER TABLE users CHANGE display_name name varchar(255);
