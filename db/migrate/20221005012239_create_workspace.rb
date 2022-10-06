class CreateWorkspace < ActiveRecord::Migration[6.1]
  def change
    create_table :workspaces do |t|
      t.string :name
      t.references :plan, index: true, foreign_key: true
      t.integer :manager_id, index: true

      t.timestamps
    end
  end
end
