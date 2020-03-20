class PostsController < ApplicationController
    def index
        @posts = Post.all;
    end

    def new
    end

    def create
        @post=Post.new(user_id: @current_user.id, content: params[:content])
        if @post.save
            flash[:notice]="せーの！卍まんじ卍"
            redirect_to("/posts/index")
        end
    end
end
