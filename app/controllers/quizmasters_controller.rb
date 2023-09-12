class QuizmastersController < ApplicationController
  before_action :set_quizmaster, only: [:edit, :update, :destroy]
  def index
  end

  def new
    @hide_navbar = true
    @quizmaster = Quizmaster.new
    @venues = Venue.all
    # @quizmaster.gigs.build
  end

  def create
    @quizmaster = Quizmaster.new(quizmaster_params)
    if @quizmaster.save
      redirect_to admin_path
    else
      redirect_to admin_path, status: :unprocessable_entity
    end
  end

  def edit
    @hide_navbar = true
    @venues = Venue.all
    @quizmaster.gigs.build
  end

  def update
    if @quizmaster.update(quizmaster_params)
      redirect_to admin_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @quizmaster.destroy
    redirect_to admin_path
  end

  private

  # def quizmaster_params
  #   params.require(:quizmaster).permit(:name, :profile, :user_id, :photo, gigs_attributes: [:id, :venue_id, :_destroy])
  # end

  def quizmaster_params
    params.require(:quizmaster).permit(:name, :profile, :user_id, :photo, :id, :venue_id, venue_ids: [])
  end


  def set_quizmaster
    @quizmaster = Quizmaster.find(params[:id])
  end
end
