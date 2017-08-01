class AddUseridToHotLists < ActiveRecord::Migration[5.1]
  def change
    add_column :hot_lists, :user_id, :bigint
  end
end
