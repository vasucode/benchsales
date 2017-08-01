class HotListsController < ApplicationController
  def new
  end

  def index
    @hotlists = HotList.all
    render json: @HotLists
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
    params.permit(:First_Name, :Last_Name, :Resource_Title, :Resource_Summary, :Resource_Phone, :Resource_Email, :Years_Exp, :Main_Skill, :Resource_Trade, :Employment_Authorization, :Resource_Location, :Resource_Skill, :Relocation_Ok, :Resource_Resume, :Availability, :user_id, :resource_active)
  end
end
