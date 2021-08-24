Let's check the availability of the database using the `ysqlsh` client cli.

To check if the executable path is properly set, run:

```execute-1
clear
/usr/local/yugabyte/bin/ysqlsh --version
```
The output would be similar to:

```
psql (PostgreSQL) 11.2-YB-2.7.1.1-b0
```
The version of psql being used may be different to the version shown here.

To check if the YugabyteDB is reachable and healthy, run:
```execute-1
/usr/local/yugabyte/bin/ysqlsh
```
The output would be similar to:

```
ysqlsh (11.2-YB-2.7.1.1-b0)
Type "help" for help.

yugabyte=#
```
The version of database being used may be different to the version shown here.

This should connect you directly to the DB shell. Run the following command to find out all the available databases:

```execute-1
\l
```

The output would be similar to:

```
                                   List of databases
      Name       |  Owner   | Encoding | Collate |    Ctype    |   Access privileges
-----------------+----------+----------+---------+-------------+-----------------------
 postgres        | postgres | UTF8     | C       | en_US.UTF-8 |
 system_platform | postgres | UTF8     | C       | en_US.UTF-8 |
 template0       | postgres | UTF8     | C       | en_US.UTF-8 | =c/postgres          +
                 |          |          |         |             | postgres=CTc/postgres
 template1       | postgres | UTF8     | C       | en_US.UTF-8 | =c/postgres          +
                 |          |          |         |             | postgres=CTc/postgres
 yugabyte        | postgres | UTF8     | C       | en_US.UTF-8 |
(5 rows)
```