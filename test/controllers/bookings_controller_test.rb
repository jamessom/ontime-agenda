require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @booking = bookings(:one)
    @user = users(:valid)
    @current_user = @user

    get new_user_session_path
    login_as @user
    post user_session_url
    follow_redirect!
    assert_response :success
  end

  test "should get index" do
    get bookings_path
    assert_response :success
  end

  test "should get new" do
    get new_booking_path(@booking)
    assert_response :success
  end

  test "should create booking" do
    assert_difference('Booking.count') do
      post bookings_url, params: { booking: { description: "Some description", user_id:1 } }
    end

    assert_redirected_to booking_path(Booking.last)
  end

  test "should show booking" do
    get booking_url(@booking)
    assert_response :success
  end

  test "should get edit" do
    get edit_booking_url(@booking)
    assert_response :success
  end

  test "should update booking" do
    patch booking_url(@booking), params: { booking: { description: @booking.description, user_id: @booking.user_id } }
    assert_response :success
  end

  test "should destroy booking" do
    assert_difference('Booking.count', -1) do
      delete booking_url(@booking)
    end

    assert_redirected_to bookings_url
  end
end
