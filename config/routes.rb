Rails.application.routes.draw do
  resources :plants  do
    resources :bookings , only: [:index, :show, :new, :create, :delete]
  end
  resources :users, except: [:index, :new, :create]
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
