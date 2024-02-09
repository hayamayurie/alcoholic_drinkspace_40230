Rails.application.routes.draw do
  devise_for :users
  root to: "toppage#index"
  resources :alcohols, only: [:index,:new, :create, :show, :edit]
end
