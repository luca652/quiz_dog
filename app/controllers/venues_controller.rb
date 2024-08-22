class VenuesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  before_action :set_venue, only: [:show, :destroy, :edit, :update]

  def new
    @venue = Venue.new
    @quizmasters = Quizmaster.all
  end

  def index
    @venues = Venue.includes(:quizmasters).all
    @markers = @venues.geocoded.map do |venue|
      {
        lat: venue.latitude,
        lng: venue.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {venue: venue}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def create
    @venue = Venue.new(venue_params)
    if @venue.save
      redirect_to admin_path, notice: 'Venue was successfully created.'
    else
      render :new, status: :unprocessable_entity, notice: 'Could not create Venue. Please try again.'
    end
  end

  def destroy
    @venue.destroy
    redirect_to admin_path, notice: 'Venue was successfully destroyed.'
  end

  def edit
    @hide_navbar = true
  end

  def update
    if @venue.update(venue_params)
      redirect_to venue_path(@venue), notice: 'Venue was successfully updated.'
    else
      render :edit, status: :unprocessable_entity, notice: 'Could not update Venue. Please try again.'
    end
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :address, :phone_number, :user_id, :time, :photo, :day_of_the_week, quizmaster_ids: [])
  end

  def set_venue
    @venue = Venue.find(params[:id])
  end
end
