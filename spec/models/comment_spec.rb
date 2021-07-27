require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe 'コメント投稿' do
    context 'コメント投稿ができる時' do
     it '正しい情報が入力された時は投稿できる' do
       expect(@comment).to be_valid
     end
    end
    context 'コメント投稿できない時' do
      it 'textが空だと投稿できない' do
        @comment.text = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include('コメントを入力してください')
      end
    end
  end
end
