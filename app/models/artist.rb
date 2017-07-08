class Artist < ApplicationRecord
  has_many :songs
  mount_uploader :image, ImageUploader

  validates :name, presence: true, length: { maximum: 50}
end
