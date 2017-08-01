class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :First_Name
      t.string :Last_Name
      t.string :Organization_Name
      t.string :Organization_Email
      t.string :Organization_Phone
      t.string :Organization_Address
      t.string :Organization_City
      t.string :Organization_Zip
      t.string :Organization_State
      t.string :Organization_Country
      t.timestamps
    end
  end
end
