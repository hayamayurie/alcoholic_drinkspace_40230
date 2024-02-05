Rails.application.routes.draw do
  devise_for :users
  get 'alcohols/index'
  root to: "alcohols#index"
end
