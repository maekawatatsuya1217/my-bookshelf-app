class BlogsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :edit, :destroy]
    before_action :blog_build, only: [:show, :edit, :update, :destroy]
    before_action :unless, only: [:edit, :update, :destroy]
    before_action :search_blog, only: [:index, :search]

    def index
        @blogs = Blog.includes(:user).with_attached_image.order('created_at DESC')
        set_blog_column
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
        @comment = Comment.new
        @comments = @blog.comments.includes(:user).order(id: "DESC")
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

    def destroy
        @blog.destroy
        redirect_to root_path
    end

    def search
        @blogs = @p.result.includes(:user).with_attached_image.order('created_at DESC')
        set_blog_column
    end

    private

    def blog_params
        params.require(:blog).permit(:title, :catch_copy, :article, :image, :category_id).merge(user_id: current_user.id)
    end

    def blog_build
        @blog = Blog.find(params[:id])
    end

    def unless
        unless user_signed_in? && current_user.id == @blog.user.id
         redirect_to root_path
        end 
    end

    def search_blog
        @p = Blog.ransack(params[:q])
    end

    def set_blog_column
        @blog_name = Blog.select("title").distinct
    end
end
