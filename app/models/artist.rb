class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  mount_uploader :image, ImageUploader

  validates :name, presence: true, length: { maximum: 50}

  # def self.order_by_name
  #   order('name asc')
  # end
end
