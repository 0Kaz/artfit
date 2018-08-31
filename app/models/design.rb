class Design < ApplicationRecord
  belongs_to :user
  has_many :products, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :photo, presence: true
  validates :theme, presence: true
end
