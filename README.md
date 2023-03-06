# phase-3-task-manager-project-sinatra-backend
Task Manager is a basic API built with ruby's Sinatra DSL. 

This project is a server that allows users to keep track of their tasks easily showing the power of the DSL in building server-side applications quickly.

The application has been built with the MVC design pattern.

## Pre-Requisites
In order to use this repository you will need the following:



- Operating System **(Windows `10+`, Linux `3.8+`, or MacOS X `10.7+`)**
- RAM >= 4GB
- Free Space >= 2GB

## Built With
This application has been built with the following tools:

![ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white)
![sqlite](https://img.shields.io/badge/SQLite-07405E?style=for-the-badge&logo=sqlite&logoColor=white)


- **Ruby `v2.7.+`**
- **SQlite3 `v1.6`**
- **ActiveRecord `v7.0.4`**
- **Rake `v13.0.6`**
- **rerun `v0.14`**
- **Sinatra `v3.0.5`**
- **Sinatra-activerecord `v2.0`**
- **require_all `v3.0`**


## Setup
You can setup this repository by following this manual

1. Clone the repository
    ```{shell}
   git clone git@github.com:Sammy-CK/phase-3-task-manager-project-sinatra-backend.git
   ```
2. Ensure the ruby gems are setup in your machine
    ```{shell}
   bundle install
   ```
3. Perform any pending database migrations
   ```{shell}
   rake db:migrate
   ```
4. Run the application
    ```{shell}
    bundle exec rake server
    ```
5. Open the application from your browser
    ```
   http://localhost:9292
   ```
   
## Application
This application is a simple web API that allows users to:

- Register a new account.
- Log in to existing account.
- Create task items.
- Update individual task items status.
- View all and individual task items.
- Filter tasks items by date and/or status.
- Delete a task item.

### MODELS
Database schema definitions.

## Entity Relationship Diagram(ERD)
<img src="relationship.png">

This project has two tables with the tasks table having a foreign key of user_id.

- users table: Has a one-to-many relationship with the tasks table meaning one user has many tasks.

- tasks table:  Many tasks may belong to one user.


### ROUTES

1. `/hello` - Presents a simple welcome message.
2. `/signup` - Create a new user account.
   
   ```{json}
   ## REQUEST BODY
   {
    "name": "Philip",
    "email": "mail@mail.com",
    "password": "12345678"
   }
   ```
3. `/login` - Log in a user using name and password.

   ```{json}
   ## REQUEST BODY
   {
    "name": "Philip",
    "password": "12345678"
   }
   ```
4. `/tasks/create` - Add a new task item.

   ```{json}
   ## REQUEST BODY
   {
      "name": "eat",
      "description": "Very hungry need to eat to stay healthy",
      "due": "2023-03-14",
      "status": "ONGOING",
      "user_id": 1
   }
   ```
5. `/tasks` - List all task items.

   ```{json}
   ## RESPONSE SAMPLE
   {
    "data": [
        {
            "id": 2,
            "name": "Running another DSA practice 2",
            "description": "A wild desc",
            "due": "2023-02-24T00:00:00.000Z"
            "status": "COMPLETED"
        }]
   }
   ```
6. `/tasks/update/:id` - Update an existing task.
7. `/tasks/:id` - Delete a task item.
8. `/tasks/:id` - Render a single task matching the id param


## LICENSE
This repository is distributed under the MIT License

```markdown
Copyright 2023 Sammy Cherono

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), 
to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, 
and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```

## Author
This repository is maintained by:

- [Sammy Cherono](https://github.com/Sammy-CK) 