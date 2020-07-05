Rails.application.routes.draw do
  resources :sessions, only: [:create]
  delete :logout, to: 'sessions#logout'
  get :logged_in, to: 'sessions#logged_in'
  resources :registrations, only: [:create]
  root to: 'static#home'
end
