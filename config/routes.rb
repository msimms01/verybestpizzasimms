Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "dishes#index"
  # Routes for the Dish_venue resource:
  # CREATE
  get "/dish_venues/new", :controller => "dish_venues", :action => "new"
  post "/create_dish_venue", :controller => "dish_venues", :action => "create"

  # READ
  get "/dish_venues", :controller => "dish_venues", :action => "index"
  get "/dish_venues/:id", :controller => "dish_venues", :action => "show"

  # UPDATE
  get "/dish_venues/:id/edit", :controller => "dish_venues", :action => "edit"
  post "/update_dish_venue/:id", :controller => "dish_venues", :action => "update"

  # DELETE
  get "/delete_dish_venue/:id", :controller => "dish_venues", :action => "destroy"
  #------------------------------

  # Routes for the Visitedvenue resource:
  # CREATE
  get "/visitedvenues/new", :controller => "visitedvenues", :action => "new"
  post "/create_visitedvenue", :controller => "visitedvenues", :action => "create"

  # READ
  get "/visitedvenues", :controller => "visitedvenues", :action => "index"
  get "/visitedvenues/:id", :controller => "visitedvenues", :action => "show"

  # UPDATE
  get "/visitedvenues/:id/edit", :controller => "visitedvenues", :action => "edit"
  post "/update_visitedvenue/:id", :controller => "visitedvenues", :action => "update"

  # DELETE
  get "/delete_visitedvenue/:id", :controller => "visitedvenues", :action => "destroy"
  #------------------------------

  # Routes for the Venue resource:
  # CREATE
  get "/venues/new", :controller => "venues", :action => "new"
  post "/create_venue", :controller => "venues", :action => "create"

  # READ
  get "/venues", :controller => "venues", :action => "index"
  get "/venues/:id", :controller => "venues", :action => "show"

  # UPDATE
  get "/venues/:id/edit", :controller => "venues", :action => "edit"
  post "/update_venue/:id", :controller => "venues", :action => "update"

  # DELETE
  get "/delete_venue/:id", :controller => "venues", :action => "destroy"
  #------------------------------

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
