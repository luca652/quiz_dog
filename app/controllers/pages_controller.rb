class PagesController < ApplicationController
  skip_before_action :authenticate_user!, except: [ :admin ]

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

  def live_piano_karaoke
  end

  def sustainability
  end

  def contact_us

  end
end
