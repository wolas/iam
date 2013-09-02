class CommentsController < ApplicationController
  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(comment_params)
    @post = @comment.post

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @post, notice: 'Comment was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end
  
  private
  def comment_params
    params.require(:comment).permit(:post_id, :body, :author_name, :author_web, :author_email)
  end
end
