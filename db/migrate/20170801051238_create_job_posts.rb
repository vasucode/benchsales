class CreateJobPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :job_posts do |t|
      t.string :Job_Title
      t.string :Job_Location
      t.string :Job_Type
      t.string :Job_Rate
      t.string :Experience_Required
      t.string :Skills_Required
      t.string :Work_Auth
      t.date :Join_Date
      t.string :Duration
      t.boolean :Extendable
      t.string :Interview_Mode
      t.string :Required_Qualification
      t.string :Contact_Email
      t.string :Contact_Phone
      t.string :Resource_Location
      t.string :Availability
      t.string :Contract_Type
      t.timestamps
    end
  end
end
