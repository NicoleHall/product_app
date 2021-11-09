Rails.application.routes.draw do
  get 'products/new'
  root 'static_pages#home'
  get  '/new_product',  to: 'products#new'
  get  '/products',  to: 'products#index'
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
