Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  
  resources :users do
    resource :profile
    resources :comments, only: [:create]
  end
  
  get 'about', to: 'pages#about'
  get 'plan', to: 'pages#plan'
  resources :contacts, only: :create
  resources :messages, only: [:create]
  get 'contact-us', to: 'contacts#new'
  get '/chat', to: 'chatrooms#show'
  
  mount ActionCable.server => '/cable'
  
end
