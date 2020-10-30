Rails.application.routes.draw do
  resources :users
  resources :rides
  resources :attractions

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  post '/signout' => 'sessions#destroy'
  root 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
