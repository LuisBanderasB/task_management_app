Rails.application.routes.draw do
  root 'welcome#index'
  resources :boards, only: [:index, :show, :create, :destroy, :update]
  resources :tasks, only: [:create, :update]
  resources :lists, only: [:create]
end
