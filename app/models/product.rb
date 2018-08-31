class Product < ApplicationRecord
  belongs_to :design
  has_many :baskets, dependent: :destroy
  has_many :orders, through: :baskets
  validates :quantity, presence: true
  validates :size, presence: true
end
