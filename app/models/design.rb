class Design < ApplicationRecord
  belongs_to :user
  has_many :products, dependent: :destroy
  mount_uploader :photo, PhotoUploader
end
