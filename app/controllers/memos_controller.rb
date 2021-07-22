class MemosController < ApplicationController

    before_action :authenticate_user!, only: [:index, :new, :create]
    before_action :memo_definition, only: [:index, :show]

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
        @memo = Memo.find(params[:id])
    end

    private

    def memo_params
        params.require(:memo).permit(:name, :point, :text).merge(user_id: current_user.id)
    end

    def memo_definition
        @memos = Memo.where(user_id: current_user.id).includes(:user).order('created_at DESC')
    end

end