# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :list
  validates :title, presence: true, length: { minimum: 1, maximum: 50 }
  has_many_attached :files
  has_many :tasks_users
  has_many :users, through: :tasks_users
end
