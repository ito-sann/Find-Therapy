Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/guest_sessions#new_guest'
  end
  root to: "stores#index"
  resources :stores do
    resources :comments, only: [:create, :destroy]
    resources :likes   , only: [:create, :destroy]
  end
  post '/stores/new', to: 'stores#new'
  resources :users
end

