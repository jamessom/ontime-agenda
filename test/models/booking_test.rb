# frozen_string_literal: true

require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  def setup
    @booking = Booking.new(description: 'Some description', user_id: 1)
  end

  test 'valid booking' do
    assert @booking.valid?
  end

  test 'not save without required fields' do
    @booking.user_id = nil
    refute @booking.valid?
    assert_not_nil @booking.errors[:user_id]

    @booking.description = nil
    refute @booking.valid?, 'Must be valid'
    assert_equal %i[user description], @booking.errors.keys, 'Value description and user_id must be present'
  end
end
