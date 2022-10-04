# frozen_string_literal: true

class CreatePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :plans do |t|
      t.string :name
      t.monetize :price
      t.string :description
      t.timestamps
    end
  end
end
