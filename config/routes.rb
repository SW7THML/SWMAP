Rails.application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root :to => "main#home"

  devise_for :users
  # root "welcome#index"
  resources :profiles
end
