class RenameTableColumns < ActiveRecord::Migration[5.1]
  def change
    rename_column(:hot_lists, :First_Name, :first_name)
    rename_column(:hot_lists, :Last_Name, :last_name)
    rename_column(:hot_lists, :Resource_Title, :resource_title)
    rename_column(:hot_lists, :Resource_Summary, :resource_summary)
    rename_column(:hot_lists, :Resource_Phone, :resource_phone)
    rename_column(:hot_lists, :Resource_Email, :resource_email)
    rename_column(:hot_lists, :Years_Exp, :years_exp)
    rename_column(:hot_lists, :Main_Skill, :main_skill)
    rename_column(:hot_lists, :Resource_Trade, :resource_trade)
    rename_column(:hot_lists, :Employment_Authorization, :employment_authorization)
    rename_column(:hot_lists, :Resource_Location, :resource_location)
    rename_column(:hot_lists, :Resource_Skill, :other_skill)
    rename_column(:hot_lists, :Relocation_Ok, :relocation_ok)
    rename_column(:hot_lists, :Resource_Resume, :resource_resume)
    rename_column(:hot_lists, :Availability, :availability)
    rename_column(:job_posts, :Job_Title, :job_title)
    rename_column(:job_posts, :Job_Location, :job_location)
    rename_column(:job_posts, :Job_Type, :job_type)
    rename_column(:job_posts, :Job_Rate, :job_rate)
    rename_column(:job_posts, :Experience_Required, :experience_required)
    rename_column(:job_posts, :Skills_Required, :skills_required)
    rename_column(:job_posts, :Work_Auth, :work_auth)
    rename_column(:job_posts, :Join_Date, :join_date)
    rename_column(:job_posts, :Duration, :duration)
    rename_column(:job_posts, :Extendable, :extendable)
    rename_column(:job_posts, :Interview_Mode, :interview_mode)
    rename_column(:job_posts, :Required_Qualification, :required_qualification)
    rename_column(:job_posts, :Contact_Email, :contact_email)
    rename_column(:job_posts, :Contact_Phone, :contact_phone)
    rename_column(:job_posts, :Resource_Location, :resource_location)
    rename_column(:job_posts, :Availability, :availability)
    rename_column(:job_posts, :Contract_Type, :contract_type)
  end
end