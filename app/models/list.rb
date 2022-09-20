class List < ApplicationRecord
  belongs_to :board
  validates :name, presence: true, length: {minimum: 1, maximum: 25}
end
