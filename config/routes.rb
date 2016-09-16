Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'positions#index'
  get 'about' => 'pages#about'

  resources :positions, only: [:index, :show]
  resources :companies, only: [:index, :show]
end
