class Image < ApplicationRecord
  belongs_to :painting
  mount_uploader :image, ImageUploader
end
