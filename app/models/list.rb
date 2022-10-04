# frozen_string_literal: true

class List < ApplicationRecord
  belongs_to :board
  has_many :tasks, dependent: :destroy
  validates :name, presence: true, length: { minimum: 1, maximum: 25 }
end
