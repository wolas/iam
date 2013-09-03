class Admin::CommentsController < AdminController

  def destroy
    @comment = Comment.find(params[:id])
    @post = @comment.post
    @comment.destroy
      respond_to do |format|
      format.html { redirect_to admin_post_url(@post) }
      format.json { head :no_content }
    end
  end


end