class PostsController < ApplicationController
    def index
        @type = params[:type]
        @posts = Post.all
        if params[:search_word]
            @search_word=params[:search_word]
        end
    end

    def new
        @post = Post.new
    end

    def create
        @post=Post.new(user_id: @current_user.id, content: params[:post][:content], tag: params[:post][:tag])
        if params[:post][:input_image_name_1]
            image = params[:post][:input_image_name_1]
            @post.image_1="#{SecureRandom.uuid}.jpg"
            File.binwrite("public/images/tweet_images/#{@post.image_1}", image.read)           
        end
        if params[:post][:input_image_name_2]
            image = params[:post][:input_image_name_2]
            @post.image_2="#{SecureRandom.uuid}.jpg"
            File.binwrite("public/images/tweet_images/#{@post.image_2}", image.read)           
        end
        if params[:post][:input_image_name_3]
            image = params[:post][:input_image_name_3]
            @post.image_3="#{SecureRandom.uuid}.jpg"
            File.binwrite("public/images/tweet_images/#{@post.image_3}", image.read)           
        end
        if params[:post][:input_image_name_4]
            image = params[:post][:input_image_name_4]
            @post.image_4="#{SecureRandom.uuid}.jpg"
            File.binwrite("public/images/tweet_images/#{@post.image_4}", image.read)           
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
