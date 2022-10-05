class AddWorkspaceToBoard < ActiveRecord::Migration[6.1]
  def change
    add_reference :boards, :workspace, index: true 
  end
end
