Rails.application.routes.draw do

resources :users, only: [:new, :create]
resources :sessions, only: [:new, :create, :destroy]

resources :topics do
  resources :posts, except: [:index]
  resources :sponsored_posts, except: [:index]
  resources :questions
end

resources :posts, only: [] do
  resources :comments, only: [:create, :destroy]

  post '/up-vote' => 'votes#up_vote', as: :up_vote
  post '/down-vote' => 'votes#down_vote', as: :down_vote
end

  post 'users/confirm' => 'users#confirm'
  get 'about' =>'welcome#about'
  get 'faq' => 'welcome#faq'

  root 'welcome#index'

end
