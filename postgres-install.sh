#!/bin/sh

if [ "$(id -u)" != "0" ]; then
    echo "Please run this script as root."
    exit 1
fi

sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
apt-get update
apt-get install postgresql-9.6 -y


# Create a new postgres user
# sudo -u postgres createuser --interactive

# Create new database (postgres expects db as same username)
# sudo -u postgres createdb sammy

# Add a linux user
# sudo adduser sammy

