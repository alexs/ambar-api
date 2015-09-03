source 'https://rubygems.org'

ruby '2.2.3'
gem 'rails', '4.2.4'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

#database
gem 'mongoid', '~> 4.0.2'
gem 'mongoid-sadstory'

#Authentication
gem 'devise'
gem 'bcrypt',   '3.1.7'

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  #gem 'spring'
  gem 'foreman', '~> 0.75.0'
  gem 'letter_opener', '~> 1.2.0'

  # Dubugging helpers
  gem 'better_errors'
  gem 'pry-rails'
  gem 'awesome_print'
  gem 'binding_of_caller', '~> 0.7.2'
end

group :test do
  gem "rspec-rails", "~> 2.14"
  gem "shoulda-matchers"
  gem "email_spec"
  gem 'factory_girl_rails'
  gem 'ffaker'
end

#Api gems
gem 'active_model_serializers'

#images processor
gem 'carrierwave-mongoid', :require => 'carrierwave/mongoid'
gem 'mini_magick'

#General
gem 'kaminari'
