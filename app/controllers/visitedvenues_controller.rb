class VisitedvenuesController < ApplicationController
  def index
    @q = Visitedvenue.ransack(params[:q])
    @visitedvenues = @q.result(:distinct => true).includes(:user, :venue).page(params[:page]).per(10)

    render("visitedvenues/index.html.erb")
  end

  def show
    @visitedvenue = Visitedvenue.find(params[:id])

    render("visitedvenues/show.html.erb")
  end

  def new
    @visitedvenue = Visitedvenue.new

    render("visitedvenues/new.html.erb")
  end

  def create
    @visitedvenue = Visitedvenue.new

    @visitedvenue.user_id = params[:user_id]
    @visitedvenue.venue_id = params[:venue_id]

    save_status = @visitedvenue.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/visitedvenues/new", "/create_visitedvenue"
        redirect_to("/visitedvenues")
      else
        redirect_back(:fallback_location => "/", :notice => "Visitedvenue created successfully.")
      end
    else
      render("visitedvenues/new.html.erb")
    end
  end

  def edit
    @visitedvenue = Visitedvenue.find(params[:id])

    render("visitedvenues/edit.html.erb")
  end

  def update
    @visitedvenue = Visitedvenue.find(params[:id])

    @visitedvenue.user_id = params[:user_id]
    @visitedvenue.venue_id = params[:venue_id]

    save_status = @visitedvenue.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/visitedvenues/#{@visitedvenue.id}/edit", "/update_visitedvenue"
        redirect_to("/visitedvenues/#{@visitedvenue.id}", :notice => "Visitedvenue updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Visitedvenue updated successfully.")
      end
    else
      render("visitedvenues/edit.html.erb")
    end
  end

  def destroy
    @visitedvenue = Visitedvenue.find(params[:id])

    @visitedvenue.destroy

    if URI(request.referer).path == "/visitedvenues/#{@visitedvenue.id}"
      redirect_to("/", :notice => "Visitedvenue deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Visitedvenue deleted.")
    end
  end
end
