class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post=Post.new(user_id: @current_user.id, content:  params[:post][:content])
        if @post.save
            flash[:notice]="せーの！卍まんじ卍"
        else 
            flash[:notice]="ツイートに失敗"
        end
        redirect_to("/posts/index")
    end

    def update
    end
end
