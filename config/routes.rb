Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :breweries, only: [:index, :show] do
    resources :beers, only: [:show]
  end
  resources :beers, only: [:index, :show]
  resources :lists, only: [:new, :create, :index, :show] do
    # resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy, :create]
  resources :lits, only: [:destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
