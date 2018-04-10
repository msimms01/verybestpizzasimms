Rails.application.routes.draw do
  # Routes for the Bucket_list resource:
  # CREATE
  get "/bucket_lists/new", :controller => "bucket_lists", :action => "new"
  post "/create_bucket_list", :controller => "bucket_lists", :action => "create"

  # READ
  get "/bucket_lists", :controller => "bucket_lists", :action => "index"
  get "/bucket_lists/:id", :controller => "bucket_lists", :action => "show"

  # UPDATE
  get "/bucket_lists/:id/edit", :controller => "bucket_lists", :action => "edit"
  post "/update_bucket_list/:id", :controller => "bucket_lists", :action => "update"

  # DELETE
  get "/delete_bucket_list/:id", :controller => "bucket_lists", :action => "destroy"
  #------------------------------

  # Routes for the Dish resource:
  # CREATE
  get "/dishes/new", :controller => "dishes", :action => "new"
  post "/create_dish", :controller => "dishes", :action => "create"

  # READ
  get "/dishes", :controller => "dishes", :action => "index"
  get "/dishes/:id", :controller => "dishes", :action => "show"

  # UPDATE
  get "/dishes/:id/edit", :controller => "dishes", :action => "edit"
  post "/update_dish/:id", :controller => "dishes", :action => "update"

  # DELETE
  get "/delete_dish/:id", :controller => "dishes", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
