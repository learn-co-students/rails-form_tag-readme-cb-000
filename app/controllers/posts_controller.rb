class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    post = Post.new(post_params)
    if post.save
      redirect_to posts_path
    else
      redirect_to new_posts_path
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :description)
  end
end
