class AddWorkspaceIdToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :workspace, index: true
  end
end
