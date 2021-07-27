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
        expect(@blog.errors.full_messages).to include('タイトルを入力してください')
      end
      it 'catch_copyが空だと投稿できない' do
        @blog.catch_copy = ''
        @blog.valid?
        expect(@blog.errors.full_messages).to include('キャッチコピーを入力してください')
      end
      it 'articleが空だと投稿できない' do
        @blog.article = ''
        @blog.valid?
        expect(@blog.errors.full_messages).to include('記事を入力してください')
      end
      it 'categoryが空だと投稿できない' do
        @blog.category_id = 1
        @blog.valid?
        expect(@blog.errors.full_messages).to include('カテゴリーを選択してください')
      end
      it 'imageが空だと投稿できない' do
        @blog.image = nil
        @blog.valid?
        expect(@blog.errors.full_messages).to include('画像を入力してください')
      end
    end
  end
end