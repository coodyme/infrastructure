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

```bash
# Install the public key for the repository (if not done previously):
curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg

# Create the repository configuration file:
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'

# Install for both desktop and web modes:
sudo apt install pgadmin4

# Install for desktop mode only:
sudo apt install pgadmin4-desktop

# Install for web mode only: 
sudo apt install pgadmin4-web 

# Configure the webserver, if you installed pgadmin4-web:
sudo /usr/pgadmin4/bin/setup-web.sh
```
