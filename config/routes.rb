Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :comments do
      resources :comments
    end
  end
  devise_for :users
  # Defines the root path route ("/")
  resources :users
  resources :friendships
   root "posts#index"

  mount ActionCable.server => '/cable'
end
