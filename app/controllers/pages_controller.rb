class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :host_your_own, :start_a_quiz, :corporate, :charity, :private, :virtual, :aboutus, :corporate_karaoke, :piano_karaoke ]

  def home
    @venues = Venue.all
    @quizmasters = Quizmaster.all
  end

  def admin
    @hide_navbar = true
    @venues = Venue.all
    @venue = Venue.new
    @quizmasters = Quizmaster.all
    @quizmaster = Quizmaster.new
  end

  def host_your_own
  end

  def start_a_quiz
  end

  def corporate
  end

  def charity
  end

  def private
  end

  def virtual
  end

  def about_us
    @quizmasters = Quizmaster.all
  end

  def corporate_karaoke
  end

  def piano_karaoke
  end

  def sustainability
  end
end
