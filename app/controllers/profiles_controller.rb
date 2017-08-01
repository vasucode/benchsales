class ProfilesController < ApplicationController
  def new
  end

  def index
    @profiles = Profile.all
    render json: @profiles
  end

  def show
  end

  def create
    @profiles = JobPost.new(profile_params)
    if @profiles.save
      render json: @profiles
    else
      render json: @profiles.errors, status: :unprocessable_entity
    end
  end


  private

  def profile_params
    params.permit(:First_Name, :Last_Name, :Organization_Name, :Organization_Email, :Organization_Phone, :Organization_Address, :Organization_City, :Organization_Zip, :Organization_State, :Organization_Country, :user_id)
  end
end

