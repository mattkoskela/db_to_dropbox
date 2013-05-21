#!/bin/bash # # # db_to_dropbox - Minimalistic shell script to backup database to Dropbox # Released under the MIT License.
#
# https://github.com/mattkoskela/db_to_dropbox
#

VERSION="0.1"
CNF=
DB_HOST=
DB_NAME=
DB_USER=
DB_PASSWORD=
DROPBOX=


# Output usage information.

usage() {
  cat <<-EOF

  Usage: sh db_to_dropbox.sh [options]

  Example 1: sh db_to_dropbox.sh --host localhost --name cwla_dev --user admin --password pw123
  Example 2: sh db_to_dropbox.sh --cnf /opt/mysql/dev.cnf --name cwla_dev

  Options:

    -c, --cnf <path>         Set database cnf location to <path>
    -h, --host <string>      Set database host location
    -n, --name <string>      Set database name
    -u, --user <string>      Set database username
    -p, --password <string>  Set database password
    -d, --dropbox            Not sure what I'll need for dropbox auth yet

EOF
}

# call usage() function if filename not supplied
[[ $# -eq 0 ]] && usage

# A string with command options
options=$@

# An array with all the arguments
arguments=($options)

# Loop index
index=0

for argument in $options
  do
    # Incrementing index
    index=`expr $index + 1`

    # The conditions
    case $argument in
      -a) echo "key $argument value ${arguments[index]}" ;;
      -abc) echo "key $argument value ${arguments[index]}" ;;
      -c) CNF=${arguments[index]};;
      --cnf) CNF=${arguments[index]};;
      -h) DB_HOST=${arguments[index]};;
      --host) DB_HOST=${arguments[index]};;
      -n) DB_NAME=${arguments[index]};;
      --name) DB_NAME=${arguments[index]};;
      -u) DB_USER=${arguments[index]};;
      --user) DB_USER=${arguments[index]};;
      -p) DB_PASSWORD=${arguments[index]};;
      --password) DB_PASSWORD=${arguments[index]};;
      -d) DROPBOX=${arguments[index]};;
      --dropbox) DROPBOX=${arguments[index]};;
    esac
  done

if [ "$DB_USER" = "" ]; then
    echo "SHOW USAGE!!!"
fi

echo "Version: "$VERSION
echo "CNF Location: "$CNF
echo "DB Host: "$DB_HOST
echo "DB Name: "$DB_NAME
echo "DB User: "$DB_USER
echo "DB Password: "$DB_PASSWORD
echo "Dropbox: "$DROPBOX
