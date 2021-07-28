Rails.application.routes.draw do
  devise_for :users
  root to: "tops#index"
  resources :blogs do
    resources :comments, only: :create
    collection do
      get 'search'
    end
    member do
      get 'category_selection'
    end
  end
  resources :users, only: [:show, :edit, :update]
  resources :memos
end