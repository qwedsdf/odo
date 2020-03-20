class UsersController < ApplicationController
  def login_form
    
  end

  def signup_form

  end

  def signup
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
      name: params[:name],
      password: params[:password]
    )

    if @user
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
end
