class QuizmastersController < ApplicationController
  before_action :set_quizmaster, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, only: [ :show ]

  def index
  end

  def show
    @quizmaster = Quizmaster.find(params[:id])
  end

  def new
    @hide_navbar = true
    @quizmaster = Quizmaster.new
    @venues = Venue.all
  end

  def create
    @quizmaster = Quizmaster.new(quizmaster_params)

    if @quizmaster.save
      redirect_to admin_path
    else
      puts "Quizmaster Errors: #{@quizmaster.errors.full_messages.join(', ')}"
      puts "Venue Errors: #{@quizmaster.venues.map { |venue| venue.errors.full_messages }.flatten}"
      redirect_to admin_path, status: :unprocessable_entity
    end
  end

  def edit
    @hide_navbar = true
    @venues = Venue.all
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

  def quizmaster_params
    params.require(:quizmaster).permit(:name, :record, :breed, :fact, :user_id, :photo, venue_ids: [])
  end

  def set_quizmaster
    @quizmaster = Quizmaster.find(params[:id])
  end

end
