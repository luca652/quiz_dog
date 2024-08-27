class MessagesController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    # veryfying captcha first
    if verify_recaptcha(model: @message)
      if @message.valid?
        ContactUsMailer.with(message: @message).new_question.deliver_now
        redirect_to contact_us_path, notice: "Thank you for your message!"
      else
        flash.now[:alert] = "Please check the form for errors."
        render 'pages/contact_us', status: :unprocessable_entity
      end
    else
      @message.errors.add(:base, "You must complete the reCAPTCHA to submit the form.")
      flash.now[:alert] = "You must complete the reCAPTCHA to submit the form."
      render 'pages/contact_us', status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :number, :message)
  end
end
