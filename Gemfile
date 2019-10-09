source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.4'

# provides a simple API for performing paginated queries with Active Record, DataMapper and Sequel
gem 'will_paginate', '~> 3.2'
#to define which model attributes and relationships need to be serialized
gem 'active_model_serializers', '~> 0.10.10'
# add DOTENV gem, for hiding keys and sensitive info in .env file
gem 'dotenv-rails', groups: [:development, :test] # having it this way in test and dev envs works
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.0'
# add POSTGRESQL GEM, use instead of sqlite3
gem 'postgresql', '~> 1.0'
# Use sqlite3 as the database for Active Record
#gem 'sqlite3', '~> 1.4'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # adding rspec testing framework
  gem 'rspec-rails', '~> 3.8', '>= 3.8.2' 
  # Use ActiveModel, has_secure_password
  gem 'bcrypt', '~> 3.1', '>= 3.1.11'
  # Manage JSON Web tokens
  gem 'jwt', '~> 2.2', '>= 2.2.1'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'factory_bot_rails', '~> 5.1'
  gem 'shoulda-matchers', '~> 4.1', '>= 4.1.2'
  gem 'faker', '~> 2.5'
  gem 'database_cleaner', '~> 1.7'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
#gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby] # TODO: VERSION UNUSED, THROWING ERROR, UNCOMMENT TO REVIEW
