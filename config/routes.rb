Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users
  resources :users, only: [:show], as: :displaying
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :designs do
    resources :products, only: [ :create, :update, :destroy]
  end
end
