Rails.application.routes.draw do

  resources :advertisements
  resources :posts
  resources :questions

  get 'about' =>'wecome#about'

  root 'welcome#index'


end
