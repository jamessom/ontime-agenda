require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
  test "should get login screen" do
    get new_user_session_path
    assert_response :success
  end
end
