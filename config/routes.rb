# == Route Map
#
#      ratings GET    /ratings(.:format)           ratings#index
#              POST   /ratings(.:format)           ratings#create
#   new_rating GET    /ratings/new(.:format)       ratings#new
#  edit_rating GET    /ratings/:id/edit(.:format)  ratings#edit
#       rating GET    /ratings/:id(.:format)       ratings#show
#              PUT    /ratings/:id(.:format)       ratings#update
#              DELETE /ratings/:id(.:format)       ratings#destroy
#        songs GET    /songs(.:format)             songs#index
#              POST   /songs(.:format)             songs#create
#     new_song GET    /songs/new(.:format)         songs#new
#    edit_song GET    /songs/:id/edit(.:format)    songs#edit
#         song GET    /songs/:id(.:format)         songs#show
#              PUT    /songs/:id(.:format)         songs#update
#              DELETE /songs/:id(.:format)         songs#destroy
# rating_album GET    /albums/:id/rating(.:format) albums#rating
#       albums GET    /albums(.:format)            albums#index
#              POST   /albums(.:format)            albums#create
#    new_album GET    /albums/new(.:format)        albums#new
#   edit_album GET    /albums/:id/edit(.:format)   albums#edit
#        album GET    /albums/:id(.:format)        albums#show
#              PUT    /albums/:id(.:format)        albums#update
#              DELETE /albums/:id(.:format)        albums#destroy
#

Spotify::Application.routes.draw do
  root :to => 'songs#index'

  resources :ratings


  resources :songs


  resources :albums do
    member do
      get 'rating'
    end
    collection do
      get 'top2'
    end
  end


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
