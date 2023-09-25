class UsersController < ApplicationController
    def index
    end

    def show
         # @post=Post.where(params[:user_id])
        #  @post=Post.where(user_id: params[:id])
        # @post=Post.joins(:user)
          @posts = user.posts

          # @sent_requests = user.sent_friend_requests

          # @sent_friends = @sent_requests.is_accepted

          # @received_requests = user.received_friend_requests

          # @received_friends = @received_requests.is_accepted

    
    end

    private

    def user
        User.find(params[:id])
    end
end