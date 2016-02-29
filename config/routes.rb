Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  get 'about', to: 'pages#about'

  resources :articles
  root 'articles#index'


end
