require 'rails_helper'

RSpec.describe Blog, type: :model do
  before do
      @blog = FactoryBot.build(:blog)
  end

  describe '新規投稿' do
    context '新規投稿ができる時' do
     it '正しい情報が入力された時は投稿できる' do
       expect(@blog).to be_valid
     end
    end
    context '新規投稿ができないとき' do
      it 'titleが空だと投稿できない' do
        @blog.title = ''
        @blog.valid?
        expect(@blog.errors.full_messages).to include("Title can't be blank")
      end
      it 'catch_copyが空だと投稿できない' do
        @blog.catch_copy = ''
        @blog.valid?
        expect(@blog.errors.full_messages).to include("Catch copy can't be blank")
      end
      it 'articleが空だと投稿できない' do
        @blog.article = ''
        @blog.valid?
        expect(@blog.errors.full_messages).to include("Article can't be blank")
      end
      it 'categoryが空だと投稿できない' do
        @blog.category_id = 1
        @blog.valid?
        expect(@blog.errors.full_messages).to include("Category can't be blank")
      end
      it 'imageが空だと投稿できない' do
        @blog.image = nil
        @blog.valid?
        expect(@blog.errors.full_messages).to include("Image can't be blank")
      end
    end
  end
end