Rails.application.routes.draw do
  resources :posts
  resources :users

  root to: 'sites#index'

  get 'signup', to: 'users#new'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy', as: 'logout'

  get '/about', to: 'sites#about'
  get '/contact', to: 'sites#contact'

#    Prefix Verb   URI Pattern               Controller#Action
#     posts GET    /posts(.:format)          posts#index
#           POST   /posts(.:format)          posts#create
#  new_post GET    /posts/new(.:format)      posts#new
# edit_post GET    /posts/:id/edit(.:format) posts#edit
#      post GET    /posts/:id(.:format)      posts#show
#           PATCH  /posts/:id(.:format)      posts#update
#           PUT    /posts/:id(.:format)      posts#update
#           DELETE /posts/:id(.:format)      posts#destroy
#     users GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
#  new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user GET    /users/:id(.:format)      users#show
#           PATCH  /users/:id(.:format)      users#update
#           PUT    /users/:id(.:format)      users#update
#           DELETE /users/:id(.:format)      users#destroy
#           GET    /                         sites#index
#    signup GET    /signup(.:format)         users#new
#     login GET    /login(.:format)          sessions#new
#           POST   /login(.:format)          sessions#create
#    logout GET    /logout(.:format)         sessions#destroy
#     about GET    /about(.:format)          sites#about
#   contact GET    /contact(.:format)        sites#contact

end
