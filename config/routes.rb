Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # verb '/path', to: 'controller#action'

  # Display form to create
  # GET http://localhost:3000/restaurants/new
  get '/articles/new',      to: 'articles#new'
  post '/articles',         to: 'articles#create'

  # Read (all)
  # GET http://localhost:3000/restaurants
  get '/articles',          to: 'articles#index'

  # Read (1)
  # GET http://localhost:3000/restaurants/1
  get '/articles/:id',      to: 'articles#show', as: 'article'

  # Display form to update
  # GET http://localhost:3000/restaurants/1/edit
  get '/articles/:id/edit', to: 'articles#edit', as: 'edit_article'
  patch '/articles/:id',    to: 'articles#update'

  # Delete
  # DELETE http://localhost:3000/restaurants/1
  delete 'articles/:id',    to: 'articles#destroy'
end
