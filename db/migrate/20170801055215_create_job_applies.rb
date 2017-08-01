class CreateJobApplies < ActiveRecord::Migration[5.1]
  def change
    create_table :job_applies do |t|

      t.timestamps
    end
  end
end
