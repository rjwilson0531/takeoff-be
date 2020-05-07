class UsersController < ApplicationController

  def index
    render json: User.all.as_json()
  end
  def show
    byebug
  end

  def create
    byebug
  end

end
