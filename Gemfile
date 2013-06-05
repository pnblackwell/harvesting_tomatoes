source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'harvested'
gem 'faraday'
gem 'omniauth-harvest'

group :production do
  gem 'pg'
end
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :development, :test do
  gem 'rspec-rails', '~> 2.13.1'
  gem 'capybara', '~>2.1.0'
  gem 'better_errors'
  gem 'pry'
  gem 'binding_of_caller'
  gem 'vcr'
  gem 'fakeweb'
end

group :test do
  gem 'sqlite3'
  gem 'simplecov'
end