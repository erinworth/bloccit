Rails.application.routes.draw do

  resources :posts
  resources :questions

  get 'about' =>'wecome#about'

  root 'welcome#index'


end
