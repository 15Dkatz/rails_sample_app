require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  def setup
    @user       = users(:david)
    @other_user = users(:gandalf)
  end

  test "should get new" do
    get signup_path
    assert_response :success
  end

  test "should redirect index when not logged in" do
    get users_path
    assert_redirected_to login_url
  end

  test "should redirect when attempting to edit another user" do
    log_in_as(@user)
    get edit_user_path(@other_user.id)
    assert_redirected_to root_path
  end

end
