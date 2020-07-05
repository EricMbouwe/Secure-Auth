class RegistrationsController < ApplicationController
  # Create a new use in the database
  def create
    user = User.create!(
      email: params[:email], 
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )

    if user
      session[:user_id] = user.id  # store the user.id into the session
      render json: {
        status: :created,
        user: user
      }
    else
      render json: { status: 422 }
    end
  end
end