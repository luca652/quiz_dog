class PagesController < ApplicationController
  skip_before_action :authenticate_user!, except: [ :admin ]

  def admin
    @hide_navbar = true
    @venues = Venue.includes(:quizmasters).all
    @venue = Venue.new
    @quizmasters = Quizmaster.includes(:venues).all
    @quizmaster = Quizmaster.new
  end

  def about_us
    @quizmasters = Quizmaster.includes(:venues).all
  end

  def contact_us
    @message = Message.new
  end

end
