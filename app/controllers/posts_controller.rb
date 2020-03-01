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
   @post = Post.new(content: params[:content], name: params[:name])
   @post.save
   redirect_to("/posts/index")
  end
  
  def destroy
   Post.find(params[:id]).destroy
   @posts = Post.all
  end
  
  private
  def create_params
  params.require(:post).permit(:content)
  end
end
