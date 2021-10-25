Rails.application.routes.draw do
  #get '/users', to: 'users#index'
  resources :users do 
    resources :tweets
  end

  post 'users/:user_id/tweets/:id/like', to: 'tweets#like'
  post '/login', to: 'users#login'
end
