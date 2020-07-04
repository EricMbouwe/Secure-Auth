Rails.application.config.session_store :cookie_store, key: '_authentication_app', domain: 'http://localhost:3000'
  # Here we define what the cookies going to be structure like.
  ## the key here is the name of the session cookie