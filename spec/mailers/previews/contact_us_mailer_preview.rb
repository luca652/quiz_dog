# Preview all emails at http://localhost:3000/rails/mailers/contact_us_mailer
class ContactUsMailerPreview < ActionMailer::Preview

  def new_question
    @message = Message.new(name: "Test", email: "test@test.com", number: "123456", message: "I want to quizmaster all night long")
    ContactUsMailer.with(message: @message).new_question
  end
end
