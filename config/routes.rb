Rails.application.routes.draw do
  resources :register_products
  root 'pages#home'

  get 'pages/home', as: 'home'
  get 'pages/catalog', as: 'catalog'
  get 'pages/products', as: 'products'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
