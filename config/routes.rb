DBNotes::Application.routes.draw do

#match 'modeldata', to: "ModelInfo#index"
match 'DBNotes',  to: "ModelInfo#DBNotes"

# If user clicks on Table-name, display all notes of all columns (for now)
# This will probably change to just display some info about the Table
#match 'tables/:table', to: "ModelInfo#show_notes_for_table", as: "table"

#If user clicks on a Column-name, display all notes for that column
match 'tables/:table/columns/:column(.format)', to: "ModelInfo#show_notes_for_column", as: "table_column"

match 'add_note', to: "ModelInfo#add_note"

match 'add_comment', to: "ModelInfo#add_comment"

match 'get_login_status', to: "ModelInfo#user_logged_in"

match 'user_authenticate', to: "ModelInfo#user_authenticate"

match 'is_user_logged_in', to: "ModelInfo#is_user_logged_in"

match 'get_author_name', to: "ModelInfo#get_author_name"

match 'get_table_notes_count', to: "ModelInfo#get_table_notes_count"

match 'get_column_notes_count', to: "ModelInfo#get_column_notes_count"

match 'get_column_notes_count_within_a_table', to: "ModelInfo#get_column_notes_count_within_a_table"

resources :notes do
  resources :comments
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
