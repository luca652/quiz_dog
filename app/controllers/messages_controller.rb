class MessagesController < ApplicationController

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

end
