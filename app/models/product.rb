class Product < ApplicationRecord
  belongs_to :design
  has_many :orders, through: :baskets
end
