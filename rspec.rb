run "spring stop || echo 'spring is off'"

run "rm -rf test"

gem_group :development, :test do
  gem "rspec-rails"
end

run "bundle install"
rails_command "generate rspec:install"

run "rm spec/spec_helper.rb"
require "open-uri"
file "spec/spec_helper.rb", URI.parse("https://raw.githubusercontent.com/sergio-fry/spec_helper/master/spec_helper.rb").open.read
