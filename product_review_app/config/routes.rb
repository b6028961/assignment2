Rails.application.routes.draw do
  get 'static_pages/home'
  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/contact'
  #get 'products/new'
  #get 'products/show'
  resources :products
  resources :reviews
  resources :profiles
  get 'home/about'
  get 'home/contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
