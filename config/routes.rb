Rails.application.routes.draw do
  root 'welcome#index'
  resources :boards, only: [:index, :show, :create]
  resources :tasks, only: [:create]
end
