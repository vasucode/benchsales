class AddUseridToJobPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :job_posts, :user_id, :bigint
  end
end
