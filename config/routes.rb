Rails.application.routes.draw do

  devise_for :users
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'products#index'
  get 'test'=> 'products#index'  
end
