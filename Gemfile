source 'https://rubygems.org'

gem 'rails_12factor'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.4'
# Use sqlite3 as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes follows links in your web application faster. Read more: https://github.com/rails/turbolinks

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
gem "launchy"

group :production do
  gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
end

group :test, :development do
  gem "rspec-rails", "3.0.1"
  gem 'rspec-collection_matchers', '~> 1.0.0'
  gem "capybara", "2.3.0"
  gem "pry-rails"
  gem "pry-byebug"
  gem "selenium-webdriver"
  gem "font-awesome-rails"
  gem "database_cleaner"
end

group :production, :staging do
gem 'pg'
gem 'rails_12factor'
end
