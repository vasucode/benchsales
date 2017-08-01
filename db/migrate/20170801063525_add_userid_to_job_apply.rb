class AddUseridToJobApply < ActiveRecord::Migration[5.1]
  def change
    add_column :job_applies, :job_post_id, :bigint
    add_column :job_applies, :hot_list_id, :bigint
  end
end
