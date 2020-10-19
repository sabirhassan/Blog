Rails.application.routes.draw do
  devise_for :users
  
  resources :articles do
    resources :comments
  end
  resources :tags

  root to: 'welcome#index'
end
