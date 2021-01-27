Rails.application.routes.draw do
  root to: 'tasks#index'
  
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destoy'
  
  get 'toppages/index'
  
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
    
    
    get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

    get 'signup', to: 'users#new'
    
    resources :users, only: [:index, :show, :new, :create]
    resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
