class SessionsController < ApplicationController
## Checks logged_in and logged_out users 

  include CurrentUserConcern

  def create
    user = User.find_by(email: params[:email])  # find if the user passed is in the database
               .try(:authenticate, params[:password]) # check if his password is correct
    
    if user
      session[:user_id] = user.id  # store the user.id into the session
      render json: {
        status: :created,
        logged_in: true,
        user: user
      }
    else
      render json: { status: 401 }
    end
  end

  def logged_in
    if @current_user
      render json: {
        logged_in: true,
        user: @current_user
      }
    else
      render json: { logged_in: false }
    end
  end

  def logout
    reset_session
    render json: { status: 200, logout: true }
  end
end