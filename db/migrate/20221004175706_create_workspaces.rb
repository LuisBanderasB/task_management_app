class CreateWorkspaces < ActiveRecord::Migration[6.1]
  def change
    create_table :workspaces do |t|
      t.references :manager, null: false, references: :users, foreign_key: { to_table: :users}

      t.timestamps
    end
  end
end
