# doctrine migrations labs (symfony 5)

## howto reproduce

### setup project

```sh
symfony new doctrine-mig
cd doctrine-mig
composer require symfony/doctrine
composer require symfony/orm-pack
```

#### launch a docker mysql

```sh
docker run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root mysql:5.7
```

#### edit .env file

and set user, password, dbname in `DATABASE_URL` var

### create database

```sh
./bin/console doctrine:database:create
```

#### create some entity

```sh
composer require symfony/maker-bundle
./bin/console make:entity Recette
./bin/console doctrine:schema:update --dump-sql
./bin/console doctrine:migrations:diff
./bin/console doctrine:migrations:migrate
```

### update the entity

```sh
./bin/console make:entity Recette
./bin/console doctrine:migrations:diff
./bin/console doctrine:migrations:migrate
```

### rollback a migration

```sh
./bin/console doctrine:migrations:migrate prev
```

### rollback to a specific migration

```sh
./bin/console doctrine:migrations:migrate 20200121191826
```

### apply n migrations at same time

```sh
./bin/console doctrine:migrations:migrate current+2
```
