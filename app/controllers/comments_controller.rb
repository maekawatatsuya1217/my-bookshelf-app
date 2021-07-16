class CommentsController < ApplicationController

    def create
        @comment = Comment.new(comment_params)
        if @comment.save
          redirect_to tweet_path(@comment.tweet)
        else
          @tweet = @comment.tweet
          @comments = @tweet.comments
          render "blogs/show"
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:text).merge(user_id: :current_user.user_id, blog_id: params[:blog_id])
    end
end