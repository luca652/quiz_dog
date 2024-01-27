require "application_system_test_case"

class MessagesTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit messages_url
  #
  #   assert_selector "h1", text: "Messages"
  # end
  test "Creating a new message" do
    visit contact_us_path
    assert_selector "h1", text: "CONTACT US"

    fill_in "Name", with: "First Test Message"
    click_on "Send"

    assert_text "Thank you for your message!"
  end
end
