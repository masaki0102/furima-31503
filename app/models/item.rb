class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :category, :sales_status, :shipping_fee_status, :prefecture, :scheduled_derivery
  has_one_attached :image
  validates  :name, presence: true
  validates  :info, presence: true
  validates  :image, presence: true
  validates  :category_id, :sales_status_id, :shipping_fee_status_id, :prefecture_id, :scheduled_delivery_id, numericality: { other_than: 1, message: 'Select' }
  validates  :price, presence: true, format: { with: /\A[0-9]+\z/, message: 'Half-width number' }, numericality: { less_than_or_equal_to: 9999999, greater_than_or_equal_to: 300, message: 'Out of setting range' }
end
