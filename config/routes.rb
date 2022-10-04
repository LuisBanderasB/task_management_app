Rails.application.routes.draw do
  root 'welcome#index'
  put '/tasks/:id' => 'tasks#update_list'
  resources :user_boards
  devise_for :users
  resources :plans, only: [:index]
  resources :boards, only: [:index, :show, :create, :destroy, :update]
  resources :tasks, only: [:create, :update]
  resources :lists, only: [:create, :destroy]
  resources :users do
    member do
      get :confirm_email
    end
  end
end
