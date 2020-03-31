Rails.application.routes.draw do

  # 卍関連
  get '/posts/:type/index' => 'posts#index'
  get '/posts/new' => 'posts#new'
  post 'posts/select' => 'posts#select'
  post '/posts' => 'posts#create'
  post '/posts' => 'posts#update'

  #いいね
  post '/likes/:post_id/:type/create' => 'likes#create'
  post '/likes/:post_id/:type/destroy' => 'likes#destroy'

  # ユーザー関連
  get '/login' => 'users#login_form'
  get '/signup' => 'users#signup_form'
  post '/login' => 'users#login'
  post '/signup' => 'users#signup'
  post '/logout' => 'users#logout'

  get '/' => 'home#top'
end
