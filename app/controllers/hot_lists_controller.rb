class HotListsController < ApplicationController
  def new
  end

  def index
    @hotlists = HotList.all
    render json: @hotlists
  end

  def show
  end

  def create
    @hotlists = HotList.new(hotlist_params)
    if @hotlists.save
      render json: @hotlists
    else
      render json: @hotlists.errors, status: :unprocessable_entity
    end
  end

  private

  def hotlist_params
    params.permit(:first_name, :last_name, :resource_title, :resource_summary, :resource_phone, :resource_email, :years_exp, :main_skill, :resource_trade, :employment_authorization, :resource_location, :resource_skill, :relocation_ok, :resource_resume, :availability, :user_id, :resource_active)
  end
end
