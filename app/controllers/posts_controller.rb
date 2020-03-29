class PostsController < ApplicationController
    def index
        @type = params[:type]
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post=Post.new(user_id: @current_user.id, content: params[:post][:content], tag: params[:post][:tag])
        if @post.save
            flash[:notice]="せーの！卍まんじ卍"
            redirect_to("/posts/question/index")
        else
            render("/posts/new")
        end
    end

    def select
        @type = params[:tag]
        redirect_to("/posts/#{@type}/index")
    end

    def update
    end
end
