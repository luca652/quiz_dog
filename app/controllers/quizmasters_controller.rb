class QuizmastersController < ApplicationController
  before_action :set_quizmaster, only: [:edit, :update, :destroy]
  def index
  end

  def create
    @quizmaster = Quizmaster.new(quizmaster_params)
    if @quizmaster.save
      redirect_to admin_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
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
    params.require(:quizmaster).permit(:name, :profile, :user_id)
  end

  def set_quizmaster
    @quizmaster = Quizmaster.find(params[:id])
  end
end
