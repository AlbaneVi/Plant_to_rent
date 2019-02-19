Rails.application.routes.draw do
  resources :plants  do
    resources :booking , only: [:index, :show, :delete]
  end
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
