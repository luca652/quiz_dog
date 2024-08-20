class QuizmastersController < ApplicationController
  before_action :set_quizmaster, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @hide_navbar = true
    @quizmaster = Quizmaster.new
    @venues = Venue.all
  end

  def create
    @quizmaster = Quizmaster.new(quizmaster_params)

    if @quizmaster.save
      redirect_to admin_path, notice: 'Quizmaster was successfully created.'
    else
      @venues = Venue.all
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @hide_navbar = true
    @venues = Venue.all
  end

  def update
    if @quizmaster.update(quizmaster_params)
      redirect_to quizmaster_path(@quizmaster), notice: 'Quizmaster was successfully updated.'
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
