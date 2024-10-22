# NoSQL and MongoDB Project

## Overview

This project provides an introduction to NoSQL databases, focusing on MongoDB. By the end of this project, you will be able to explain key concepts of NoSQL databases, understand how to interact with MongoDB, and perform basic operations such as inserting, updating, and querying data.

## Learning Objectives

- **NoSQL Overview:**

  - Understand what NoSQL means and how it differs from SQL.
  - Learn about ACID properties and how they relate to databases.
  - Explore document storage and various types of NoSQL databases.
  - Identify the benefits of using a NoSQL database.

- **MongoDB Usage:**
  - Learn to query, insert, update, and delete data in MongoDB.
  - Understand how to use MongoDB with Python through the `PyMongo` library.
  - Practice using the mongo shell and performing data aggregation.

## Requirements

### MongoDB Command Files

- Interpreted/compiled on Ubuntu 18.04 LTS with MongoDB version 4.2.
- Files should end with a new line and start with a comment: `// my comment`.
- A `README.md` file is required at the root of the project folder.
- The length of files will be checked using the `wc` command.

### Python Scripts

- Interpreted/compiled on Ubuntu 18.04 LTS using Python 3.7 and `PyMongo` version 3.10.
- Files should end with a new line and start with `#!/usr/bin/env python3`.
- Code must adhere to `pycodestyle` (version 2.5.\*).
- Modules and functions should have proper documentation.
- Code should not execute when imported (use `if __name__ == "__main__":`).

## Installation Guide

### MongoDB Installation on Ubuntu 18.04

1. Add MongoDB repository:

   ```bash
   wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
   echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
   ```

2. Update packages and install MongoDB:

   ```bash
   sudo apt-get update
   sudo apt-get install -y mongodb-org
   ```

3. Start MongoDB service:

   ```bash
   sudo service mongod start
   ```

4. Verify installation:
   ```bash
   mongo --version
   ```

### Potential Issues

- **Data Directory Not Found:**

  ```bash
  sudo mkdir -p /data/db
  ```

- **Missing `/etc/init.d/mongod`:**
  - Ensure you have the correct init script in place.

### Running MongoDB in a Cloud Container

1. Request a container with Ubuntu 18.04 and MongoDB.
2. Connect via SSH or WebTerminal.
3. Start MongoDB:
   ```bash
   service mongod start
   ```

## Useful Resources

- [NoSQL Databases Explained](https://riak.com/resources/nosql-databases/)
- [What is NoSQL?](https://www.youtube.com/watch?v=qUV2j3XBRHc)
- [MongoDB with Python Crash Course - Tutorial for Beginners](https://www.youtube.com/watch?v=E-1xI85Zog8)
- [MongoDB Tutorial 2: Insert, Update, Remove, Query](https://www.youtube.com/watch?v=CB9G5Dvv-EE)
- [Aggregation](#)
- [Introduction to MongoDB and Python](#)
- [mongo Shell Methods](#)
- [Mongosh](#)
