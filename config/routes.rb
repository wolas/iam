Iam::Application.routes.draw do
  
  resources :line_items

  resources :carts

  resources :comments
  resources :posts

  get "events/:id", to: "events#show", as: "event"
  get "expositions", to: "events#expositions"
  get "pop-ups", to: "events#popups", as: "popups"
  
  get "artists", to: "artists#index"
  get "artists/:id", to: "artists#show", as: "artist"

  get "paintings/:id", to: "paintings#show", as: "painting"
  
  get "legal" => "static#legal", :as => "legal"
  get "manifesto" => "static#manifesto", :as => "manifesto"
  get "trajectory" => "static#trajectory", :as => "trajectory"
  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static#index'

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
  get "admin" => "admin#index"
  
  namespace :admin do
    # Directs /admin/products/* to Admin::ProductsController
    # (app/controllers/admin/products_controller.rb)
    
    
    resources :artists do
      resources :paintings
    end
    
    resources :photos
    get 'events/tag/:tag_name', to: "events#tag", as: 'event_tag'
    resources :events
    resources :posts do
      resources :comments
    end
    
  end
end
