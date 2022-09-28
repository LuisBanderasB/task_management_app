Rails.application.routes.draw do
  root 'welcome#index'
  resources :boards, only: [:index, :show, :create, :destroy]
  resources :tasks, only: [:create]
end
