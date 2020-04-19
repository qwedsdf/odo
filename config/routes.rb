Rails.application.routes.draw do

  # 卍関連

  get '/posts/new' => 'posts#new'
  post 'posts/select' => 'posts#select'
  post '/posts' => 'posts#create'
  post '/posts' => 'posts#update'
  get '/posts/:type/index' => 'posts#index'
  post '/posts/:type/index' => 'posts#index'
  
  #いいね
  post '/likes/:post_id/:type/create' => 'likes#create'
  post '/likes/:post_id/:type/destroy' => 'likes#destroy'

  # ユーザー関連
  get '/login' => 'users#login_form'
  get '/signup' => 'users#signup_form'
  post '/login' => 'users#login'
  post '/create' => 'users#create'
  post '/logout' => 'users#logout'
  get '/users/edit' => 'users#edit'
  post '/users/update' => 'users#update'
  get "users/:id/show" => "users#show"

  get '/' => 'home#top'
end
