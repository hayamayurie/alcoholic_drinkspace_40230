Rails.application.routes.draw do
  devise_for :users
  root to: "alcohols#index"
  resources :alcohols, only: [:index, :new]
end
