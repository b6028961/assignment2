Rails.application.routes.draw do
  get 'static_pages/home'
  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'home/about'
  get 'home/contact'
  #get 'products/new'
  resources :sessions
  resources :users do
    collection do
      get :search
    end
  end
  resources :reviews do
  collection do
      get :search
    end
  end
  resources :profiles
  resources :products do
    collection do
      get :search
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
