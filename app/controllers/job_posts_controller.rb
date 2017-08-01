class JobPostsController < ApplicationController
  def new
  end

  def index
    @jobposts = JobPost.all
    render json: @jobposts
  end

  def show
  end

  def create
    @jobposts = JobPost.new(jobpost_params)
    if @jobposts.save
      render json: @jobposts
    else
      render json: @jobposts.errors, status: :unprocessable_entity
    end
  end


  private

  def jobpost_params
    params.permit(:Job_Title, :Job_Location, :Job_Type, :Job_Rate, :Experience_Required, :Skills_Required, :Work_Auth, :Join_Date, :Duration, :Extendable , :Interview_Mode, :Required_Qualification, :Contact_Email, :Contact_Phone, :Resource_Location, :Availability, :Contract_Type, :user_id, :private_post, :job_description
    )
  end
end


