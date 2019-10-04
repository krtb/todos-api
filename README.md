# todos-api
A rails API to create, update, delete and edit a list of tasks

```bash
rails new todos-api --api -T
```
NOTES
* `--api`
  * tells rails we only want to create an API application
* `-T`
  * excludes `Minitest`, default testing framework

### Gems used in this project
* [rspec-rails](https://github.com/rspec/rspec-rails) - Testing framework.
* [factory_bot_rails](https://github.com/thoughtbot/factory_bot_rails) - A fixtures replacement with a more straightforward syntax. You'll see.
* [shoulda_matchers](https://github.com/thoughtbot/shoulda-matchers) - Provides RSpec with additional matchers.
* [database_cleaner](https://github.com/DatabaseCleaner/database_cleaner) - You guessed it! It literally cleans our test database to ensure a clean state in each test suite.
* [faker](https://github.com/stympy/faker) - A library for generating fake data. We'll use this to generate test data.

### API will expose the following endpoints

| Endpoint      | Functionality |
| ------------- |:-------------:|
| POST/ signup  | Signup        |
| POST /auth/login | Login      |
| GET /auth/logout| Logout   |
| GET /todos | List all todos   |
| POST /todos | Create a new todo |
| GET /todos/:id | Get a todo  |
| PUT /todos/:id | Update a todo   |
| DELETE /todos/:id | Delete a todo and its items   |
| GET /todos/:id/items | Get a todo item   |
| PUT /todos/:id/items | Update a todo item   |
| DELETE /todos/:id/items | Delete a todo item   |