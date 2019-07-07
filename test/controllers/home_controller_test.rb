require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "check home routes" do
    assert_generates "/home/index", controller: "home", action: "index"
  end

  test "should redirect to login" do
    get '/home/index'
    assert_response :redirect
    follow_redirect!
    assert_response :success
    css_select 'div.alert.fade.in.alert-danger'
  end
end
