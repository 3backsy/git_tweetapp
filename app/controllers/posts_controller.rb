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
           flash[:notice] = "投稿に失敗しました（笑）"
           render("posts/new")
       end
  end
  
  
  def edit
     @post = Post.find(params[:id])
  end
  
  
  def update
    @post = Post.find_by(id: params[:id])
    @post.update(content: params[:content])
    if @post.save
        flash[:notice] = "投稿を編集しました"
        redirect_to("/posts/index")
    else
        flash[:notice] = "投稿の編集に失敗しました（笑）"
        redirect_to("/posts/index")
    end
  end
  
  def destroy
      @post = Post.find(params[:id])
      @post.destroy
      flash[:notice] = "投稿を削除しました"
      redirect_to("/posts/index")
  end
  
  private
  def update_params
      params.permit(:content)
  end
  
 
end
