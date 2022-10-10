# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :user_workspaces
  has_many :workspaces, through: :user_workspaces, dependent: :delete_all
  has_many :tasks_users
  has_many :users, through: :tasks_users
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
end
