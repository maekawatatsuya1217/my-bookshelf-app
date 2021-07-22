class MemosController < ApplicationController

    before_action :authenticate_user!, only: [:index, :new, :create]
    before_action :memo_definition, only: [:index, :show]
    before_action :memo_build, only: [:show, :edit, :update]
    before_action :unless, only: [:edit, :update]

    def index
    end

    def new
        @memo = Memo.new
    end

    def create
        @memo = Memo.new(memo_params)
        if @memo.save
            redirect_to memos_path
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        if @memo.update(memo_params)
            redirect_to memo_path(@memo)
        else
            render :edit
        end
    end

    private

    def memo_params
        params.require(:memo).permit(:name, :point, :text).merge(user_id: current_user.id)
    end

    def memo_definition
        @memos = Memo.where(user_id: current_user.id).includes(:user).order('created_at DESC')
    end

    def memo_build
        @memo = Memo.find(params[:id])
    end

    def unless
        unless user_signed_in? && current_user.id == @memo.user.id
         redirect_to root_path
        end 
    end

end