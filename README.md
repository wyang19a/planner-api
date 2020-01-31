# Get It Done ! API

This API currently has single resource, `Tasks`, with `title`, `description`, `Tfrom`, `Tto`, `completed`, `user_id`.

## Setup Steps

1. [Fork and clone](https://git.generalassemb.ly/ga-wdi-boston/meta/wiki/ForkAndClone) this repository.
2. Run `bundle install` to install all dependencies.
3. Use `Rails server` to spin up the server.

## Important Links

- [Client Repo](https://github.com/wyang19a/planner-client)
- [Deployed Client](https://wyang19a.github.io/planner-client/)
- [Deployed API](https://sheltered-waters-25858.herokuapp.com/)

## Planning

Please see [client repo read me](https://github.com/wyang19a/planner-client).

### Technologies Used

- Ruby
- Rails
- Heroku

### Catalog of Routes

#### Tasks
Verb         |	URI Pattern
------------ | -------------
GET | /tasks
GET | /tasks/:id
POST | /tasks
PATCH | /tasks/:id
DELETE | /tasks/:id

#### Auth
Verb         |	URI Pattern
------------ | -------------
POST | /sign-up
POST | /sign-in
DELETE | /sign-out
PATCH | /change-password

### ERD

![ERD](https://media.git.generalassemb.ly/user/23929/files/e65f1900-40e2-11ea-8dc7-fb958d08aaf6)
`User` only has `email` and `password`.
