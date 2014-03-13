Midterm::Application.routes.draw do
  resources :books ,:authors
  
  match 'books/new',  to: 'books#new',            via: 'get'
  match 'books/show',  to: 'books#show',            via:'get'
  match 'books/edit',  to: 'books#edit',            via: 'get'
  match 'books/index',  to: 'books#index',            via: 'get'
  match 'books/create',  to: 'books#create',            via: 'post'
  match 'books/update',  to: 'books#update',            via: 'put'
  match 'books/destroy',  to: 'books#destroy',            via: 'delete'
  match 'authors/new',  to: 'authors#new',            via: 'get'
  match 'authors/show',  to: 'authors#show',            via:'get'
  match 'authors/edit',  to: 'authors#edit',            via: 'get'
  match '/',  to: 'authors#index',            via: 'get'
  match 'authors/create',  to: 'authors#create',            via: 'post'
  match 'authors/update',  to: 'authors#update',            via: 'put'
  match 'authors/destroy',  to: 'authors#destroy',            via: 'delete'
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
