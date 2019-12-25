Rails.application.routes.draw do
  
  
  resources :owns
  devise_for :tajirs
  devise_for :users
 
    resources :products do
      resources :whish_lists
      resources :carts
      resources :orders
    end
    
  get '/products/new' ,to: 'products#new'
    root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
