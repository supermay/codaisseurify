class Song < ApplicationRecord
  belongs_to :artist

  validates :name, presence: true, length: { maximum: 50}
  validates :description, length: { maximum: 500}
end
