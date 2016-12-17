Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "top#index"

  get "users/index/:id" => "user#index"

  get "users/show/:id" => "users#show"

  resources :users

  resources :relation
  get "relationed/:id" => "relation#showed"

end
