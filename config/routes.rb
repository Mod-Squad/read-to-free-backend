Rails.application.routes.draw do
  # resources :reviews, except: [:new, :edit]
  get '/reviews', to: 'reviews#index'
  get '/reviews/:id', to: 'reviews#show'
  post '/reviews', to: 'reviews#create'
  patch '/reviews/:id', to: 'reviews#update'
  delete '/reviews/:id', to: 'reviews#destroy'
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
  get '/books', to: 'books#index'
  get '/books/:id', to: 'books#show'
  post '/books', to: 'books#create'
  patch '/books/:id', to: 'books#update'
  delete '/books/:id', to: 'books#destroy'
end
