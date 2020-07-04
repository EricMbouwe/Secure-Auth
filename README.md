# Secure-Auth

- Http cookies only authentication / sweet for client authentication
- JWT authentication

> Add these 2 gems to your Gemfile

- gem 'bcrypt', '~> 3.1', '>= 3.1.13'
- gem 'rack-cors', :require => 'rack/cors'

run bundle install

> create these files into the initializers folder

- cors.rb   // helps us to whitelist certain domains
- session-store.rb
