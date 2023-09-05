class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :index ]

  def admin
    @hide_navbar = true
    @venues = Venue.all
    @venue = Venue.new
    @quizmasters = Quizmaster.all
    @quizmaster = Quizmaster.new
    @gigs = []
    @venues.each do |venue|
      @gigs << Gig.new
    end
  end

  def aboutus
  end
end
