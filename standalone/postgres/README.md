# PostgreSQL

## Post Installation

To make sure our PostgreSQL is secured with a strong password, set a password for its system user and then change the default database admin user account

1. Change user password

```bash
passwd postgres
```

2. Login using Postgres system account

```bash
su - postgres
```

3. Now, change the Admin database password

```bash
psql -c "ALTER USER postgres WITH PASSWORD 'password';"
```

4. Create a new user.

```bash
psql
```

```bash
CREATE ROLE coder LOGIN SUPERUSER PASSWORD 'password';
```

To give the user access to the database, you need to grant the user access to the database. 

1. Create a new database:

```bash
CREATE DATABASE coder;
```

2. Grant all rights or privileges on created database to the user

```bash
GRANT ALL ON DATABASE coder TO coder;
```

3. To exit psql

```bash
\q
```

> "postgres://coder:password@localhost/coder", add ?sslmode=disable to the end of the connection string to disable SSL.

## pgAdmin

pgAdmin is a web-based interface for managing PostgreSQL databases. It is a free and open-source tool that provides a user-friendly interface for creating, managing, and monitoring databases. pgAdmin allows you to perform a wide range of tasks, such as creating and editing tables, running queries, and managing users and permissions.
