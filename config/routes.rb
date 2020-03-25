Rails.application.routes.draw do

  # 卍関連
  get '/posts/index' => 'posts#index'
  get '/posts/new' => 'posts#new'
  post '/posts' => 'posts#create'
  post '/posts' => 'posts#update'

  # ユーザー関連
  get '/login' => 'users#login_form'
  get '/signup' => 'users#signup_form'
  post '/login' => 'users#login'
  post '/signup' => 'users#signup'
  post '/logout' => 'users#logout'

  get '/' => 'home#top'
end
