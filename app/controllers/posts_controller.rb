class PostsController < ApplicationController

    def index
        posts = Post.all
        posts = posts.map do |p|
            p.as_json.merge(p.user.as_json.except("id")).merge({likes: p.likes.count})
        end
        render json: posts.to_json(
            :except => ["created_at", "updated_at","s_bio", "l_bio", "company_id", "location" ]
        )
    end

    def show
        post = Post.find(params["id"])
        post = post.as_json.merge(post.user.as_json.except("id")).merge({likes: post.likes.count})
        render json: post.to_json(
            :except => ["created_at", "updated_at","s_bio", "l_bio", "company_id", "location" ]
        )
    end

    def create
        post = Post.create(user_id: params["user_id"].to_i, content: params["content"])
        render post.to_json()
    end

    def destroy
        byebug
        post = Post.find(params["id"])
        post.destroy
        render post.to_json()
    end

end
