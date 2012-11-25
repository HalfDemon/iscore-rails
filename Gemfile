source 'https://rubygems.org'

gem 'rails', '3.2.9'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'bootstrap-sass', '~> 2.0.3.1'
  gem 'font-awesome-sass-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'haml'

group :development, :test do
	gem 'rspec-rails', '~> 2.10.1'
	gem 'spork', '~> 0.9.2'
	gem 'rails_best_practices'
	gem 'guard', '~> 1.2.1'
	gem 'guard-spork', '~> 1.1.0'
	gem 'guard-rspec', '~> 1.1.0'
	gem 'guard-rails', '~> 0.1.0'
	#gem 'guard-brakeman'
	gem 'guard-migrate'
	gem 'factory_girl_rails', '3.5.0'
	gem 'guard-rails_best_practices'
	gem 'capybara'
  	gem 'sqlite3'
	gem 'rack-mini-profiler'
end

gem 'simple_form'

group :production do
	gem 'pg'
end

# Use CanCan to Auth users
gem 'cancan', '~> 1.6.8'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Thin is Cool
gem 'thin'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'