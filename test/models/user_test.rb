# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = users(:valid)
  end

  test 'not save without required fields' do
    user = User.new
    assert_not user.valid?
    assert_equal %i[email password first_name], user.errors.keys
  end

  test 'valid user' do
    assert @user.valid?
  end
end
