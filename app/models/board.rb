class Board < ApplicationRecord
  validates :name, presence: true, length: {minimum: 6, maximum: 100}
  validates :visibility, presence: true, length: {minimum: 6, maximum: 8}
end