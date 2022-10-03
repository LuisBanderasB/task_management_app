Rails.application.routes.draw do
  root 'welcome#index'
  resources :boards, only: [:index, :show, :create, :destroy, :update]
  resources :tasks, only: [:create, :update, :show]
  resources :lists, only: [:create, :destroy]
end
