source 'https://rubygems.org'

ruby '2.1.2'

gem 'rails', '~> 4.1.5'
gem 'rails-i18n'

# Database
gem 'pg'

# Unicode normaliztion
gem 'unicode'

# Authentication and authorization
gem 'devise'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-vkontakte'
gem 'omniauth-github'
gem "omniauth-google-oauth2"
gem "omniauth-twitter"
gem 'cancancan', '~> 1.7'

# Request handling
gem 'responders'
gem 'has_scope'
gem 'friendly_id'

# Decoration
gem 'draper'

# Compile and serve assets
gem 'jquery-rails'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'styx'
gem 'compass-rails'
gem 'marked-rails'
gem 'bootstrap-sass'
gem 'font-awesome-sass'
gem 'gon'

# View template compilers and helpers
gem 'jbuilder', '~> 2.0'
gem 'slim-rails'
gem 'bootstrap_form'
gem 'redcarpet'
gem 'active_link_to'
gem 'high_voltage', '~> 2.1.0'
gem 'simple_form', '~> 3.1.0.rc2'

# Documentation
gem 'sdoc', '~> 0.4.0', group: :doc

# Application server
gem 'unicorn'

# Environment variables management
gem 'figaro', github: 'laserlemon/figaro'

# Sexy rails console
gem 'awesome_print'
gem 'pry-rails'

# Heroku compatibility
gem 'rails_12factor'

# Iamge and AWS S3 management
gem 'mini_magick'
gem 'carrierwave'
gem "carrierwave-aws"

group :development do
  gem 'annotate', require: false
  gem 'quiet_assets'
  gem 'letter_opener'

  # Deploy with capistrano
  # gem 'capistrano'
  # gem 'capistrano-rails', '~> 1.0.0'
  # gem "capistrano-rvm"
  # gem 'capistrano-bundler'
  # gem 'capistrano3-unicorn'
end

group :development, :test do
  # Data generator
  gem 'ffaker'

  # Model factories
  gem 'factory_girl_rails'
  gem 'shoulda-matchers', require: false
  gem 'rspec-rails', '~> 2.14'
  # gem 'spring-commands-rspec'

  # Guards
  # gem 'guard-rspec'
  # gem 'rb-fsevent'
end
