class PostsController < ApplicationController

  def create
    Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end

  def new
    render 'new'
  end

end
