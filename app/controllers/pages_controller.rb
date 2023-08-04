class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :index ]

  def admin
    @venues = Venue.all
    @venue = Venue.new
  end

end
