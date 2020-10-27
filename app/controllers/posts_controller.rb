class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  # add create method here

  def create
    @post = Post.new
    @post.title = params[:title]
    @post.description = params[:description]
    @post.save 
    redirect_to post_path(@post) #redirect that leverages a route helper method
    # redirecting to the new resource's show page
  end

end
