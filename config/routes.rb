Rails.application.routes.draw do
  devise_for :users

  # Api definition
  namespace :api, defaults: { format: :json } do
    scope module: :v1 do
      # We are going to list our resources here
      resources :users, :only => [:show, :create, :update, :destroy] do
        resources :pictures, :only => [:create, :update, :destroy]
      end
      resources :sessions, :only => [:create, :destroy]
      resources :pictures, :only => [:show, :index]
    end
  end
end
