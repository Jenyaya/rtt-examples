source 'http://rubygems.org'

Encoding.default_external = Encoding::UTF_8

group :test do
  gem 'rspec', '~> 3.4.0', :require => 'spec'       # used when main gem file has another name that gem name: load 'rspec', call 'spec'
  gem 'rest-client', '1.8.0'
  gem 'rake', '~> 10.3.2'                           # '~> 10.3.2' means '>= 10.3.2' and '<=10.4'
  gem 'json'
  gem 'elasticsearch'
  gem 'uuid'
  gem 'faker'
  gem 'net-ssh', '2.9.3.beta1'
  gem 'net-scp', '1.2.1'
  gem 'eventmachine', '1.0.8'
  gem 'em-http-request', '1.1.2'
  gem 'faye-websocket', '0.9.2'
  gem 'em-spec', '0.2.6'
  gem 'parallel'
  gem 'mongo', '~> 2.0.6'
  gem 'certified', '1.0.0'
end

group :junit do
  gem 'rspec_junit_formatter', '0.2.0'
end

gem 'cucumber', :group => [:cucumber, :test]      # gem in two groups
