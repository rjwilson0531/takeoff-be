class CommentsController < ApplicationController

  def index
    comments = Comment.where(:post_id => params["post_id"])
    render json: comments.as_json()
  end
  
  def create
    comment = Comment.create(content: params["content"], user_id: params["user_id"], post_id: params["post_id"])
    render json: comment.as_json()
  end

  def destroy
    byebug
  end
end
