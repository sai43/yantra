Rails.application.routes.draw do

  get 'pages/about'
  match '/contacts',     to: 'contacts#new', via: 'get'

  resources :contacts, only: [:new, :create]
  resources :categories
  resources :products
  root 'categories#index'

end
