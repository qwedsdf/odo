Rails.application.routes.draw do

  # ユーザー関連
  get '/login' => 'users#login_form'
  get '/signup' => 'users#signup_form'
  post '/login' => 'users#login'
  post '/signup' => 'users#signup'
  post '/logout' => 'users#logout'

  get '/' => 'home#top'
end
