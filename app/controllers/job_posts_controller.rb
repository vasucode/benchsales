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
    params.permit(:job_title, :job_location, :job_type, :job_rate, :experience_required, :skills_required, :work_auth, :join_date, :duration, :extendable , :interview_mode, :required_qualification, :contact_email, :contact_phone, :resource_location, :availability, :contract_type, :user_id, :private_post, :job_description
    )
  end
end


