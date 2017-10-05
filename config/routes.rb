Rails.application.routes.draw do
  resources :advertisements

  resources :posts

  get 'about' =>'wecome#about'

  root 'welcome#index'


end
