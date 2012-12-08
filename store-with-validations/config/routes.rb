Store::Application.routes.draw do
  resources :products
  resources :product_imports
  root to: 'products#index'
end
