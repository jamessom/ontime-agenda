require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "check home routes" do
    assert_generates "/home/index", controller: "home", action: "index"
  end
end
