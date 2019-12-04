Rails.application.routes.draw do
  get 'settings', to: 'authenticated/settings#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #

  #root to: "home#index"
  root to: "homepage#index"
  scope module: :authenticated do
    resources :tasks

    namespace :settings do
      resources :tags
      resources :categories
    end
  end
end
