class CreateHotLists < ActiveRecord::Migration[5.1]
  def change
    create_table :hot_lists do |t|
      t.string :First_Name
      t.string :Last_Name
      t.string :Resource_Title
      t.text :Resource_Summary
      t.string :Resource_Phone
      t.string :Resource_Email
      t.string :Years_Exp
      t.string :Main_Skill
      t.string :Resource_Trade
      t.string :Employment_Authorization
      t.string :Resource_Location
      t.text :Resource_Skill
      t.string :Relocation_Ok
      t.text :Resource_Resume
      t.string :Availability

      t.timestamps
    end
  end
end
