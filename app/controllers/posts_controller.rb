class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  
  def new
    
  end
  
  def create
   @post = Post.create(create_params)
   @posts = Post.all
  end
  
  def destroy
   Post.find(params[:id]).destroy
   @posts = Post.all
  end
  
  private
  def create_params
  params.require(:post).permit(:content, :name)
  end
end
