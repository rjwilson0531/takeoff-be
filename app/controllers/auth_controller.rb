class AuthController < ApplicationController

  def create
    user = User.find_by({"username": params["username"],"password": params["password"]} )
    if user
      render json: user.as_json()
    else 
      render json: {failed: "no user found"}.as_json
    end
    end

  end
