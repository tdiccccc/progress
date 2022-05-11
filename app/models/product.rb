class Product < ApplicationRecord
  belongs_to :genre

  validates :genre_id, presence: true
  validates :product_count, presence: true
  validates :delivery_date, presence: true
end
