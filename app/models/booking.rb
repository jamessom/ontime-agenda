# frozen_string_literal: true

class Booking < ApplicationRecord
  belongs_to :user

  validates :description, presence: true
end
