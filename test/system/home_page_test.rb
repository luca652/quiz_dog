require "application_system_test_case"

class HomePageTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit messages_url
  #
  #   assert_selector "h1", text: "Messages"
  # end

  # setup do
  #   @message = messages(:first)
  # end

  test "Visiting Home Page" do
    visit root_path
    assert_selector "h1", text: "QUIZZING"
    assert_selector "h1", text: "KARAOKE"
    assert_selector "h1", text: "ABOUT QUIZ DOG"
    assert_selector "h1", text: "CONTACT US"

    click_on "FIND A QUIZ"

    assert_selector "h1", text: "OUR PUBS"
  end
end
