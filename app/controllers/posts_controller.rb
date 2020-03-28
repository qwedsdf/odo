class PostsController < ApplicationController
    def index
        @type = 'question'
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post=Post.new(user_id: @current_user.id, content: params[:post][:content], tag: params[:post][:tag])
        if @post.save
            flash[:notice]="せーの！卍まんじ卍"
            redirect_to("/posts/index")
        else
            render("/posts/new")
        end
    end

    def update
    end
end
