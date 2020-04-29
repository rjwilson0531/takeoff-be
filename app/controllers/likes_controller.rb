class LikesController < ApplicationController

  def create
    like = Like.create(post_id: params["post_id"], user_id: params["user_id"])
    render json: like.to_json(
      :except => ["created_at", "updated_at"]
  )
  end

  def destroy
      byebug
      0
  end

end
