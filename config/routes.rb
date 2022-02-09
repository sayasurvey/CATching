Rails.application.routes.draw do
  get 'boards/registration', to: 'boards#registration'

  resources :users, only: %i[new create]
  resources :boards
  resources :contacts, only: %i[new create]
  root to: 'boards#index'
  
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  post 'contacts/confirm', to: 'contacts#confirm', as: 'confirm'
  post 'contacts/back', to: 'contacts#back', as: 'back'
  get 'done', to: 'contacts#done', as: 'done'
end
