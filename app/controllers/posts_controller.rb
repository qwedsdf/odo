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
    def edit
        @post = Post.find_by(id: params[:id])
    end
    def select
        @type = params[:tag]
        redirect_to("/posts/#{@type}/index")
    end

    def update
        @post = Post.find_by(id: params[:id])
        @post.content = params[:content]
        if @post.save
            flash[:notice] = "投稿を編集しました"
            redirect_to("/posts/index")
        else
            render("posts/edit")
        end
    end
    def destroy
        @post = Post.find_by(id: params[:id])
        @post.destroy
        flash[:notice] = "投稿を削除しました"
        redirect_to("/posts/index")
    end
    def ensure_correct_user
        @post = Post.find_by(id: params[:id])
        if @post.user_id != @current_user.id
        flash[:notice] = "権限がありません"
        redirect_to("/posts/index")
    end
    def show
        @user = User.find_by(id: params[:id])
     end
  end
end
