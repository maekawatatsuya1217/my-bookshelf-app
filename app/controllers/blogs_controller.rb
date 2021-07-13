class BlogsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :edit]
    before_action :blog_build, only: [:show, :edit, :update]
    before_action :unless, only: [:edit, :update]

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

    def edit
    end

    def update
        if @blog.update(blog_params)
            redirect_to blog_path(@blog)
        else
            render :edit
        end
    end

    private

    def blog_params
        params.require(:blog).permit(:title, :catch_copy, :article, :image).merge(user_id: current_user.id)
    end

    def blog_build
        @blog = Blog.find(params[:id])
    end

    def unless
        unless user_signed_in? && current_user.id == @blog.user.id
         redirect_to root_path
        end 
    end
end
