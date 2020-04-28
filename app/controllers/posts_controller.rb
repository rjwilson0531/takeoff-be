class PostsController < ApplicationController

    def index
        posts = Post.all
        posts = posts.map {|p| p.as_json.merge(p.user.as_json)}
        render json: posts.to_json(
            :except => ["created_at", "updated_at","s_bio", "l_bio", "company_id", "location" ]
        )
    end

    def show
        post = Post.find(params["id"])
        post = post.as_json.merge(post.user.as_json)
        render json: post.to_json(
            :except => ["created_at", "updated_at","s_bio", "l_bio", "company_id", "location" ]
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
