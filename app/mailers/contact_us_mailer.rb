class ContactUsMailer < ApplicationMailer

  def new_question
    @message = params[:message]
    mail(to: "test@test.com", subject: "New Message from Quiz Dog website")
  end

end
