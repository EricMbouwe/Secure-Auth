# Here we define what the cookies going to be structure like.
## the key here is the name of the session cookie
if Rails.ENV == 'production'
  Rails.application.config.session_store :cookie_store, key: '_authentication_app', domain: 'authentication-app.heroku.app'
else
  Rails.application.config.session_store :cookie_store, key: '_authentication_app'
end