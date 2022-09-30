class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.datetime :started_at
      t.datetime :finished_at
      t.text :justification
      t.integer :list_id

      t.timestamps
    end
  end
end
