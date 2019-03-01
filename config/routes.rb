Rails.application.routes.draw do
  
  root to: 'toppages#index'
  get 'login', to: 'sessions#new'
  post 'login', to:'sessions#create'
  delete 'logout', to:'sessions#destroy'
  
  get 'signup', to:'users#new'
  
  resources:users, only: [:new, :create]
  resources:tasks, only: [:new, :create, :destroy, :edit, :show, :update]
end
