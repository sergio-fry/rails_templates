gem_group :development, :test do
  gem "rspec-rails"
end

run "bundle install"
rails_command "generate rspec:install"

require "open-uri"

file "spec/spec_helper.rb", URI.parse("https://raw.githubusercontent.com/sergio-fry/spec_helper/master/spec_helper.rb").open.read

run "rm -rf test" if yes?("Do you want to remove the /test directory?")
