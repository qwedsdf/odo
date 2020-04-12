class PostsController < ApplicationController
    def index
        @type = params[:type]
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post=Post.new(user_id: @current_user.id, content: params[:post][:content], tag: params[:post][:tag],image_1:"#{SecureRandom.uuid}.jpg")
        if params[:input_image_1]
            image = params[:input_image_name_1]
            File.binwrite("public/images/tweet_image/#{@post.image_1}", image.read)           
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
        @user = User.find_by(id: params[:id])
    end
end
