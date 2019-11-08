-- migrate:up
create table users (
  id integer,
  name varchar(255),
  email varchar(255) not null
);

insert into users (id, name, email) values (1, 'webofmars', 'contatc@webofmars.com');
insert into users (id, name, email) values (2, 'John Doe', 'john@doe.com');

-- migrate:down
drop table users;
