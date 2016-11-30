Rails.application.routes.draw do
  get 'summary/view'

  mount FullcalendarEngine::Engine => "/fullcalendar/demo"
  # get "/fullcalendar/demo" =>
  # root :to => redirect('/fullcalendar/demo')
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  
  
  # Session routes
  get 'auth/:provider/callback', to: 'sessions#handle_auth', as: 'auth_success'
  get 'auth/failure', to: 'sessions#handle_failure', as: 'auth_failure'
  delete 'signout' => 'sessions#destroy', :as => :signout
  get 'create', to: 'sessions#create', as: 'create_session'
  get 'login', to: 'sessions#login', as: 'login'
  get 'signup', to: 'sessions#signup', as: 'signup'
  
  resources :users, only: [:show, :edit, :update, :destroy, :index]
  post 'users/:id/edit', to: 'users#edit'
  
  # You can have the root of your site routed with "root"
  root  "home#index"
  # resource 'home'
  get '/kalendar' => 'kalendar#index', as: :kalendar
  
  get '/summary' => 'summary#view'

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
