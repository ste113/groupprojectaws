# Xccelerate Group 2 Project (AWS version)

This is a simple quiz application built with Express.js and PostgreSQL. It allows users to take quizzes and keeps track of their scores.

Link to app: https://ec2-3-106-216-93.ap-southeast-2.compute.amazonaws.com/

## Table of Contents

- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)

## Features

- User authentication
- Google authentication
- Take quizzes and see your scores
- View quiz results and correct answers
- Hosted on an AWS EC2 instance

## Prerequisites

Before you begin, ensure you have met the following requirements:

- Node.js: Make sure you have Node.js installed on your system.
- PostgreSQL: You should have a PostgreSQL server up and running.

## Installation

1. Clone this repository:

```bash
git clone git@github.com:SteffanCal/groupprojectaws.git
```

2. Set up amazon ec2 instance

3. Set up amazon rds database

4. Set up google project in google cloud console

5. Navigate to the project directory:

```bash
cd groupprojectaws
```

6. Install the dependencies:

```bash
npm install
```

## Usage

1.Create a .env file in the root directory and set the following environment variables:

- username: username for database

- password: password for database

- database: database name

- clientid: google project clientid

- clientsecret: google project clientsecret

- callbackurl: google project redirecturl

- databaseendpoint: endpoint for rds database hosted on amazon aws

```bash
username=''
password=''
database=''
clientid=''
clientsecret=''
callbackurl=''
databaseendpoint=''

```

Update these variables with your own configuration.

2. Create the database tables:

```bash
connect to database: psql --host=databaseendpoint --port=portnumber --dbname=dbname --username=username
pg_restore -U username -W -F t -d databasename db.pgsql
```
3. Create a self-signed certificate and place its cert and key inside the options variable of index.js

```bash
const options = {
  cert: fs.readFileSync("location of cert"),
  key: fs.readFileSync("location of key"),
};
```

Start the server:

```bash
npm start
```
