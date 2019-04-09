class CommentsController < ApplicationController
    #before_action :require_user
   
   def create
      @user = User.find(params[:user_id])
      @comment = @user.comments.build(comment_params)
      @comment.user = current_user
      if @comment.save
          redirect_to user_path(@user)
      else
          flash[:danger] = "Comment was not created"
          redirect_to :back
      end
   end
    
    
    private
    def comment_params
       params.require(:comment).permit(:description) 
    end
end