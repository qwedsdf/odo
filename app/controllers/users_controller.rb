class UsersController < ApplicationController

  def login_form
    
  end

  def signup_form

  end

  def create
    @user = User.new(
      name: params[:name],
      password: params[:password],
      icon_image: "defult.jpg"
    )

    if @user && @user.save
      session[:user_id]=@user.id
      flash[:notice]="新規登録しました"
      redirect_to("/")
    else
      render("users/signup_form")
    end
  end

  def login
    @user = User.find_by(
      name: params[:name]
    )

    if @user && @user.authenticate(params[:password])
      session[:user_id]=@user.id
      flash[:notice]="ログインしました"
      redirect_to("/")
    else
      render("users/login_form")
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to("/login")
  end

  def edit

  end

  def update
    @user = User.find_by(id: @current_user.id)
    if params[:icon]
      @user.icon_image = "#{@user.id}.jpg"
     image = params[:icon]
     File.binwrite("public/images/#{@user.icon_image}", image.read)
    end
    @user.name = params[:name]
    if @user.save
      flash[:notice] = "成功しました"
      @current_user = @user
    end
    redirect_to("/")
  end

end
