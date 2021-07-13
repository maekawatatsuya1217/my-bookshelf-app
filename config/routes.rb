Rails.application.routes.draw do
  devise_for :users
  root to: "blogs#index"
  resources :blogs, only: [:new, :create, :show, :edit, :update]
end
