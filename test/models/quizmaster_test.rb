require "test_helper"

class QuizmasterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Can't save quizmaster without user" do
    quizmaster = Quizmaster.new
    assert_not quizmaster.save, "Saved quizmaster without user"
  end

  # test "Can't save quizmaster without name" do
  #   quizmaster = Quizmaster.new(user_id: 1)
  #   assert_not quizmaster.save, "Saved quizmaster without name"
  # end
end
