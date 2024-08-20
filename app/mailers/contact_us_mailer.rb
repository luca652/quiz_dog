class ContactUsMailer < ApplicationMailer

  default from: 'joe@quiz.dog'

  def new_question
    @message = params[:message]
    mail(to: ENV["MAILER_DELIVERY_ADDRESS"], subject: "New Message from Quiz Dog website")
  end

end
