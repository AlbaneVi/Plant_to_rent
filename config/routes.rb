Rails.application.routes.draw do
  devise_for :users

  resources :plants  do
    resources :bookings, only: [:index, :show, :new, :create, :delete]
  end
  resources :users, except: [:index, :new, :create]

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
