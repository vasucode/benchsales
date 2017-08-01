class AddJdToJobPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :job_posts, :job_description, :text
  end
end
