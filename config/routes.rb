Rails.application.routes.draw do
  devise_for :workers
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "workers#show"

  resources :workers,     only: [:index, :show]
  resources :dispatches,  only: [:index, :show], param: :delivery_day
end
