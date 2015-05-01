require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  setup do
    @comment = comments(:one)
    session[:full_name] = comments(:one).full_name
    session[:email] = comments(:one).email
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment" do
    assert_difference('Comment.count', 1) do
      post :create, comment: { email: @comment.email, full_name: @comment.full_name, content: 'New content' }
    end

    assert_redirected_to comment_path(assigns(:comment))
  end

  test "should show comment" do
    get :show, id: @comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment
    assert_response :success
  end

  test "should update comment" do
    patch :update, id: @comment, comment: { email: 'user-one@example.com', full_name: 'Updated Name', content: 'Updated contnent.' }
    assert_response :redirect
    assert_redirected_to comment_path(@comment)
  end

  test "authorized user can delete comment" do
    assert_difference('Comment.count', -1) do
      delete :destroy, id: @comment
    end

    assert_redirected_to comments_path
  end

  test "unauthorized user cannot delete comment" do
    session[:full_name] = nil
    session[:email] = nil
    assert_difference('Comment.count', 0) do
      delete :destroy, id: @comment
    end

    assert_redirected_to root_path
  end
end
