source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
gem 'cloudinary'
gem 'carrierwave'

gem 'rails-erd'
gem 'pdf-reader'

gem 'seed_dump'
gem 'watir'
gem 'nokogiri', '>=1.5.9'
gem 'httparty'
gem 'pygments.rb', '~> 0.6.0'
gem 'redcarpet', '~> 3.2.2'

gem 'rails', '~> 5.0.2'
gem 'pg', '~> 0.18'
gem 'yaml_db'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'

gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'json'
gem 'devise'
gem 'activeadmin', github: 'activeadmin'
gem 'active_model_serializers', '~> 0.10.0'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development


group :development, :test do
  gem 'pry'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
