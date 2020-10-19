Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  
  resources :articles do
    resources :comments
  end
  resources :tags

  root to: 'welcome#index'
end
