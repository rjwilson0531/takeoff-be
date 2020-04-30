class SessionsController < ApplicationController

  def create
    user = User.find_by(username: params[:username])
    if user
      render json: user
    else 
      render json: {
          message: "error, invalid username or password",
          error: true
        }
    end
  end
end 