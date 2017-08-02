class RenameFieldsProfile < ActiveRecord::Migration[5.1]
  def change
    rename_column(:profiles, :First_Name, :first_name)
    rename_column(:profiles, :Last_Name, :last_name)
    rename_column(:profiles, :Organization_Name, :organization_name)
    rename_column(:profiles, :Organization_Email, :organization_email)
    rename_column(:profiles, :Organization_Phone, :organization_phone)
    rename_column(:profiles, :Organization_Address, :organization_address)
    rename_column(:profiles, :Organization_City, :organization_city)
    rename_column(:profiles, :Organization_Zip, :organization_zip)
    rename_column(:profiles, :Organization_State, :organization_state)
    rename_column(:profiles, :Organization_Country, :organization_country)
  end
end