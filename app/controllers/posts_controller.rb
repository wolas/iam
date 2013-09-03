class PostsController < ApplicationController

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
    @recent_posts = @posts.slice(1..5)
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
    @comment = Comment.new
  end
end


  