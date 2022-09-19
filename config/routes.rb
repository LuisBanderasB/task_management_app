Rails.application.routes.draw do
  root 'welcome#index'
  resources :boards, only: [:index]
end
