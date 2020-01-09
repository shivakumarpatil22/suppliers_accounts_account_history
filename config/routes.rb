Rails.application.routes.draw do
  resources :account_histories
  resources :accounts
  resources :suppliers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
