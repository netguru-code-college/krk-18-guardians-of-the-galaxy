Rails.application.routes.draw do
  root 'homepage#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts
  get 'users/:id', to: 'users#index'
  get 'profile', to: 'users#profile'

end
