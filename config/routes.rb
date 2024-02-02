Rails.application.routes.draw do
  get 'alcohols/index'
  root to: "alcohols#index"
end
