class AddPrivateToJobPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :job_posts, :private_post, :boolean
  end
end
