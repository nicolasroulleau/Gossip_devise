Rails.application.routes.draw do
  
  root 'gossips#index'
  
  devise_for :users

  resources :gossips

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'home/index'

  get 'users/new', to: 'users#new'

  post 'gossips/new', to: 'gossips#create'
  #get 'gossips/index'

  #get 'gossips/new'
  #post 'gossips/new'

  #get 'gossips/create'
  #post 'gossips/create'

  #get 'gossips/show'
  get 'home/warning', to: 'home#warning'
end
