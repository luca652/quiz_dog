require "application_system_test_case"

class AboutUsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit messages_url
  #
  #   assert_selector "h1", text: "Messages"
  # end

  # setup do
  #   @message = messages(:first)
  # end

  test "Visiting About Us Page" do
    visit about_us_path
    assert_selector "h1", text: "OUR STORY & HOSTS"

    click_on "Instagram"
    switch_to_window(windows.last)
    assert_equal "https://www.instagram.com/quizdog/", current_url
  end
end
