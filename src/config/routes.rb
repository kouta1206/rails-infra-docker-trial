Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'
  get '/movies/index', to: 'movies#index'
  get '/movies/regist', to: 'movies#new'
  post '/movies/regist', to: 'movies#create'
end
