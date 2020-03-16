Rails.application.routes.draw do

  # ユーザー関連
  get '/users/login' => 'users#login_form'
  post '/users/login' => 'users#login'

  get '/' => 'home#top'
end
