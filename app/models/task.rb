class Task < ApplicationRecord
  belongs_to :list
  validates :title, presence: true, length: {minimum: 1, maximum: 50}
end
