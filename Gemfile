source "https://rubygems.org"

gem "rails", "~> 7.2.0.beta3"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "redis", ">= 4.0.1"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false
gem "devise", "~> 4.9"
gem "devise-i18n"
gem "bootstrap", "~> 5.3.3"
gem "jquery-rails"
gem "cssbundling-rails", "~> 1.4"
gem "devise-bootstrap-views", "~> 1.1"

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
  gem "rspec-rails", "~> 6.1"
  gem "factory_bot", "~> 6.4"
  gem "ffaker", "~> 2.23"
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

