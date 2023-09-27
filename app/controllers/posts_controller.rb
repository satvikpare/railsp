class PostsController < ApplicationController
  
  def index
    @posts=Post.all
    @users= User.all
    # respond_to do |format|
    #   format.html 
    #   format.json { render json: @posts }
    # end
  end

  
  def show
    @post= Post.find(params[:id])
  end


  def create
    @post= current_user.posts.create(post_params)
    redirect_to posts_path
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
   
    redirect_to posts_path
  end
  

  private

  def post_params
    
    # params.require(:post).permit(:name)
    params.permit(:name)
  end

end
