class CommentsController < ApplicationController

    def create
        @comment = Comment.new(comment_params)
        if comment = @comment.save
          comment = Comment.find_by(comment_params)
          user = User.find_by(id: comment.user_id)
          render json:{ comment: comment, user: user }
        else
          @blog = @comment.blog
          @comments = @blog.comments.includes(:user).order("created_at DESC")
          render "blogs/show"
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:text).merge(user_id: current_user.id, blog_id: params[:blog_id])
    end
end