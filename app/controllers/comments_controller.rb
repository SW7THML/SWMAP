class CommentsController < ApplicationController
	def create
		@profile = Profile.find(params[:profile_id])
		@comment = @profile.comments.create(comment_params)

		if @comment.persisted?
			ProfileChannel.broadcast_to(@profile, @comment)

			render :json => @comment
		else
			render :json => {msg: "Error"}, :status => 500
		end
	end

	def destroy
		@profile = Profile.find(params[:profile_id])
		@comment = @profile.comments.find(params[:id])
		@comment.destroy
		redirect_to profile_path(@profile)
	end

	def show
		@profile = Profile.find(params[:profile_id])
		redirect_to root_path(@profile)
	end

	private
	def comment_params
		params.require(:comment).permit(:commenter, :body)
	end
end
