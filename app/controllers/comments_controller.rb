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

	def destroy
		@profile = Profile.find(params[:profile_id])
		@comment = @profile.comments.find(params[:id])
		@comment.destroy
		redirect_to profile_path(@profile)
	end

	def show
  		@profile = Profile.find(params[:profile_id])
		render :layout => false
  #respond_to do |format|
  #    format.html
  #    format.json { render "_modal.html.erb", :layout => false }
  #  end
  end

	private
		def comment_params
			params.require(:comment).permit(:commenter, :body)
		end

end
