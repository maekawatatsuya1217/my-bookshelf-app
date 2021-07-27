require 'rails_helper'

RSpec.describe Memo, type: :model do
  before do
    @memo = FactoryBot.build(:memo)
  end

  describe 'メモを追加' do
    context 'メモを追加できる時' do
      it '正しい情報が入力された場合は追加できる' do
        expect(@memo).to be_valid
      end
    end
    context 'メモを追加できない時' do
      it 'nameが空だと追加できない' do
        @memo.name =""
        @memo.valid?
        expect(@memo.errors.full_messages).to include('本の名前を入力してください')
      end
      it 'pointが空だと追加できない' do
        @memo.point = ""
        @memo.valid?
        expect(@memo.errors.full_messages).to include('要点を入力してください')
      end
      it 'textが空では追加できない' do
        @memo.text = ""
        @memo.valid?
        expect(@memo.errors.full_messages).to include('メモを入力してください')
      end
    end
  end
end
