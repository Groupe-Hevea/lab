# DBMATE lab

## links

dbmate: https://github.com/amacneil/dbmate

## usage

```sh
docker-compose -p labs up -d
docker exec -it labs_dbmate_1 bash
dmate up        # will create database and populate it
dbmate rollback # will rollback to step1
dbmate rollback # will rollback the 1st step
dbmate down     # will destroy the database
```
