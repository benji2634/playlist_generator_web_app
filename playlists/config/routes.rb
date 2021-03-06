Rails.application.routes.draw do

  # get 'artists' => 'artists#index'
  # get 'artists/:id' => 'artists#show'

  # get 'genres' => 'genres#index'
  # get 'genres/:id' => 'genres#show'

  # get 'playlists' => 'playlists#index'
  # get 'playlists/:id' => 'playlists#show'

  # get 'songs' => 'songs#index'
  # get 'songs/:id' => 'songs#show'

  # get 'gigs' => 'gigs#index'
  # get 'gigs/:id' => 'gigs#show'

  scope path: "api" do
    resources :songs, defaults: {format: :json}
    resources :artists, defaults: {format: :json}
    resources :playlists, defaults: {format: :json}
    resources :gigs, defaults: {format: :json}
  end
  
  resources :songs
  resources :artists
  resources :genres
  resources :about
  resources :playlists
  resources :gigs

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
