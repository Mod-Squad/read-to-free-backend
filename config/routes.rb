Rails.application.routes.draw do
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
  get '/books', to: 'books#index'
  # get '/books/:id', to: 'books#show'
  # post '/books', to: 'books#create'
  # patch '/books/:id', to: 'books#update'
  # delete '/books/:id', to: 'books#destroy'
end
