Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show], as: :displaying
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :designs do
    resources :products, only: [ :create, :update, :destroy]
  end
  resources :orders , only: [ :create] do
    resources :baskets, only: [ :index]
  end
end
