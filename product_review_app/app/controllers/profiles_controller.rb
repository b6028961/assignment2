class ProfilesController < ApplicationController
    before_action :set_profile, only: [:edit, :update]
    def index
        @profiles=Profile.all
    end
    def new 
    end
    def edit
        @profile=Profile.find(params[:id])
    end
    def update
        if @profile.update(profile_params)
            redirect_to @profile
        else
            render 'edit'
        end
    end
    def set_profile
        @profile = Profile.find(params[:id])
    end
    def destroy
        @profile = Profile.find(params[:id])
        @profile.destroy
        redirect_to profiles_path
    end
    def show
        @profile=Profile.find(params[:id])
    end
    def create
       # render plain: params[:product] .inspect
       @profile=Profile.new(profile_params)
       @profile.save
       redirect_to @profile
    end
    private
    def profile_params
        params.require(:profile) .permit(:Name, :DoB, :Address, :City, :Country, :Photo)
    end
end
