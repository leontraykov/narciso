class Painting < ApplicationRecord
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true

  validates :title, presence: true
  validates :description, presence: true
  validates :creation_date, presence: true
end
