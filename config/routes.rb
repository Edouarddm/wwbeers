Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :breweries, only: [:index, :show] do
    resources :beers, only: [ :show]
  end
  resources :beers, only: [:index, :show]
  resources :lists, only: [:index, :show]
  # Defines the root path route ("/")
  # root "articles#index"
end
