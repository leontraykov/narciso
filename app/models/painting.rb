class Painting < ApplicationRecord
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true

  validates :en_title, presence: true
  validates :es_title, presence: true
  validates :en_description, presence: true
  validates :es_description, presence: true
end
