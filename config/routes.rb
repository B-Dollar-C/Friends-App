Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  #devise_for :admins
  resources :friends
  #get 'home/index'
  get 'home/about'
  get 'home/contact'
  #root 'home#index'
  #root 'friends#index'
  get 'admin/login'
  root 'admin/dashboard#index'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
