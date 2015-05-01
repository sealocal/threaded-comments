require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  setup do
    # begin with a valid comment
    @comment = Comment.new(
      full_name: comments(:one).full_name,
      email: comments(:one).email,
      content: comments(:one).content
    )
  end

  test "valid comments are saved" do
    assert @comment.save
  end

  test "full_name cannot be blank" do
    @comment.full_name = nil
    assert_not @comment.save
  end

  test "full_name must contain two tokens" do
    @comment.full_name = 'SingleToken'
    assert_not @comment.save
  end

  test "email cannot be blank" do
    @comment.email = nil
    assert_not @comment.save
  end

  test "content cannot be blank" do
    @comment.content = nil
    assert_not @comment.save
  end

  test "must have a valid email address" do
    @comment.email = "userATexample.com"
    assert_not @comment.save
  end
end
