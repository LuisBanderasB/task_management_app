class List < ApplicationRecord
  validates :name, presence: true, length: {minimum: 1, maximum: 25}
end
