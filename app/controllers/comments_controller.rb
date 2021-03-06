class CommentsController < ApplicationController
    def create
        @comment = Comment.create(comment_params)
        render json: @comment
    end

    private 

    def comment_params 
        params.require(:comment).permit(:history_id, :content, :user_name)
    end

end
