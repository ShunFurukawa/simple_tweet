Rails.application.routes.draw do
  resources :likes
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:                  "top#index"
  resources                 :users do
    resources               :relation, only: [:create, :destroy]
  end

  resources                 :tweets do
    resources               :likes, only: [:create, :destroy]
  end

  get "users/index/:id" =>  "user#index"
  get "users/show/:id" =>   "users#show"
  get "relationed/:id" =>   "relation#showed"
end
