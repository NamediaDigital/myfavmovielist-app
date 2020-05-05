Rails.application.routes.draw do

  resources :genres
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resource :session, only: [:new, :create, :destroy]

  root "movies#index"
  
  # get "movies" => "movies#index"
  # get "movies/new" => "movies#new"
  # get "movies/:id" => "movies#show", as: "movie"
  # get "movies/:id/edit" => "movies#edit", as: "edit_movie"
  # patch "movies/:id" => "movies#update"
  resources :movies do
    resources :reviews
    resources :favorites, only: [:create, :destroy]
  end

  get "signup" => "users#new"

  get "signin" => "sessions#new"

  get "movies/filter/:filter" => "movies#index", as: :filtered_movies

end
