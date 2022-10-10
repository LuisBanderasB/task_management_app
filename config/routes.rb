# frozen_string_literal: true

Rails.application.routes.draw do
  resources :tasks_users, only: [:create]
  resources :user_workspaces
  root 'welcome#index'
  put '/tasks/:id' => 'tasks#update_list'
  match "/invite_user" => "users#invite", :via => :post, :as => :invite_user
  devise_for :users, :controllers => {:registrations => 'registrations'}
  resources :users, only: %i[index, destroy, create]
  resources :plans, only: [:index]
  resources :boards, only: %i[index show create destroy update]
  resources :charges, only: %i[create]
  resources :tasks, only: %i[create update]
  resources :lists, only: %i[create destroy]
  resources :users do
    member do
      get :confirm_email
    end
  end
end
