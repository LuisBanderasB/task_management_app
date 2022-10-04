# frozen_string_literal: true

class UserBoard < ApplicationRecord
  belongs_to :user
  belongs_to :board
end
