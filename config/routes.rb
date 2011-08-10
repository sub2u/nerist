Nerist::Application.routes.draw do

  root :to => "home#home"
  resources :aluminiprofiles

  resources :facultiprofiles

  resources :empprofiles

  resources :events

  resources :stuprofiles

 get 'customers/signin'
  match 'signin' => 'customers#signin'
  get 'home/homeone'
  match 'home' => 'home#homeone'
  post 'customers/login'
  get 'customers/logout'
  resources :customers
  match '/customers' => 'home#home'
  resources :feedbacks
  get "home/home"
  get "home/news"
  get "home/newslist"
  get "home/happenlist"
    get "home/happening"
  get "home/csehome"
  get "home/csecourses"
  get "home/csefaculty"
  get "home/cselaboratory"
  get "home/cselibrary"
  get "home/cseresearch"
  get "home/csecan"
  get "home/ecehome"
  get "home/ececourses"
  get "home/ecefaculty"
  get "home/ecelaboratory"
  get "home/other"
  match 'cse' => 'home#csehome'
  match 'csecourses' => 'home#csecourses'
  match 'csefaculty' => 'home#csefaculty'
  match 'cselaboratory' => 'home#cselaboratory'
  match 'cselibrary' => 'home#cselibrary'
  match 'cseresearch' => 'home#cseresearch'
  match 'csecan' => 'home#csecan'
  match 'ece' => 'home#ecehome'
  match 'ececourses' => 'home#ececourses'
  match 'ecefaculty' => 'home#ecefaculty'
  match 'ecelaboratory' => 'home#ecelaboratory'
  match 'other' => 'home#other'
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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
