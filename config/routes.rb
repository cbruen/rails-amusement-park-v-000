Rails.application.routes.draw do

resources :attractions do
    resources :rides, only: [:create]
end


resources :rides, only: [:new, :create]
resources :users
resources :attractions, only: [:index, :show, :new, :create, :edit, :update]
get '/signin' => 'sessions#new'
post '/signin' => 'sessions#create'
post '/signout' => 'sessions#destroy'
root 'welcome#home'
end
