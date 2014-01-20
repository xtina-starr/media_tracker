MediaRanker::Application.routes.draw do

  get '/', to: 'home#index'

  # Movie Routes
  get '/movies', to: 'movies#index'
  get '/movies/new', to: 'movies#new', as: :new_movie
  post '/movies', to: 'movies#create'
  get '/movies/:id', to: 'movies#show', as: :movies_show
  get '/movies/:id/edit', to: 'movies#edit', as: :movie_edit
  patch '/movies/:id', to: 'movies#update', as: :movie_update
  get '/movies/:id/delete', to: 'movies#delete', as: :movie_delete
  patch '/movies/:id/upvote', to: 'movies#upvote', as: :movie_vote

  #Book Routes
  get '/books', to: 'books#index'
  get '/books/new', to: 'books#new', as: :books_new
  post '/books', to: 'books#create'
  get '/books/:id', to: 'books#show', as: :books_show
  get '/books/:id/edit', to:'books#edit', as: :book_edit
  patch '/books/:id', to: 'books#update', as: :book_update
  get '/books/:id/delete', to: "books#delete", as: :book_delete
  patch '/books/:id/upvote', to: 'books#upvote', as: :book_vote

  #Album Routes
  get '/albums', to: 'albums#index'
  get 'albums/new', to: 'albums#new', as: :new_album
  post '/albums', to: 'albums#create'
  get '/albums/:id', to: 'albums#show', as: :album_show
  get '/albums/:id/edit', to: 'albums#edit', as: :album_edit
  patch '/albums/:id', to: 'albums#update', as: :album_update


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
