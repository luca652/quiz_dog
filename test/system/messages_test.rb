require "application_system_test_case"

class MessagesTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit messages_url
  #
  #   assert_selector "h1", text: "Messages"
  # end

  setup do
    @message = messages(:first)
  end

  test "Creating a new message" do
    visit contact_us_path
    assert_selector "h1", text: "CONTACT US"

    fill_in "Name", with: "First Test Message"
    fill_in "Email", with: "test@test.com"
    fill_in "Number", with: "07833333333"
    fill_in "Message", with: "Ciao!"
    click_on "Send Message"

    assert_text "Thank you for your message!"
  end
end
