class PostsController < ApplicationController

    def index
        posts = Post.all
        render json: posts.to_json(
            :except => [:created_at, :updated_at]
        )
    end

    def show
        posts = Post.where("user_id = ?", params["id"])
        render json: posts.to_json(
            :except => [:created_at, :updated_at]
        )
    end

    def create
        byebug
        post = Post.create(user_id: params["user_id"].to_i)
        render post.to_json()
    end

    def destroy
        byebug
        post = Post.find(params["id"])
        post.destroy
        render post.to_json()
    end

end
