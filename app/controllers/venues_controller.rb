class VenuesController < ApplicationController
  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def create
    @venue = Venue.new(venue_params)
    if @venue.save
      redirect_to admin_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    @venue = Venue.find(params[:id])
    if @venue.update(venue_params)
      redirect_to admin_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :address, :phone_number, :user_id)
  end
end
