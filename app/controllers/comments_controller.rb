class CommentsController < ApplicationController
  before_action :set_post
  before_action :find_comment, only: %i[destroy]


def show
  @comments=Comment.all
end

def create
  @comment = @commentable.comments.create(comment_params)
  redirect_to post_path(@commentable)
end

def destroy
  @comment.destroy
  redirect_to post_path(@commentable)  
end


private

def set_post
   
  if params[:comment_id]
    @commentable = Comment.find(params[:comment_id])
  else 
    @commentable = Post.find(params[:post_id])
  end
    
end

def find_comment
  
  @comment = Comment.find(params[:id])
end

def comment_params
  params.require(:comment).permit(:title)

end
end