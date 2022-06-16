class CommentsController < ApplicationController
  def new
    # we need @chamber in our `simple_form_for`
    @chamber = Chamber.find(params[:chamber_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    # we need `chamber_id` to associate comment with corresponding chamber
    @chamber = Chamber.find(params[:chamber_id])
    @comment.chamber = @chamber
    @comment.save
    redirect_to chamber_path(@chamber)
  end

  private

  def comment_params
    params.require(:comment).permit(:description, :isValid)
  end
end
