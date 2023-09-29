class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  validates :name_en, presence: true, length: { maximum: 255 }
  validates :name_es, length: { maximum: 255 }
  validates :admin, inclusion: { in: [true, false] }
end
