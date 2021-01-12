class Api::V1::ProfilesController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :authenticate_user!
  before_action :set_profile, only: [:show, :update]
  
  def show
    profile = Profile.find_by(id: params[:id])
    if authorized?
      render json: ProfileSerializer.new(profile).serializable_hash.to_json
    else
      handle_unauthorized
    end
  end

  def create
    profile = Profile.new(profile_params)
    if profile.save
      render json: ProfileSerializer.new(profile).serializable_hash.to_json
    else
      render json: {error: "your profile was not saved"}, status: 422
    end
  end

  def update
    profile = Profile.find_by(id: params[:id])
    if authorized?
      if profile.update(profile_params)
        render json: ProfileSerializer.new(profile).serializable_hash.to_json
      else
        render json: {error: profile.error.message}, status 422
      end
    else
      handle_unauthorized
    end
  end
  

  private
    def set_profile
      @profile = Profile.find(params[:id])
    end
    def authorized?
      @profile.user == current_user
    end
    def handle_unauthorized
      unless authorized?
        render json: {"You are not authorized to perform this action"}
      end
    end
end
