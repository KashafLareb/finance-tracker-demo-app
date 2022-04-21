Rails.application.routes.draw do
  
  root 'welcome#index'

  resources :friendships, only: [:create, :destroy]
  get 'my_friends', to: 'users#my_friends'

  resources :user_stocks, only: [:create, :destroy]
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'stocks/search'
  get 'other_users', to: 'users#index'
  devise_for :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
