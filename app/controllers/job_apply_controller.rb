class JobApplyController < ApplicationController
  def new
  end

  def index
    @jobapplies = JobApply.all
    render json: @jobapplies
  end

  def show
  end

  def create
    @jobapplies = JobApply.new(jobapply_params)
    if @jobapplies.save
      render json: @jobapplies
    else
      render json: @jobapplies.errors, status: :unprocessable_entity
    end
  end


  private

  def jobapply_params
    params.permit(:job_post_id, :hot_list_id)
  end
end
