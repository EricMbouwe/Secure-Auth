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

> Exemple of api call with curl
  >curl --header "Content-Type: application/json" \
  > --request POST \
  > --data '{"user": {"email": "cslt@server.com", "password": "abcd"}}' \
  > http://localhost:3000/sessions

  OR
  
  >curl --header "Content-Type: application/json" --request POST --data '{"user": {"email": "cslt@server.com", "password": "abcd"}}' http://localhost:3000/sessions

# React front end app
> DevCamp JavaScript Project Builder
 https://www.npmjs.com/package/devcamp-js-builder
 This node module allows you to build skeleton JavaScript projects, to get started, follow these instructions:

Run npm install devcamp-js-builder -g to install the library globally on your system, if that runs into an issue, you can run sudo npm install devcamp-js-builder -g -f

> To create a new project
  - Change into the directory that you want to build the project in
  - Run the command js-generate into the terminal and follow the prompts
