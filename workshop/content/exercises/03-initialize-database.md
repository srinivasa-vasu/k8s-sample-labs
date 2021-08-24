Let's create a separate database and role for this exercise. This also uses a postgres extension `uuid-ossp`. Let's create that extension as well.
If you have exited the DB shell, run the below command again,

```execute-1
/usr/local/yugabyte/bin/ysqlsh
```

To create the database, run the following,

```execute-1
CREATE DATABASE todo;
```
To initialize with the role,

```execute-1
CREATE USER todo WITH PASSWORD 'todo';
ALTER USER todo WITH SUPERUSER;
```

Switch to the `todo` DB to create the extension,

```execute-1
\c todo;
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
```

We don't need to create the DDLs separately as it would be managed in the application through `Flyway` library.