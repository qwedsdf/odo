class PostsController < ApplicationController
    def index
        @type = params[:type]
        @posts = Post.all
    end

    def new
        @post = Post.new
        flash[:reply_id] = params[:reply_id]
    end

    def create
        @post=Post.new(user_id: @current_user.id, content: params[:post][:content], tag: params[:post][:tag])
        if flash[:reply_id]
            @post.reply_id = flash[:reply_id]
        end
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

    def show
        @post = Post.find_by(id: params[:id])
        @reply_posts = Post.where(reply_id: @post.user.id)
        @type = 'edit'
    end
end
