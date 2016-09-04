class CommentsController < ApplicationController
	def create
		@profile = Profile.find(params[:profile_id])
		@comment = @profile.comments.create(comment_params)
		if @comment.persisted?
			render :json => @comment
		else
			render :json => {msg: "Error"}, :status => 500
		end
		
		#redirect_to root_path
	end

	private
		def comment_params
			params.require(:comment).permit(:commenter, :body)
		end

end
