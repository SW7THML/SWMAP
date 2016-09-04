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

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end

end
