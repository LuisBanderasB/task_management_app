Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  resources :boards, only: [:index, :show, :create, :destroy, :update]
  resources :tasks, only: [:create, :update, :show]
  resources :lists, only: [:create, :destroy]
  resources :users do
    member do
      get :confirm_email
    end
  end
end
