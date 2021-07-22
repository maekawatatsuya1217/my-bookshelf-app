Rails.application.routes.draw do
  devise_for :users
  root to: "blogs#index"
  resources :blogs do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :users, only: [:show, :edit, :update]
  resources :memos, only: [:index, :new, :create, :show]
end