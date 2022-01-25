Rails.application.routes.draw do
  get 'boards/registration', to: 'boards#registration'
  get 'boards/search', to: 'boards#search'

  resources :users, only: %i[new create]
  resources :boards
  resources :contacts, only: %i[new create]
  root to: 'boards#index'
  
  get 'login', to: 'user_sessions#new'  # 追記
  post 'login', to: 'user_sessions#create'  # 追記
  delete 'logout', to: 'user_sessions#destroy'  # 追記
  post 'contacts/confirm', to: 'contacts#confirm', as: 'confirm'
  post 'contacts/back', to: 'contacts#back', as: 'back'
  get 'done', to: 'contacts#done', as: 'done'
end
