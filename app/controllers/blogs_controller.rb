class BlogsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]
    before_action :blog_build, only: [:show]

    def index
        @blogs = Blog.includes(:user).with_attached_image.order('created_at DESC')
    end

    def new
        @blog = Blog.new
    end

    def create
        @blog = Blog.new(blog_params)
        if @blog.save
            redirect_to root_path
        else
            render :new
        end
    end

    def show
    end

    private

    def blog_params
        params.require(:blog).permit(:title, :catch_copy, :article, :image).merge(user_id: current_user.id)
    end

    def blog_build
        @blog = Blog.find(params[:id])
    end
end
