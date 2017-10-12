Rails.application.routes.draw do

resources :users, only: [:new, :create]

resources :topics do
  resources :posts, except: [:index]
  resources :sponsored_posts, except: [:index]
  resources :questions
end
  post 'users/confirm' => 'users#confirm'
  get 'about' =>'welcome#about'

  root 'welcome#index'

end
