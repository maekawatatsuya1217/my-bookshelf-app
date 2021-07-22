class MemosController < ApplicationController

    before_action :authenticate_user!, only: :index

    def index
        @memos = Memo.where(user_id: current_user.id).includes(:user).order('created_at DESC')
    end
end