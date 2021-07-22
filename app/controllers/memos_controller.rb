class MemosController < ApplicationController

    before_action :authenticate_user!, only: [:index, :new, :create]

    def index
        @memos = Memo.where(user_id: current_user.id).includes(:user).order('created_at DESC')
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

    private

    def memo_params
        params.require(:memo).permit(:name, :point, :text).merge(user_id: current_user.id)
    end

end