Rails.application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root :to => "main#home"
  get "paypal_express/checkout"

  devise_for :users
  resources :profiles do
  	resources :tags, only: [:create, :destroy]
  	resources :comments
  end
end
