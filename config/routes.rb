Rails.application.routes.draw do
  get 'boards/registration', to: 'boards#registration'

  resources :users, only: %i[new create]
  resources :boards
  root to: 'boards#index'
  
  get 'login', to: 'user_sessions#new'  # 追記
  post 'login', to: 'user_sessions#create'  # 追記
  delete 'logout', to: 'user_sessions#destroy'  # 追記
end
