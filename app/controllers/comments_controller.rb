class CommentsController < ApplicationController

    def create
        @comment = Comment.new(comment_params)
        if @comment.save
          redirect_to blog_path(@comment.blog)
        else
          @blog = @comment.blog
          @comments = @blog.comments.includes(:user).order("created_at DESC")
          render 'blogs/show'
    end

    private

    def comment_params
        params.require(:comment).permit(:text).merge(user_id: :current_user.user_id, blog_id: params[:blog_id])
    end
end