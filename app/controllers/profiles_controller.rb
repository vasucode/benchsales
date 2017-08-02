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
    @profiles = Profile.new(profile_params)
    if @profiles.save
      render json: @profiles
    else
      render json: @profiles.errors, status: :unprocessable_entity
    end
  end


  private

  def profile_params
    params.permit(:first_name, :last_name, :organization_name, :organization_email, :organization_phone, :organization_address, :organization_city, :organization_zip, :organization_state, :organization_country, :user_id)
  end
end

