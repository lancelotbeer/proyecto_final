class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    @comment = Comment.new(content: params[:comment][:content])
    @comment.user = current_user
    @comment.post_id = params[:post_id]
    @comment.save
    redirect_to post_path(params[:post_id])
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.user == current_user
      @post = @comment.post
      @comment.destroy
      respond_to do |format|
        format.html { redirect_to @post, notice: 'Comment was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  end
end
