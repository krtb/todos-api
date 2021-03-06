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

### Versioning API
1) add route contstraint: will select version based on request headers
2) `Namespace` the controllers: have diff contrller namespaces to handle different versions

- [Advanced Contraints Supported by Rails routing](https://guides.rubyonrails.org/routing.html#advanced-constraints)
  - provided an object responds to `matches?`
  - can control which controller handles a specific route

* [Content Negotiation](https://en.wikipedia.org/wiki/Content_negotiation)
  * REST closely tied to the HTTP specification
  * HTTP defined mechanisms, that make it possible to server different versions(represenations) of a resource
    * at the same URI

* [Vendor Tree](https://en.wikipedia.org/wiki/Media_type#Vendor_tree)
  * can define own [media types](https://tools.ietf.org/html/rfc6838#section-3.2) using vendor tree specification 

### Serializers
* allow for custom representation of JSON responses
* [active model serializers](https://github.com/rails-api/active_model_serializers)
  * make it easy to define which model attributes and relationships need to be serialized
* In order to get todos with their respective items
  * we need to define serializers on the Todo model to include its attributes and relationships.

### Pagination
* make sure requests are still fast and optimized
  * use [will_paginate](https://github.com/mislav/will_paginate) gem