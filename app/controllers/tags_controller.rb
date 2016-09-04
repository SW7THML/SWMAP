class TagsController < ApplicationController
	def create
		@profile = Profile.find(params[:profile_id])
		@profile.tags.create(tag_params)

		redirect_to edit_profile_path(@profile)
	end
	
	def destroy
		@profile = Profile.find(params[:profile_id])
		@tag = @profile.tags.find(params[:id])
		@tag.destroy
		redirect_to edit_profile_path(@profile) 
	end

private
	def tag_params
		params.require(:tag).permit(:name, :color)
	end
end 