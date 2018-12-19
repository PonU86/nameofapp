Rails.application.routes.draw do
  devise_for :users
  resources :products do
    resources :comments
  end
  resources :users
  resources :invoices
  resources :orders
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  root 'simple_pages#about'
  post 'simple_pages/thank_you'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :orders, only: [:index, :show, :create, :destroy]

end
