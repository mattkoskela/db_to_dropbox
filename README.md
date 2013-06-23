#db_to_dropbox

db_to_dropbox is a utility that exports a mysql database and uploads it to a
dropbox account.

## Usage

You can download the db_to_dropbox.sh file by cloning the repo. The file is
located in the bin/ directory.

```
git clone git@github.com:mattkoskela/db_to_dropbox.git db_to_dropbox
```

There are two options for exporting your mysql database.
1. Supply a cnf file and database name
2. Supply a database name, username, password and host

### Supplying a cnf file and database name

To use db_to_dropbox with a cnf file and database name, use the following
command:

```
sh db_to_dropbox.sh --cnf /path/to/sample.cnf --name db_name
```

### Supplying a database name, username, password, and host

To use db_to_dropbox with a database name, username, password, and host, use
the following command:

```
sh db_to_dropbox.sh --name db_name --user USERNAME --password PASSWORD --host localhost
```

It should be noted that supplying a password as an argument is considered
insecure. If possible, use a cnf file instead.
