require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品の情報を入力' do
    it '必要な情報が入力されている場合は登録できる' do
      expect(@item).to be_valid
    end

    it 'imageが空だと登録できない' do
      @item.image = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Image can't be blank")
    end

    it 'nameが空だと登録できない' do
      @item.name = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Name can't be blank")
    end

    it 'descriptionが空だと登録できない' do
      @item.description = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Description can't be blank")
    end

    it 'category_idが空だと登録できない' do
      @item.category_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include('Category is not a number')
    end

    it 'category_idが1だと登録できない' do
      @item.category_id = 1
      @item.valid?
      expect(@item.errors.full_messages).to include('Category must be other than 1')
    end

    it 'condition_idが空だと登録できない' do
      @item.condition_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include('Condition is not a number')
    end

    it 'condition_idが1だと登録できない' do
      @item.condition_id = 1
      @item.valid?
      expect(@item.errors.full_messages).to include('Condition must be other than 1')
    end

    it 'shipping_fee_idが空だと登録できない' do
      @item.shipping_fee_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include('Shipping fee is not a number')
    end

    it 'shipping_fee_idが1だと登録できない' do
      @item.shipping_fee_id = 1
      @item.valid?
      expect(@item.errors.full_messages).to include('Shipping fee must be other than 1')
    end

    it 'prefecture_idが空だと登録できない' do
      @item.prefecture_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include('Prefecture is not a number')
    end

    it 'prefecture_idが1だと登録できない' do
      @item.prefecture_id = 1
      @item.valid?
      expect(@item.errors.full_messages).to include('Prefecture must be other than 1')
    end

    it 'required_day_idが空だと登録できない' do
      @item.required_day_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include('Required day is not a number')
    end

    it 'required_day_idが1だと登録できない' do
      @item.required_day_id = 1
      @item.valid?
      expect(@item.errors.full_messages).to include('Required day must be other than 1')
    end

    it 'priceが空だと登録できない' do
      @item.price = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Price can't be blank")
    end

    it 'priceが¥300~¥9,999,999の間以外だと登録できない' do
      @item.price = 299
      @item.valid?
      expect(@item.errors.full_messages).to include('Price must be greater than or equal to 300')
    end

    it 'priceが¥300~¥9,999,999の間以外だと登録できない' do
      @item.price = 10_000_000
      @item.valid?
      expect(@item.errors.full_messages).to include('Price must be less than or equal to 9999999')
    end

    it 'priceが半角数字以外だと登録できない' do
      @item.price = '５００'
      @item.valid?
      expect(@item.errors.full_messages).to include('Price is not a number')
    end
  end
end
