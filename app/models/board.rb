class Board < ApplicationRecord
  has_many :user_boards, dependent: :destroy
  has_many :users, through: :user_boards
  has_many :lists, dependent: :destroy
  validates :name, presence: true, length: { minimum: 6, maximum: 100 }
  validates :visibility, presence: true, length: { minimum: 6, maximum: 8 }
end
