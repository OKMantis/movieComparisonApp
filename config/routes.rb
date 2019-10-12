Rails.application.routes.draw do

  root to: 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show]
  resources :movies, only: [:index, :show]
  resources :comparisons, only: [:create]
end
