Rails.application.routes.draw do
  devise_for :users
  resources :products do
    member do
      post :add_to_cart
    end
  end

  resources :carts do
    member do
      delete :clean
      post :checkout
    end
  end

  namespace :admin do
    resources :products
  end

  namespace :account do
    resources :orders
  end

  resources :cart_items
  resources :orders
  root "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
