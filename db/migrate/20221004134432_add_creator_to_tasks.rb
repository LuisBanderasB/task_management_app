# frozen_string_literal: true

class AddCreatorToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :author, :int
  end
end
