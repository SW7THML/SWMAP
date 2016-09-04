class ProfilesController < ApplicationController
  def show
  	@profile = Profile.find(params[:id])
render :layout => false
  #respond_to do |format|
  #    format.html
  #    format.json { render "_modal.html.erb", :layout => false }
  #  end
  end

	def edit
		@profile = Profile.find(params[:id])
	end

	def update
		@profile = Profile.find(params[:id])
		@profile.update(profile_params)
		redirect_to @profile
	end

	def profile_params
			params.require(:profile).permit(:name, :phone_number, :email, :facebook, :twitter, :github, :blog)
	end
end	
