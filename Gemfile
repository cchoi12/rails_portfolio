source 'https://rubygems.org'
ruby '2.4.2'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

gem 'friendly_id', '~> 5.1.0'
gem 'devise'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'pry-rails'
  gem 'pry-nav'
end

group :production do
  gem 'rails_12factor'
  gem 'pg'
  gem 'redis', '~> 3.3.5'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'bootstrap', '~> 4.0.0.beta'
gem 'jquery-rails'
gem 'ava_view_tool', '~> 0.1.0'
gem 'petergate', '~> 1.8'
gem "font-awesome-rails"
gem 'kaminari', '~> 1.0', '>= 1.0.1'
gem 'jquery-ui-rails'
gem 'paperclip'
gem 'aws-sdk', '~> 2.3'
gem 'dotenv-rails', '~> 2.2', '>= 2.2.1'
gem "cocoon"
gem 'gritter', '~> 1.2'
gem 'twitter', '~> 6.1'
gem 'redcarpet', '~> 3.3', '>= 3.3.4'
gem 'coderay', '~> 1.1', '>= 1.1.2'
gem 'trix'

ruby "2.4.2"
