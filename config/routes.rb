Rails.application.routes.draw do
  root :to => "main#home"

  devise_for :users
end
