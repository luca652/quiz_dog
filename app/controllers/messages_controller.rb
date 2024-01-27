class MessagesController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      redirect_to contact_us_path, notice: "Thank you for your message!"
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :number, :message)
  end
end
