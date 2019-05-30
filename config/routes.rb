Rails.application.routes.draw do
  resources :pets
  root to: 'pages#home'
  devise_for :users, controllers: {
        sessions: 'users/sessions'
  }

  get '/users' => 'pages#homepage', as: 'users'

  devise_scope :user do
      get 'sign_in', to: 'users/sessions#new'
      get 'sign_up', to: 'users/registrations#new'
  end

  get '/' => 'pages#home', as: 'home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
