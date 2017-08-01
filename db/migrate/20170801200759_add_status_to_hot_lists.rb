class AddStatusToHotLists < ActiveRecord::Migration[5.1]
  def change
    add_column :hot_lists, :resource_active, :boolean
  end
end
