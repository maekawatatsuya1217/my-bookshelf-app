class MemosController < ApplicationController
    def index
        @memos = MEMO.includes(:user).order('created_at DESC')
    end
end