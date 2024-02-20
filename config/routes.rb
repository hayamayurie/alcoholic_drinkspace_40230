Rails.application.routes.draw do
  devise_for :users
  root to: "toppage#index"
  resources :alcohols
  get '/alcohols/category/:id', to: "alcohols#category", as: :category
  get '/alcohols/search', to: 'alcohols#search', as: 'search_alcohols'
end