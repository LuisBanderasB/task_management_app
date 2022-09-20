class AddBoardIdToLists < ActiveRecord::Migration[6.1]
  def change
    add_column :lists, :board_id, :int
  end
end
