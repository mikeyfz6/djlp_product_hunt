Rails.application.routes.draw do

  devise_for :users
  
  resources :products do
  	resources :comments
  	member do
  		post 'vote'
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'products#index'
  get '/new'=> 'products#form_index'  
end
