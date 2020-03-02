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
   if @post.save
       flash[:notice] = "投稿を作成しました"
       redirect_to("/posts/index")
   else
       flash[:notice] = "contentは140文字以内です。"
       render("posts/new")
       
       
   end
   
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
