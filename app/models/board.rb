class Board < ApplicationRecord
  has_many :lists, dependent: :destroy
  validates :name, presence: true, length: {minimum: 6, maximum: 100}
  validates :visibility, presence: true, length: {minimum: 6, maximum: 8}
end