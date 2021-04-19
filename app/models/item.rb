class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category_id
  belongs_to :condition_id
  belongs_to :shipping_fee_id
  belongs_to :prefecture_id
  belongs_to :required_day_id

  with_options presence: true do
    validates :image
    validates :name
    validates :description
  end

  validates :price, presence: true, format:{ with: /\A[0-9]+\z/ } , numericality:{ greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999 }

  with_options numericality: { other_than: 1 } do
    validates :category_id
    validates :condition_id
    validates :shipping_fee_id
    validates :prefecture_id
    validates :required_day_id
  end

end
