class ContactUsMailer < ApplicationMailer

  default from: 'joe@quiz.dog'

  def new_question
    @message = params[:message]
    mail(to: "lucagastaldi82@gmail.com", subject: "New Message from Quiz Dog website")
  end

end
