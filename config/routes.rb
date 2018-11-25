Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'homepage#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts
  get 'users/:id', to: 'users#index'
  get 'profile', to: 'users#profile'
  get 'match', to: 'users#match'

end
