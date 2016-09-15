Rails.application.routes.draw do

  resources :add_products
  devise_for :users
  resources :comments
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'products#index'
  get '/new'=> 'products#form_index'  
end
