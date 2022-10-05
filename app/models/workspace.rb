# frozen_string_literal: true

class Workspace < ApplicationRecord
  has_many :boards
  has_many :user_workspaces
  has_many :users, through: :user_workspaces
end
