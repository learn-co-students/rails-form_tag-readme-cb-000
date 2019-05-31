class PostsController < ApplicationController
  def index # - a GET request
    @posts = Post.all
    # renders 'app/views/posts/index'
  end

  def new # - a GET request
    # renders 'app/views/posts/new'
  end

  def create # - a POST request to posts_path
    Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end

end
