class DishVenuesController < ApplicationController
  def index
    @dish_venues = DishVenue.all

    render("dish_venues/index.html.erb")
  end

  def show
    @dish_venue = DishVenue.find(params[:id])

    render("dish_venues/show.html.erb")
  end

  def new
    @dish_venue = DishVenue.new

    render("dish_venues/new.html.erb")
  end

  def create
    @dish_venue = DishVenue.new

    @dish_venue.dish_id = params[:dish_id]
    @dish_venue.venue_id = params[:venue_id]

    save_status = @dish_venue.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/dish_venues/new", "/create_dish_venue"
        redirect_to("/dish_venues")
      else
        redirect_back(:fallback_location => "/", :notice => "Dish venue created successfully.")
      end
    else
      render("dish_venues/new.html.erb")
    end
  end

  def edit
    @dish_venue = DishVenue.find(params[:id])

    render("dish_venues/edit.html.erb")
  end

  def update
    @dish_venue = DishVenue.find(params[:id])

    @dish_venue.dish_id = params[:dish_id]
    @dish_venue.venue_id = params[:venue_id]

    save_status = @dish_venue.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/dish_venues/#{@dish_venue.id}/edit", "/update_dish_venue"
        redirect_to("/dish_venues/#{@dish_venue.id}", :notice => "Dish venue updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Dish venue updated successfully.")
      end
    else
      render("dish_venues/edit.html.erb")
    end
  end

  def destroy
    @dish_venue = DishVenue.find(params[:id])

    @dish_venue.destroy

    if URI(request.referer).path == "/dish_venues/#{@dish_venue.id}"
      redirect_to("/", :notice => "Dish venue deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Dish venue deleted.")
    end
  end
end
