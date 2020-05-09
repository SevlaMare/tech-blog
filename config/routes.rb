Rails.application.routes.draw do
  resources :articles do
    resources :comments, only: [:show, :create, :destroy]
  end
  resources :tags, except: [:destroy, :edit, :update]
  root to: 'articles#index'
end
