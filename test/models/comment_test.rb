require "test_helper"

# Here we test validations for the Comment Model

class CommentTest < ActiveSupport::TestCase
  setup do
    @comment1 = comments(:without_content)
    @comment2 = comments(:with_content)
  end

  test "adding_comment_should_fail" do
    assert_not @comment1.save
  end

  test "adding_comment_should_pass" do
    assert @comment2.save
  end
end
