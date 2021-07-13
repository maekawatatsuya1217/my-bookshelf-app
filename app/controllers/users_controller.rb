class UsersController < ApplicationController
    before_action :set_user, only: [:show]

    def show
        @blogs = @user.blogs.with_attached_image.order("created_at DESC")
    end

    private

    def set_user
        @user = User.find(params[:id])
    end
end
